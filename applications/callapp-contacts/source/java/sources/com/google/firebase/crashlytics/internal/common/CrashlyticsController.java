package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import com.google.android.gms.tasks.AbstractC14184g;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.NativeSessionFileProvider;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsUncaughtExceptionHandler;
import com.google.firebase.crashlytics.internal.log.LogFileManager;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController.class */
public class CrashlyticsController {
    static final FilenameFilter APP_EXCEPTION_MARKER_FILTER;
    static final String APP_EXCEPTION_MARKER_PREFIX = ".ae";
    static final String FIREBASE_APPLICATION_EXCEPTION = "_ae";
    static final String FIREBASE_CRASH_TYPE = "fatal";
    static final int FIREBASE_CRASH_TYPE_FATAL = 1;
    static final String FIREBASE_TIMESTAMP = "timestamp";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    static final String NATIVE_SESSION_DIR = "native-sessions";
    private final AnalyticsEventLogger analyticsEventLogger;
    private final AppData appData;
    private final CrashlyticsBackgroundWorker backgroundWorker;
    private final Context context;
    private CrashlyticsUncaughtExceptionHandler crashHandler;
    private final CrashlyticsFileMarker crashMarker;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final FileStore fileStore;
    private final IdManager idManager;
    private final LogFileManager.DirectoryProvider logFileDirectoryProvider;
    private final LogFileManager logFileManager;
    private final CrashlyticsNativeComponent nativeComponent;
    private final SessionReportingCoordinator reportingCoordinator;
    private final String unityVersion;
    private final UserMetadata userMetadata;
    final C14186i<Boolean> unsentReportsAvailable = new C14186i<>();
    final C14186i<Boolean> reportActionProvided = new C14186i<>();
    final C14186i<Void> unsentReportsHandled = new C14186i<>();
    final AtomicBoolean checkForUnsentReportsCalled = new AtomicBoolean(false);

    /* renamed from: com.google.firebase.crashlytics.internal.common.CrashlyticsController$4 */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$4.class */
    public class C156734 implements AbstractC14184g<Boolean, Void> {
        final /* synthetic */ AbstractC14185h val$appSettingsDataTask;

        C156734(AbstractC14185h abstractC14185h) {
            CrashlyticsController.this = r4;
            this.val$appSettingsDataTask = abstractC14185h;
        }

