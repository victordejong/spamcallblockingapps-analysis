package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.log.LogFileManager;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/SessionReportingCoordinator.class */
public class SessionReportingCoordinator implements CrashlyticsLifecycleEvents {
    private static final int EVENT_THREAD_IMPORTANCE = 4;
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    private static final int MAX_CHAINED_EXCEPTION_DEPTH = 8;
    private final CrashlyticsReportDataCapture dataCapture;
    private final LogFileManager logFileManager;
    private final UserMetadata reportMetadata;
    private final CrashlyticsReportPersistence reportPersistence;
    private final DataTransportCrashlyticsReportSender reportsSender;

    SessionReportingCoordinator(CrashlyticsReportDataCapture crashlyticsReportDataCapture, CrashlyticsReportPersistence crashlyticsReportPersistence, DataTransportCrashlyticsReportSender dataTransportCrashlyticsReportSender, LogFileManager logFileManager, UserMetadata userMetadata) {
        this.dataCapture = crashlyticsReportDataCapture;
        this.reportPersistence = crashlyticsReportPersistence;
        this.reportsSender = dataTransportCrashlyticsReportSender;
        this.logFileManager = logFileManager;
        this.reportMetadata = userMetadata;
    }

    public static /* synthetic */ boolean access$lambda$0(SessionReportingCoordinator sessionReportingCoordinator, h hVar) {
        return sessionReportingCoordinator.onReportSendComplete(hVar);
    }

    public static SessionReportingCoordinator create(Context context, IdManager idManager, FileStore fileStore, AppData appData, LogFileManager logFileManager, UserMetadata userMetadata, StackTraceTrimmingStrategy stackTraceTrimmingStrategy, SettingsDataProvider settingsDataProvider) {
        return new SessionReportingCoordinator(new CrashlyticsReportDataCapture(context, idManager, appData, stackTraceTrimmingStrategy), new CrashlyticsReportPersistence(new File(fileStore.getFilesDirPath()), settingsDataProvider), DataTransportCrashlyticsReportSender.create(context), logFileManager, userMetadata);
    }

    private static List<CrashlyticsReport.CustomAttribute> getSortedCustomAttributes(Map<String, String> map) {
        Comparator comparator;
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(CrashlyticsReport.CustomAttribute.builder().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
        comparator = SessionReportingCoordinator$$Lambda$2.instance;
        Collections.sort(arrayList, comparator);
        return arrayList;
    }

    public static /* synthetic */ int lambda$getSortedCustomAttributes$0(CrashlyticsReport.CustomAttribute customAttribute, CrashlyticsReport.CustomAttribute customAttribute2) {
        return customAttribute.getKey().compareTo(customAttribute2.getKey());
    }

    public boolean onReportSendComplete(h<CrashlyticsReportWithSessionId> hVar) {
        if (hVar.b()) {
            CrashlyticsReportWithSessionId d2 = hVar.d();
            Logger logger = Logger.getLogger();
            logger.d("Crashlytics report successfully enqueued to DataTransport: " + d2.getSessionId());
            this.reportPersistence.deleteFinalizedReport(d2.getSessionId());
            return true;
        }
        Logger.getLogger().w("Crashlytics report could not be enqueued to DataTransport", hVar.e());
        return false;
    }

    private void persistEvent(Throwable th, Thread thread, String str, String str2, long j, boolean z) {
        boolean equals = str2.equals(EVENT_TYPE_CRASH);
        CrashlyticsReport.Session.Event captureEventData = this.dataCapture.captureEventData(th, thread, str2, j, 4, 8, z);
        CrashlyticsReport.Session.Event.Builder builder = captureEventData.toBuilder();
        String logString = this.logFileManager.getLogString();
        if (logString != null) {
            builder.setLog(CrashlyticsReport.Session.Event.Log.builder().setContent(logString).build());
        } else {
            Logger.getLogger().v("No log data to include with this event.");
        }
        List<CrashlyticsReport.CustomAttribute> sortedCustomAttributes = getSortedCustomAttributes(this.reportMetadata.getCustomKeys());
        if (!sortedCustomAttributes.isEmpty()) {
            builder.setApp(captureEventData.getApp().toBuilder().setCustomAttributes(ImmutableList.from(sortedCustomAttributes)).build());
        }
        this.reportPersistence.persistEvent(builder.build(), str, equals);
    }

    public void finalizeSessionWithNativeEvent(String str, List<NativeSessionFile> list) {
        ArrayList arrayList = new ArrayList();
        for (NativeSessionFile nativeSessionFile : list) {
            CrashlyticsReport.FilesPayload.File asFilePayload = nativeSessionFile.asFilePayload();
            if (asFilePayload != null) {
                arrayList.add(asFilePayload);
            }
        }
        this.reportPersistence.finalizeSessionWithNativeEvent(str, CrashlyticsReport.FilesPayload.builder().setFiles(ImmutableList.from(arrayList)).build());
    }

    public void finalizeSessions(long j, String str) {
        this.reportPersistence.finalizeReports(str, j);
    }

    public boolean hasReportsToSend() {
        return this.reportPersistence.hasFinalizedReports();
    }

    public List<String> listSortedOpenSessionIds() {
        return this.reportPersistence.listSortedOpenSessionIds();
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsLifecycleEvents
    public void onBeginSession(String str, long j) {
        this.reportPersistence.persistReport(this.dataCapture.captureReportData(str, j));
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsLifecycleEvents
    public void onCustomKey(String str, String str2) {
        this.reportMetadata.setCustomKey(str, str2);
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsLifecycleEvents
    public void onLog(long j, String str) {
        this.logFileManager.writeToLog(j, str);
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsLifecycleEvents
    public void onUserId(String str) {
        this.reportMetadata.setUserId(str);
    }

    public void persistFatalEvent(Throwable th, Thread thread, String str, long j) {
        Logger.getLogger().v("Persisting fatal event for session ".concat(String.valueOf(str)));
        persistEvent(th, thread, str, EVENT_TYPE_CRASH, j, true);
    }

    public void persistNonFatalEvent(Throwable th, Thread thread, String str, long j) {
        Logger.getLogger().v("Persisting non-fatal event for session ".concat(String.valueOf(str)));
        persistEvent(th, thread, str, "error", j, false);
    }

    public void persistUserId(String str) {
        String userId = this.reportMetadata.getUserId();
        if (userId == null) {
            Logger.getLogger().v("Could not persist user ID; no user ID available");
        } else {
            this.reportPersistence.persistUserIdForSession(userId, str);
        }
    }

    public void removeAllReports() {
        this.reportPersistence.deleteAllReports();
    }

    public h<Void> sendReports(Executor executor) {
        List<CrashlyticsReportWithSessionId> loadFinalizedReports = this.reportPersistence.loadFinalizedReports();
        ArrayList arrayList = new ArrayList();
        for (CrashlyticsReportWithSessionId crashlyticsReportWithSessionId : loadFinalizedReports) {
            arrayList.add(this.reportsSender.sendReport(crashlyticsReportWithSessionId).a(executor, SessionReportingCoordinator$$Lambda$1.lambdaFactory$(this)));
        }
        return k.a((Collection<? extends h<?>>) arrayList);
    }
}