        public AbstractC14185h<Void> then(final Boolean bool) throws Exception {
            return CrashlyticsController.this.backgroundWorker.submitTask(new Callable<AbstractC14185h<Void>>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.4.1
                {
                    C156734.this = this;
                }

                @Override // java.util.concurrent.Callable
                public AbstractC14185h<Void> call() throws Exception {
                    if (!bool.booleanValue()) {
                        Logger.getLogger().m8482v("Deleting cached crash reports...");
                        CrashlyticsController.deleteFiles(CrashlyticsController.this.listAppExceptionMarkerFiles());
                        CrashlyticsController.this.reportingCoordinator.removeAllReports();
                        CrashlyticsController.this.unsentReportsHandled.m11469b((C14186i<Void>) null);
                        return C14188k.m11464a((Object) null);
                    }
                    Logger.getLogger().m8488d("Sending cached crash reports...");
                    CrashlyticsController.this.dataCollectionArbiter.grantDataCollectionPermission(bool.booleanValue());
                    final Executor executor = CrashlyticsController.this.backgroundWorker.getExecutor();
                    return C156734.this.val$appSettingsDataTask.mo11479a(executor, new AbstractC14184g<AppSettingsData, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.4.1.1
                        {
                            CallableC156741.this = this;
                        }

                        public AbstractC14185h<Void> then(AppSettingsData appSettingsData) throws Exception {
                            if (appSettingsData == null) {
                                Logger.getLogger().m8480w("Received null app settings at app startup. Cannot send cached reports");
                                return C14188k.m11464a((Object) null);
                            }
                            CrashlyticsController.this.logAnalyticsAppExceptionEvents();
                            CrashlyticsController.this.reportingCoordinator.sendReports(executor);
                            CrashlyticsController.this.unsentReportsHandled.m11469b((C14186i<Void>) null);
                            return C14188k.m11464a((Object) null);
                        }
                    });
                }
            });
        }
    }

    static {
        FilenameFilter filenameFilter;
        filenameFilter = CrashlyticsController$$Lambda$1.instance;
        APP_EXCEPTION_MARKER_FILTER = filenameFilter;
    }

    public CrashlyticsController(Context context, CrashlyticsBackgroundWorker crashlyticsBackgroundWorker, IdManager idManager, DataCollectionArbiter dataCollectionArbiter, FileStore fileStore, CrashlyticsFileMarker crashlyticsFileMarker, AppData appData, UserMetadata userMetadata, LogFileManager logFileManager, LogFileManager.DirectoryProvider directoryProvider, SessionReportingCoordinator sessionReportingCoordinator, CrashlyticsNativeComponent crashlyticsNativeComponent, AnalyticsEventLogger analyticsEventLogger) {
        this.context = context;
        this.backgroundWorker = crashlyticsBackgroundWorker;
        this.idManager = idManager;
        this.dataCollectionArbiter = dataCollectionArbiter;
        this.fileStore = fileStore;
        this.crashMarker = crashlyticsFileMarker;
        this.appData = appData;
        this.userMetadata = userMetadata;
        this.logFileManager = logFileManager;
        this.logFileDirectoryProvider = directoryProvider;
        this.nativeComponent = crashlyticsNativeComponent;
        this.unityVersion = appData.unityVersionProvider.getUnityVersion();
        this.analyticsEventLogger = analyticsEventLogger;
        this.reportingCoordinator = sessionReportingCoordinator;
    }

    private void cacheKeyData(final Map<String, String> map) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.8
            {
                CrashlyticsController.this = this;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeKeyData(CrashlyticsController.this.getCurrentSessionId(), map);
                return null;
            }
        });
    }

    private void cacheUserData(final UserMetadata userMetadata) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.7
            {
                CrashlyticsController.this = this;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                if (currentSessionId == null) {
                    Logger.getLogger().m8488d("Tried to cache user data while no session was open.");
                    return null;
                }
                CrashlyticsController.this.reportingCoordinator.persistUserId(currentSessionId);
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeUserData(currentSessionId, userMetadata);
                return null;
            }
        });
    }

    public static void deleteFiles(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            file.delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void doCloseSessions(boolean z) {
        List<String> listSortedOpenSessionIds = this.reportingCoordinator.listSortedOpenSessionIds();
        if (listSortedOpenSessionIds.size() <= z) {
            Logger.getLogger().m8482v("No open sessions to be closed.");
            return;
        }
        String str = listSortedOpenSessionIds.get(z ? 1 : 0);
        if (this.nativeComponent.hasCrashDataForSession(str)) {
            finalizePreviousNativeSession(str);
            if (!this.nativeComponent.finalizeSession(str)) {
                Logger.getLogger().m8480w("Could not finalize native session: ".concat(String.valueOf(str)));
            }
        }
        String str2 = null;
        if (z != 0) {
            str2 = listSortedOpenSessionIds.get(0);
        }
        this.reportingCoordinator.finalizeSessions(getCurrentTimestampSeconds(), str2);
    }

    public void doOpenSession() {
        long currentTimestampSeconds = getCurrentTimestampSeconds();
        String clsuuid = new CLSUUID(this.idManager).toString();
        Logger.getLogger().m8488d("Opening a new session with ID ".concat(String.valueOf(clsuuid)));
        this.nativeComponent.openSession(clsuuid);
        writeBeginSession(clsuuid, currentTimestampSeconds);
        writeSessionApp(clsuuid);
        writeSessionOS(clsuuid);
        writeSessionDevice(clsuuid);
        this.logFileManager.setCurrentSession(clsuuid);
        this.reportingCoordinator.onBeginSession(clsuuid, currentTimestampSeconds);
    }

    public void doWriteAppExceptionMarker(long j) {
        try {
            new File(getFilesDir(), APP_EXCEPTION_MARKER_PREFIX.concat(String.valueOf(j))).createNewFile();
        } catch (IOException e) {
            Logger.getLogger().m8479w("Could not create app exception marker file.", e);
        }
    }

    private static File[] ensureFileArrayNotNull(File[] fileArr) {
        File[] fileArr2 = fileArr;
        if (fileArr == null) {
            fileArr2 = new File[0];
        }
        return fileArr2;
    }

    private void finalizePreviousNativeSession(String str) {
        Logger.getLogger().m8482v("Finalizing native report for session ".concat(String.valueOf(str)));
        NativeSessionFileProvider sessionFileProvider = this.nativeComponent.getSessionFileProvider(str);
        File minidumpFile = sessionFileProvider.getMinidumpFile();
        if (minidumpFile == null || !minidumpFile.exists()) {
            Logger.getLogger().m8480w("No minidump data found for session ".concat(String.valueOf(str)));
            return;
        }
        long lastModified = minidumpFile.lastModified();
        LogFileManager logFileManager = new LogFileManager(this.context, this.logFileDirectoryProvider, str);
        File file = new File(getNativeSessionFilesDir(), str);
        if (!file.mkdirs()) {
            Logger.getLogger().m8480w("Couldn't create directory to store native session files, aborting.");
            return;
        }
        doWriteAppExceptionMarker(lastModified);
        List<NativeSessionFile> nativeSessionFiles = getNativeSessionFiles(sessionFileProvider, str, getFilesDir(), logFileManager.getBytesForLog());
        NativeSessionFileGzipper.processNativeSessions(file, nativeSessionFiles);
        this.reportingCoordinator.finalizeSessionWithNativeEvent(str, nativeSessionFiles);
        logFileManager.clearLog();
    }

    private static boolean firebaseCrashExists() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private Context getContext() {
        return this.context;
    }

    public String getCurrentSessionId() {
        List<String> listSortedOpenSessionIds = this.reportingCoordinator.listSortedOpenSessionIds();
        if (!listSortedOpenSessionIds.isEmpty()) {
            return listSortedOpenSessionIds.get(0);
        }
        return null;
    }

    private static long getCurrentTimestampSeconds() {
        return getTimestampSeconds(new Date());
    }

    static List<NativeSessionFile> getNativeSessionFiles(NativeSessionFileProvider nativeSessionFileProvider, String str, File file, byte[] bArr) {
        MetaDataStore metaDataStore = new MetaDataStore(file);
        File userDataFileForSession = metaDataStore.getUserDataFileForSession(str);
        File keysFileForSession = metaDataStore.getKeysFileForSession(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BytesBackedNativeSessionFile("logs_file", "logs", bArr));
        arrayList.add(new FileBackedNativeSessionFile("crash_meta_file", "metadata", nativeSessionFileProvider.getMetadataFile()));
        arrayList.add(new FileBackedNativeSessionFile("session_meta_file", "session", nativeSessionFileProvider.getSessionFile()));
        arrayList.add(new FileBackedNativeSessionFile("app_meta_file", "app", nativeSessionFileProvider.getAppFile()));
        arrayList.add(new FileBackedNativeSessionFile("device_meta_file", "device", nativeSessionFileProvider.getDeviceFile()));
        arrayList.add(new FileBackedNativeSessionFile("os_meta_file", "os", nativeSessionFileProvider.getOsFile()));
        arrayList.add(new FileBackedNativeSessionFile("minidump_file", "minidump", nativeSessionFileProvider.getMinidumpFile()));
        arrayList.add(new FileBackedNativeSessionFile("user_meta_file", "user", userDataFileForSession));
        arrayList.add(new FileBackedNativeSessionFile("keys_file", "keys", keysFileForSession));
        return arrayList;
    }

    public static long getTimestampSeconds(Date date) {
        return date.getTime() / 1000;
    }

    private static File[] listFilesMatching(File file, FilenameFilter filenameFilter) {
        return ensureFileArrayNotNull(file.listFiles(filenameFilter));
    }

    private File[] listFilesMatching(FilenameFilter filenameFilter) {
        return listFilesMatching(getFilesDir(), filenameFilter);
    }

    private AbstractC14185h<Void> logAnalyticsAppExceptionEvent(final long j) {
        if (firebaseCrashExists()) {
            Logger.getLogger().m8480w("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return C14188k.m11464a((Object) null);
        }
        Logger.getLogger().m8488d("Logging app exception event to Firebase Analytics");
        return C14188k.m11462a(new ScheduledThreadPoolExecutor(1), new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.10
            {
                CrashlyticsController.this = this;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                Bundle bundle = new Bundle();
                bundle.putInt(CrashlyticsController.FIREBASE_CRASH_TYPE, 1);
                bundle.putLong("timestamp", j);
                CrashlyticsController.this.analyticsEventLogger.logEvent(CrashlyticsController.FIREBASE_APPLICATION_EXCEPTION, bundle);
                return null;
            }
        });
    }

    public AbstractC14185h<Void> logAnalyticsAppExceptionEvents() {
        File[] listAppExceptionMarkerFiles;
        ArrayList arrayList = new ArrayList();
        for (File file : listAppExceptionMarkerFiles()) {
            try {
                arrayList.add(logAnalyticsAppExceptionEvent(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException e) {
                Logger.getLogger().m8480w("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return C14188k.m11463a((Collection<? extends AbstractC14185h<?>>) arrayList);
    }

    private AbstractC14185h<Boolean> waitForReportAction() {
        if (this.dataCollectionArbiter.isAutomaticDataCollectionEnabled()) {
            Logger.getLogger().m8488d("Automatic data collection is enabled. Allowing upload.");
            this.unsentReportsAvailable.m11469b((C14186i<Boolean>) Boolean.FALSE);
            return C14188k.m11464a(Boolean.TRUE);
        }
        Logger.getLogger().m8488d("Automatic data collection is disabled.");
        Logger.getLogger().m8482v("Notifying that unsent reports are available.");
        this.unsentReportsAvailable.m11469b((C14186i<Boolean>) Boolean.TRUE);
        AbstractC14185h<TContinuationResult> mo11486a = this.dataCollectionArbiter.waitForAutomaticDataCollectionEnabled().mo11486a(new AbstractC14184g<Void, Boolean>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.3
            {
                CrashlyticsController.this = this;
            }

            public AbstractC14185h<Boolean> then(Void r3) throws Exception {
                return C14188k.m11464a(Boolean.TRUE);
            }
        });
        Logger.getLogger().m8488d("Waiting for send/deleteUnsentReports to be called.");
        return Utils.race(mo11486a, this.reportActionProvided.m11473a());
    }

    private void writeBeginSession(String str, long j) {
        this.nativeComponent.writeBeginSession(str, String.format(Locale.US, GENERATOR_FORMAT, CrashlyticsCore.getVersion()), j);
    }

    private void writeSessionApp(String str) {
        this.nativeComponent.writeSessionApp(str, this.idManager.getAppIdentifier(), this.appData.versionCode, this.appData.versionName, this.idManager.getCrashlyticsInstallId(), DeliveryMechanism.determineFrom(this.appData.installerPackageName).getId(), this.unityVersion);
    }

    private void writeSessionDevice(String str) {
        Context context = getContext();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int cpuArchitectureInt = CommonUtils.getCpuArchitectureInt();
        String str2 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long totalRamInBytes = CommonUtils.getTotalRamInBytes();
        long blockCount = statFs.getBlockCount();
        this.nativeComponent.writeSessionDevice(str, cpuArchitectureInt, str2, availableProcessors, totalRamInBytes, statFs.getBlockSize() * blockCount, CommonUtils.isEmulator(context), CommonUtils.getDeviceState(context), Build.MANUFACTURER, Build.PRODUCT);
    }

    private void writeSessionOS(String str) {
        this.nativeComponent.writeSessionOs(str, Build.VERSION.RELEASE, Build.VERSION.CODENAME, CommonUtils.isRooted(getContext()));
    }

    public AbstractC14185h<Boolean> checkForUnsentReports() {
        if (!this.checkForUnsentReportsCalled.compareAndSet(false, true)) {
            Logger.getLogger().m8480w("checkForUnsentReports should only be called once per execution.");
            return C14188k.m11464a(Boolean.FALSE);
        }
        return this.unsentReportsAvailable.m11473a();
    }

    public AbstractC14185h<Void> deleteUnsentReports() {
        this.reportActionProvided.m11469b((C14186i<Boolean>) Boolean.FALSE);
        return this.unsentReportsHandled.m11473a();
    }

    public boolean didCrashOnPreviousExecution() {
        if (!this.crashMarker.isPresent()) {
            String currentSessionId = getCurrentSessionId();
            return currentSessionId != null && this.nativeComponent.hasCrashDataForSession(currentSessionId);
        }
        Logger.getLogger().m8482v("Found previous crash marker.");
        this.crashMarker.remove();
        return true;
    }

    void doCloseSessions() {
        doCloseSessions(false);
    }

    public void enableExceptionHandling(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, SettingsDataProvider settingsDataProvider) {
        openSession();
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = new CrashlyticsUncaughtExceptionHandler(new CrashlyticsUncaughtExceptionHandler.CrashListener() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.1
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsUncaughtExceptionHandler.CrashListener
            public void onUncaughtException(SettingsDataProvider settingsDataProvider2, Thread thread, Throwable th) {
                CrashlyticsController.this.handleUncaughtException(settingsDataProvider2, thread, th);
            }
        }, settingsDataProvider, uncaughtExceptionHandler);
        this.crashHandler = crashlyticsUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(crashlyticsUncaughtExceptionHandler);
    }

    public boolean finalizeSessions() {
        this.backgroundWorker.checkRunningOnThread();
        if (isHandlingException()) {
            Logger.getLogger().m8480w("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        Logger.getLogger().m8482v("Finalizing previously open sessions.");
        try {
            doCloseSessions(true);
            Logger.getLogger().m8482v("Closed all previously open sessions.");
            return true;
        } catch (Exception e) {
            Logger.getLogger().m8485e("Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    File getFilesDir() {
        return this.fileStore.getFilesDir();
    }

    File getNativeSessionFilesDir() {
        return new File(getFilesDir(), NATIVE_SESSION_DIR);
    }

    UserMetadata getUserMetadata() {
        return this.userMetadata;
    }

    void handleUncaughtException(final SettingsDataProvider settingsDataProvider, final Thread thread, final Throwable th) {
        synchronized (this) {
            Logger logger = Logger.getLogger();
            logger.m8488d("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            final Date date = new Date();
            try {
                Utils.awaitEvenIfOnMainThread(this.backgroundWorker.submitTask(new Callable<AbstractC14185h<Void>>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.2
                    {
                        CrashlyticsController.this = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public AbstractC14185h<Void> call() throws Exception {
                        long timestampSeconds = CrashlyticsController.getTimestampSeconds(date);
                        String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                        if (currentSessionId == null) {
                            Logger.getLogger().m8486e("Tried to write a fatal exception while no session was open.");
                            return C14188k.m11464a((Object) null);
                        }
                        CrashlyticsController.this.crashMarker.create();
                        CrashlyticsController.this.reportingCoordinator.persistFatalEvent(th, thread, currentSessionId, timestampSeconds);
                        CrashlyticsController.this.doWriteAppExceptionMarker(date.getTime());
                        CrashlyticsController.this.doCloseSessions();
                        CrashlyticsController.this.doOpenSession();
                        if (!CrashlyticsController.this.dataCollectionArbiter.isAutomaticDataCollectionEnabled()) {
                            return C14188k.m11464a((Object) null);
                        }
                        final Executor executor = CrashlyticsController.this.backgroundWorker.getExecutor();
                        return settingsDataProvider.getAppSettings().mo11479a(executor, new AbstractC14184g<AppSettingsData, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.2.1
                            {
                                CallableC156702.this = this;
                            }

                            public AbstractC14185h<Void> then(AppSettingsData appSettingsData) throws Exception {
                                if (appSettingsData == null) {
                                    Logger.getLogger().m8480w("Received null app settings, cannot send reports at crash time.");
                                    return C14188k.m11464a((Object) null);
                                }
                                return C14188k.m11461a((AbstractC14185h<?>[]) new AbstractC14185h[]{CrashlyticsController.this.logAnalyticsAppExceptionEvents(), CrashlyticsController.this.reportingCoordinator.sendReports(executor)});
                            }
                        });
                    }
                }));
            } catch (Exception e) {
                Logger.getLogger().m8485e("Error handling uncaught exception", e);
            }
        }
    }

    boolean isHandlingException() {
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = this.crashHandler;
        return crashlyticsUncaughtExceptionHandler != null && crashlyticsUncaughtExceptionHandler.isHandlingException();
    }

    File[] listAppExceptionMarkerFiles() {
        return listFilesMatching(APP_EXCEPTION_MARKER_FILTER);
    }

    File[] listNativeSessionFileDirectories() {
        return ensureFileArrayNotNull(getNativeSessionFilesDir().listFiles());
    }

    void openSession() {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.9
            {
                CrashlyticsController.this = this;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsController.this.doOpenSession();
                return null;
            }
        });
    }

    public AbstractC14185h<Void> sendUnsentReports() {
        this.reportActionProvided.m11469b((C14186i<Boolean>) Boolean.TRUE);
        return this.unsentReportsHandled.m11473a();
    }

    public void setCustomKey(String str, String str2) {
        try {
            this.userMetadata.setCustomKey(str, str2);
            cacheKeyData(this.userMetadata.getCustomKeys());
        } catch (IllegalArgumentException e) {
            Context context = this.context;
            if (context != null && CommonUtils.isAppDebuggable(context)) {
                throw e;
            }
            Logger.getLogger().m8486e("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    public void setCustomKeys(Map<String, String> map) {
        this.userMetadata.setCustomKeys(map);
        cacheKeyData(this.userMetadata.getCustomKeys());
    }

    public void setUserId(String str) {
        this.userMetadata.setUserId(str);
        cacheUserData(this.userMetadata);
    }

    public AbstractC14185h<Void> submitAllReports(AbstractC14185h<AppSettingsData> abstractC14185h) {
        if (this.reportingCoordinator.hasReportsToSend()) {
            Logger.getLogger().m8482v("Crash reports are available to be sent.");
            return waitForReportAction().mo11486a(new C156734(abstractC14185h));
        }
        Logger.getLogger().m8482v("No crash reports are available to be sent.");
        this.unsentReportsAvailable.m11469b((C14186i<Boolean>) Boolean.FALSE);
        return C14188k.m11464a((Object) null);
    }

    public void writeNonFatalException(final Thread thread, final Throwable th) {
        final Date date = new Date();
        this.backgroundWorker.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.6
            {
                CrashlyticsController.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    long timestampSeconds = CrashlyticsController.getTimestampSeconds(date);
                    String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                    if (currentSessionId == null) {
                        Logger.getLogger().m8480w("Tried to write a non-fatal exception while no session was open.");
                    } else {
                        CrashlyticsController.this.reportingCoordinator.persistNonFatalEvent(th, thread, currentSessionId, timestampSeconds);
                    }
                }
            }
        });
    }

    public void writeToLog(final long j, final String str) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.5
            {
                CrashlyticsController.this = this;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.logFileManager.writeToLog(j, str);
                    return null;
                }
                return null;
            }
        });
    }
}
