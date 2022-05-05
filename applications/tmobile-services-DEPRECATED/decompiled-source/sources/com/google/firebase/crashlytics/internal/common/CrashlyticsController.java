package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.NativeSessionFileProvider;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsUncaughtExceptionHandler;
import com.google.firebase.crashlytics.internal.log.LogFileManager;
import com.google.firebase.crashlytics.internal.ndk.NativeFileUtils;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.proto.ClsFileOutputStream;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import com.google.firebase.crashlytics.internal.proto.SessionProtobufHelper;
import com.google.firebase.crashlytics.internal.report.ReportManager;
import com.google.firebase.crashlytics.internal.report.ReportUploader;
import com.google.firebase.crashlytics.internal.report.model.Report;
import com.google.firebase.crashlytics.internal.report.model.SessionReport;
import com.google.firebase.crashlytics.internal.report.network.CompositeCreateReportSpiCall;
import com.google.firebase.crashlytics.internal.report.network.CreateReportSpiCall;
import com.google.firebase.crashlytics.internal.report.network.DefaultCreateReportSpiCall;
import com.google.firebase.crashlytics.internal.report.network.NativeCreateReportSpiCall;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import com.google.firebase.crashlytics.internal.stacktrace.MiddleOutFallbackStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.RemoveRepeatsStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.TrimmedThrowableData;
import com.google.firebase.crashlytics.internal.unity.UnityVersionProvider;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController.class */
public class CrashlyticsController {
    private static final int ANALYZER_VERSION = 1;
    static final FilenameFilter APP_EXCEPTION_MARKER_FILTER;
    static final String APP_EXCEPTION_MARKER_PREFIX = ".ae";
    private static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    static final String FATAL_SESSION_DIR = "fatal-sessions";
    static final String FIREBASE_APPLICATION_EXCEPTION = "_ae";
    static final String FIREBASE_CRASH_TYPE = "fatal";
    static final int FIREBASE_CRASH_TYPE_FATAL = 1;
    static final String FIREBASE_TIMESTAMP = "timestamp";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    private static final int MAX_CHAINED_EXCEPTION_DEPTH = 8;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    static final int MAX_STACK_SIZE = 1024;
    static final String NATIVE_SESSION_DIR = "native-sessions";
    static final String NONFATAL_SESSION_DIR = "nonfatal-sessions";
    static final int NUM_STACK_REPETITIONS_ALLOWED = 10;
    static final String SESSION_EVENT_MISSING_BINARY_IMGS_TAG = "SessionMissingBinaryImages";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    private final AnalyticsEventLogger analyticsEventLogger;
    private final AppData appData;
    private final CrashlyticsBackgroundWorker backgroundWorker;
    private final Context context;
    private CrashlyticsUncaughtExceptionHandler crashHandler;
    private final CrashlyticsFileMarker crashMarker;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final FileStore fileStore;
    private final ReportUploader.HandlingExceptionCheck handlingExceptionCheck;
    private final HttpRequestFactory httpRequestFactory;
    private final IdManager idManager;
    private final LogFileDirectoryProvider logFileDirectoryProvider;
    private final LogFileManager logFileManager;
    private final CrashlyticsNativeComponent nativeComponent;
    private final ReportManager reportManager;
    private final ReportUploader.Provider reportUploaderProvider;
    private final SessionReportingCoordinator reportingCoordinator;
    private final StackTraceTrimmingStrategy stackTraceTrimmingStrategy;
    private final String unityVersion;
    private final UserMetadata userMetadata;
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final FilenameFilter SESSION_BEGIN_FILE_FILTER = new FileNameContainsFilter(SESSION_BEGIN_TAG) { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.1
        @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsController.FileNameContainsFilter, java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return super.accept(file, str) && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.2
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.3
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    };
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.4
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    };
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
    static final String SESSION_USER_TAG = "SessionUser";
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    private static final String[] INITIAL_SESSION_PART_TAGS = {SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG};
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    TaskCompletionSource<Boolean> unsentReportsAvailable = new TaskCompletionSource<>();
    TaskCompletionSource<Boolean> reportActionProvided = new TaskCompletionSource<>();
    TaskCompletionSource<Void> unsentReportsHandled = new TaskCompletionSource<>();
    AtomicBoolean checkForUnsentReportsCalled = new AtomicBoolean(false);

    /* renamed from: com.google.firebase.crashlytics.internal.common.CrashlyticsController$8 */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$8.class */
    public class C12978 implements SuccessContinuation<Boolean, Void> {
        final /* synthetic */ Task val$appSettingsDataTask;
        final /* synthetic */ float val$delay;

        C12978(Task task, float f) {
            CrashlyticsController.this = r4;
            this.val$appSettingsDataTask = task;
            this.val$delay = f;
        }

        @NonNull
        public Task<Void> then(@Nullable final Boolean bool) throws Exception {
            return CrashlyticsController.this.backgroundWorker.submitTask(new Callable<Task<Void>>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.8.1
                {
                    C12978.this = this;
                }

                @Override // java.util.concurrent.Callable
                public Task<Void> call() throws Exception {
                    final List<Report> findReports = CrashlyticsController.this.reportManager.findReports();
                    if (!bool.booleanValue()) {
                        Logger.getLogger().m8450d("Reports are being deleted.");
                        CrashlyticsController.deleteFiles(CrashlyticsController.this.listAppExceptionMarkerFiles());
                        CrashlyticsController.this.reportManager.deleteReports(findReports);
                        CrashlyticsController.this.reportingCoordinator.removeAllReports();
                        CrashlyticsController.this.unsentReportsHandled.m10826e(null);
                        return Tasks.m10820e(null);
                    }
                    Logger.getLogger().m8450d("Reports are being sent.");
                    final boolean booleanValue = bool.booleanValue();
                    CrashlyticsController.this.dataCollectionArbiter.grantDataCollectionPermission(booleanValue);
                    final Executor executor = CrashlyticsController.this.backgroundWorker.getExecutor();
                    return C12978.this.val$appSettingsDataTask.mo10780p(executor, new SuccessContinuation<AppSettingsData, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.8.1.1
                        {
                            CallableC12981.this = this;
                        }

                        @NonNull
                        public Task<Void> then(@Nullable AppSettingsData appSettingsData) throws Exception {
                            if (appSettingsData == null) {
                                Logger.getLogger().m8442w("Received null app settings, cannot send reports during app startup.");
                                return Tasks.m10820e(null);
                            }
                            for (Report report : findReports) {
                                if (report.getType() == Report.Type.JAVA) {
                                    CrashlyticsController.appendOrganizationIdToSessionFile(appSettingsData.organizationId, report.getFile());
                                }
                            }
                            CrashlyticsController.this.logAnalyticsAppExceptionEvents();
                            CrashlyticsController.this.reportUploaderProvider.createReportUploader(appSettingsData).uploadReportsAsync(findReports, booleanValue, C12978.this.val$delay);
                            CrashlyticsController.this.reportingCoordinator.sendReports(executor, DataTransportState.getState(appSettingsData));
                            CrashlyticsController.this.unsentReportsHandled.m10826e(null);
                            return Tasks.m10820e(null);
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$AnySessionPartFileFilter.class */
    public static class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !CrashlyticsController.SESSION_FILE_FILTER.accept(file, str) && CrashlyticsController.SESSION_FILE_PATTERN.matcher(str).matches();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$CodedOutputStreamWriteAction.class */
    public interface CodedOutputStreamWriteAction {
        void writeTo(CodedOutputStream codedOutputStream) throws Exception;
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$FileNameContainsFilter.class */
    public static class FileNameContainsFilter implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String str) {
            this.string = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.contains(this.string) && !str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$InvalidPartFileFilter.class */
    static class InvalidPartFileFilter implements FilenameFilter {
        InvalidPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return ClsFileOutputStream.TEMP_FILENAME_FILTER.accept(file, str) || str.contains(CrashlyticsController.SESSION_EVENT_MISSING_BINARY_IMGS_TAG);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$LogFileDirectoryProvider.class */
    public static final class LogFileDirectoryProvider implements LogFileManager.DirectoryProvider {
        private static final String LOG_FILES_DIR = "log-files";
        private final FileStore rootFileStore;

        public LogFileDirectoryProvider(FileStore fileStore) {
            this.rootFileStore = fileStore;
        }

        @Override // com.google.firebase.crashlytics.internal.log.LogFileManager.DirectoryProvider
        public File getLogFileDir() {
            File file = new File(this.rootFileStore.getFilesDir(), LOG_FILES_DIR);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider.class */
    public final class ReportUploaderFilesProvider implements ReportUploader.ReportFilesProvider {
        private ReportUploaderFilesProvider() {
            CrashlyticsController.this = r4;
        }

        @Override // com.google.firebase.crashlytics.internal.report.ReportUploader.ReportFilesProvider
        public File[] getCompleteSessionFiles() {
            return CrashlyticsController.this.listCompleteSessionFiles();
        }

        @Override // com.google.firebase.crashlytics.internal.report.ReportUploader.ReportFilesProvider
        public File[] getNativeReportFiles() {
            return CrashlyticsController.this.listNativeSessionFileDirectories();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderHandlingExceptionCheck.class */
    public final class ReportUploaderHandlingExceptionCheck implements ReportUploader.HandlingExceptionCheck {
        private ReportUploaderHandlingExceptionCheck() {
            CrashlyticsController.this = r4;
        }

        @Override // com.google.firebase.crashlytics.internal.report.ReportUploader.HandlingExceptionCheck
        public boolean isHandlingException() {
            return CrashlyticsController.this.isHandlingException();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable.class */
    public static final class SendReportRunnable implements Runnable {
        private final Context context;
        private final boolean dataCollectionToken;
        private final Report report;
        private final ReportUploader reportUploader;

        public SendReportRunnable(Context context, Report report, ReportUploader reportUploader, boolean z) {
            this.context = context;
            this.report = report;
            this.reportUploader = reportUploader;
            this.dataCollectionToken = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CommonUtils.canTryConnection(this.context)) {
                Logger.getLogger().m8450d("Attempting to send crash report at time of crash...");
                this.reportUploader.uploadReport(this.report, this.dataCollectionToken);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsController$SessionPartFileFilter.class */
    public static class SessionPartFileFilter implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String str) {
            this.sessionId = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.equals(this.sessionId + ClsFileOutputStream.SESSION_FILE_EXTENSION)) {
                return false;
            }
            boolean z = false;
            if (str.contains(this.sessionId)) {
                z = false;
                if (!str.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION)) {
                    z = true;
                }
            }
            return z;
        }
    }

    static {
        FilenameFilter filenameFilter;
        filenameFilter = CrashlyticsController$$Lambda$1.instance;
        APP_EXCEPTION_MARKER_FILTER = filenameFilter;
    }

    public CrashlyticsController(Context context, CrashlyticsBackgroundWorker crashlyticsBackgroundWorker, HttpRequestFactory httpRequestFactory, IdManager idManager, DataCollectionArbiter dataCollectionArbiter, FileStore fileStore, CrashlyticsFileMarker crashlyticsFileMarker, AppData appData, ReportManager reportManager, ReportUploader.Provider provider, CrashlyticsNativeComponent crashlyticsNativeComponent, UnityVersionProvider unityVersionProvider, AnalyticsEventLogger analyticsEventLogger, SettingsDataProvider settingsDataProvider) {
        this.context = context;
        this.backgroundWorker = crashlyticsBackgroundWorker;
        this.httpRequestFactory = httpRequestFactory;
        this.idManager = idManager;
        this.dataCollectionArbiter = dataCollectionArbiter;
        this.fileStore = fileStore;
        this.crashMarker = crashlyticsFileMarker;
        this.appData = appData;
        if (provider != null) {
            this.reportUploaderProvider = provider;
        } else {
            this.reportUploaderProvider = defaultReportUploader();
        }
        this.nativeComponent = crashlyticsNativeComponent;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.analyticsEventLogger = analyticsEventLogger;
        this.userMetadata = new UserMetadata();
        this.logFileDirectoryProvider = new LogFileDirectoryProvider(fileStore);
        this.logFileManager = new LogFileManager(context, this.logFileDirectoryProvider);
        this.reportManager = reportManager == null ? new ReportManager(new ReportUploaderFilesProvider()) : reportManager;
        this.handlingExceptionCheck = new ReportUploaderHandlingExceptionCheck();
        MiddleOutFallbackStrategy middleOutFallbackStrategy = new MiddleOutFallbackStrategy(MAX_STACK_SIZE, new RemoveRepeatsStrategy(10));
        this.stackTraceTrimmingStrategy = middleOutFallbackStrategy;
        this.reportingCoordinator = SessionReportingCoordinator.create(context, idManager, fileStore, appData, this.logFileManager, this.userMetadata, middleOutFallbackStrategy, settingsDataProvider);
    }

    public static void appendOrganizationIdToSessionFile(@Nullable final String str, @NonNull File file) throws Exception {
        if (str != null) {
            appendToProtoFile(file, new CodedOutputStreamWriteAction() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.22
                @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsController.CodedOutputStreamWriteAction
                public void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                    SessionProtobufHelper.writeSessionAppClsId(codedOutputStream, str);
                }
            });
        }
    }

    private static void appendToProtoFile(@NonNull File file, @NonNull CodedOutputStreamWriteAction codedOutputStreamWriteAction) throws Exception {
        FileOutputStream fileOutputStream;
        Throwable th;
        CodedOutputStream codedOutputStream = null;
        codedOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, true);
            try {
                CodedOutputStream newInstance = CodedOutputStream.newInstance(fileOutputStream2);
                codedOutputStream = newInstance;
                codedOutputStreamWriteAction.writeTo(newInstance);
                CommonUtils.flushOrLog(newInstance, "Failed to flush to append to " + file.getPath());
                CommonUtils.closeOrLog(fileOutputStream2, "Failed to close " + file.getPath());
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                CommonUtils.flushOrLog(codedOutputStream, "Failed to flush to append to " + file.getPath());
                CommonUtils.closeOrLog(fileOutputStream, "Failed to close " + file.getPath());
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    private void cacheKeyData(final Map<String, String> map) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.13
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
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.12
            {
                CrashlyticsController.this = this;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                if (currentSessionId == null) {
                    Logger.getLogger().m8450d("Tried to cache user data while no session was open.");
                    return null;
                }
                CrashlyticsController.this.reportingCoordinator.persistUserId(CrashlyticsController.makeFirebaseSessionIdentifier(currentSessionId));
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeUserData(currentSessionId, userMetadata);
                return null;
            }
        });
    }

    private void closeOpenSessions(File[] fileArr, int i, int i2) {
        Logger.getLogger().m8450d("Closing open sessions.");
        while (i < fileArr.length) {
            File file = fileArr[i];
            String sessionIdFromSessionFile = getSessionIdFromSessionFile(file);
            Logger logger = Logger.getLogger();
            logger.m8450d("Closing session: " + sessionIdFromSessionFile);
            writeSessionPartsToSessionFile(file, sessionIdFromSessionFile, i2);
            i++;
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream clsFileOutputStream) {
        if (clsFileOutputStream != null) {
            try {
                clsFileOutputStream.closeInProgressStream();
            } catch (IOException e) {
                Logger.getLogger().m8447e("Error closing session file stream in the presence of an exception", e);
            }
        }
    }

    private static void copyToCodedOutputStream(InputStream inputStream, CodedOutputStream codedOutputStream, int i) throws IOException {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) >= 0) {
            i2 += read;
        }
        codedOutputStream.writeRawBytes(bArr);
    }

    private ReportUploader.Provider defaultReportUploader() {
        return new ReportUploader.Provider() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.9
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.report.ReportUploader.Provider
            public ReportUploader createReportUploader(@NonNull AppSettingsData appSettingsData) {
                String str = appSettingsData.reportsUrl;
                String str2 = appSettingsData.ndkReportsUrl;
                return new ReportUploader(appSettingsData.organizationId, CrashlyticsController.this.appData.googleAppId, DataTransportState.getState(appSettingsData), CrashlyticsController.this.reportManager, CrashlyticsController.this.getCreateReportSpiCall(str, str2), CrashlyticsController.this.handlingExceptionCheck);
            }
        };
    }

    public static void deleteFiles(File[] fileArr) {
        if (fileArr != null) {
            for (File file : fileArr) {
                file.delete();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void doCloseSessions(int i, boolean z) throws Exception {
        trimOpenSessions((z ? 1 : 0) + 8);
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (listSortedSessionBeginFiles.length <= z) {
            Logger.getLogger().m8450d("No open sessions to be closed.");
            return;
        }
        String sessionIdFromSessionFile = getSessionIdFromSessionFile(listSortedSessionBeginFiles[z ? 1 : 0]);
        writeSessionUser(sessionIdFromSessionFile);
        if (this.nativeComponent.hasCrashDataForSession(sessionIdFromSessionFile)) {
            finalizePreviousNativeSession(sessionIdFromSessionFile);
            if (!this.nativeComponent.finalizeSession(sessionIdFromSessionFile)) {
                Logger logger = Logger.getLogger();
                logger.m8450d("Could not finalize native session: " + sessionIdFromSessionFile);
            }
        }
        closeOpenSessions(listSortedSessionBeginFiles, z, i);
        String str = null;
        if (z != 0) {
            str = makeFirebaseSessionIdentifier(getSessionIdFromSessionFile(listSortedSessionBeginFiles[0]));
        }
        this.reportingCoordinator.finalizeSessions(getCurrentTimestampSeconds(), str);
    }

    public void doOpenSession() throws Exception {
        long currentTimestampSeconds = getCurrentTimestampSeconds();
        String clsuuid = new CLSUUID(this.idManager).toString();
        Logger logger = Logger.getLogger();
        logger.m8450d("Opening a new session with ID " + clsuuid);
        this.nativeComponent.openSession(clsuuid);
        writeBeginSession(clsuuid, currentTimestampSeconds);
        writeSessionApp(clsuuid);
        writeSessionOS(clsuuid);
        writeSessionDevice(clsuuid);
        this.logFileManager.setCurrentSession(clsuuid);
        this.reportingCoordinator.onBeginSession(makeFirebaseSessionIdentifier(clsuuid), currentTimestampSeconds);
    }

    public void doWriteAppExceptionMarker(long j) {
        try {
            File filesDir = getFilesDir();
            new File(filesDir, APP_EXCEPTION_MARKER_PREFIX + j).createNewFile();
        } catch (IOException e) {
            Logger.getLogger().m8450d("Could not write app exception marker.");
        }
    }

    public void doWriteFatal(@NonNull Thread thread, @NonNull Throwable th, @NonNull String str, long j) {
        ClsFileOutputStream clsFileOutputStream;
        Throwable th2;
        ClsFileOutputStream clsFileOutputStream2;
        Exception e;
        CodedOutputStream codedOutputStream = null;
        r12 = null;
        CodedOutputStream codedOutputStream2 = null;
        codedOutputStream = null;
        try {
            File filesDir = getFilesDir();
            ClsFileOutputStream clsFileOutputStream3 = new ClsFileOutputStream(filesDir, str + SESSION_FATAL_TAG);
            clsFileOutputStream = clsFileOutputStream3;
            try {
                try {
                    CodedOutputStream newInstance = CodedOutputStream.newInstance(clsFileOutputStream3);
                    codedOutputStream = newInstance;
                    writeSessionEvent(newInstance, thread, th, j, EVENT_TYPE_CRASH, true);
                    codedOutputStream = newInstance;
                    clsFileOutputStream2 = clsFileOutputStream3;
                } catch (Exception e2) {
                    e = e2;
                    clsFileOutputStream2 = clsFileOutputStream3;
                    codedOutputStream2 = codedOutputStream;
                    clsFileOutputStream = clsFileOutputStream2;
                    Logger.getLogger().m8447e("An error occurred in the fatal exception logger", e);
                    CommonUtils.flushOrLog(codedOutputStream, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(clsFileOutputStream2, "Failed to close fatal exception file output stream.");
                }
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.flushOrLog(codedOutputStream2, "Failed to flush to session begin file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
                throw th2;
            }
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream2 = null;
        } catch (Throwable th4) {
            th2 = th4;
            clsFileOutputStream = null;
            CommonUtils.flushOrLog(codedOutputStream2, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close fatal exception file output stream.");
            throw th2;
        }
        CommonUtils.flushOrLog(codedOutputStream, "Failed to flush to session begin file.");
        CommonUtils.closeOrLog(clsFileOutputStream2, "Failed to close fatal exception file output stream.");
    }

    public void doWriteNonFatal(@NonNull Thread thread, @NonNull Throwable th, @NonNull String str, long j) {
        ClsFileOutputStream clsFileOutputStream;
        Throwable th2;
        CodedOutputStream codedOutputStream;
        Exception e;
        CodedOutputStream newInstance;
        r16 = null;
        CodedOutputStream codedOutputStream2 = null;
        try {
            Logger.getLogger().m8450d("Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
            clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), str + SESSION_NON_FATAL_TAG + CommonUtils.padWithZerosToMaxIntWidth(this.eventCounter.getAndIncrement()));
            clsFileOutputStream = clsFileOutputStream;
            try {
                try {
                    newInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                } catch (Exception e2) {
                    e = e2;
                    codedOutputStream = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                writeSessionEvent(newInstance, thread, th, j, "error", false);
                CommonUtils.flushOrLog(newInstance, "Failed to flush to non-fatal file.");
            } catch (Exception e3) {
                e = e3;
                codedOutputStream = newInstance;
                codedOutputStream2 = codedOutputStream;
                clsFileOutputStream = clsFileOutputStream;
                Logger.getLogger().m8447e("An error occurred in the non-fatal exception logger", e);
                CommonUtils.flushOrLog(codedOutputStream, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
                trimSessionEventFiles(str, 64);
            } catch (Throwable th4) {
                th2 = th4;
                codedOutputStream2 = newInstance;
                CommonUtils.flushOrLog(codedOutputStream2, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
                throw th2;
            }
        } catch (Exception e4) {
            e = e4;
            clsFileOutputStream = null;
            codedOutputStream = null;
        } catch (Throwable th5) {
            th2 = th5;
            clsFileOutputStream = null;
        }
        CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
        try {
            trimSessionEventFiles(str, 64);
        } catch (Exception e5) {
            Logger.getLogger().m8447e("An error occurred when trimming non-fatal files.", e5);
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
        Logger logger = Logger.getLogger();
        logger.m8450d("Finalizing native report for session " + str);
        NativeSessionFileProvider sessionFileProvider = this.nativeComponent.getSessionFileProvider(str);
        File minidumpFile = sessionFileProvider.getMinidumpFile();
        if (minidumpFile == null || !minidumpFile.exists()) {
            Logger logger2 = Logger.getLogger();
            logger2.m8442w("No minidump data found for session " + str);
            return;
        }
        long lastModified = minidumpFile.lastModified();
        LogFileManager logFileManager = new LogFileManager(this.context, this.logFileDirectoryProvider, str);
        File file = new File(getNativeSessionFilesDir(), str);
        if (!file.mkdirs()) {
            Logger.getLogger().m8450d("Couldn't create native sessions directory");
            return;
        }
        doWriteAppExceptionMarker(lastModified);
        List<NativeSessionFile> nativeSessionFiles = getNativeSessionFiles(sessionFileProvider, str, getContext(), getFilesDir(), logFileManager.getBytesForLog());
        NativeSessionFileGzipper.processNativeSessions(file, nativeSessionFiles);
        this.reportingCoordinator.finalizeSessionWithNativeEvent(makeFirebaseSessionIdentifier(str), nativeSessionFiles);
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

    public CreateReportSpiCall getCreateReportSpiCall(String str, String str2) {
        String stringsFileValue = CommonUtils.getStringsFileValue(getContext(), CRASHLYTICS_API_ENDPOINT);
        return new CompositeCreateReportSpiCall(new DefaultCreateReportSpiCall(stringsFileValue, str, this.httpRequestFactory, CrashlyticsCore.getVersion()), new NativeCreateReportSpiCall(stringsFileValue, str2, this.httpRequestFactory, CrashlyticsCore.getVersion()));
    }

    @Nullable
    public String getCurrentSessionId() {
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        return listSortedSessionBeginFiles.length > 0 ? getSessionIdFromSessionFile(listSortedSessionBeginFiles[0]) : null;
    }

    private static long getCurrentTimestampSeconds() {
        return getTimestampSeconds(new Date());
    }

    @NonNull
    static List<NativeSessionFile> getNativeSessionFiles(NativeSessionFileProvider nativeSessionFileProvider, String str, Context context, File file, byte[] bArr) {
        byte[] bArr2;
        MetaDataStore metaDataStore = new MetaDataStore(file);
        File userDataFileForSession = metaDataStore.getUserDataFileForSession(str);
        File keysFileForSession = metaDataStore.getKeysFileForSession(str);
        try {
            bArr2 = NativeFileUtils.binaryImagesJsonFromMapsFile(nativeSessionFileProvider.getBinaryImagesFile(), context);
        } catch (Exception e) {
            bArr2 = null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BytesBackedNativeSessionFile("logs_file", "logs", bArr));
        arrayList.add(new BytesBackedNativeSessionFile("binary_images_file", "binaryImages", bArr2));
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

    static String getSessionIdFromSessionFile(File file) {
        return file.getName().substring(0, 35);
    }

    public static long getTimestampSeconds(Date date) {
        return date.getTime() / 1000;
    }

    private File[] getTrimmedNonFatalFiles(String str, File[] fileArr, int i) {
        File[] fileArr2 = fileArr;
        if (fileArr.length > i) {
            Logger.getLogger().m8450d(String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(i)));
            trimSessionEventFiles(str, i);
            fileArr2 = listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        }
        return fileArr2;
    }

    private UserMetadata getUserMetadata(String str) {
        return isHandlingException() ? this.userMetadata : new MetaDataStore(getFilesDir()).readUserData(str);
    }

    public static /* synthetic */ boolean lambda$static$0(File file, String str) {
        return str.startsWith(APP_EXCEPTION_MARKER_PREFIX);
    }

    private static File[] listFilesMatching(File file, FilenameFilter filenameFilter) {
        return ensureFileArrayNotNull(file.listFiles(filenameFilter));
    }

    public File[] listFilesMatching(FilenameFilter filenameFilter) {
        return listFilesMatching(getFilesDir(), filenameFilter);
    }

    private File[] listSessionPartFilesFor(String str) {
        return listFilesMatching(new SessionPartFileFilter(str));
    }

    private File[] listSortedSessionBeginFiles() {
        File[] listSessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(listSessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        return listSessionBeginFiles;
    }

    private Task<Void> logAnalyticsAppExceptionEvent(final long j) {
        if (!firebaseCrashExists()) {
            return Tasks.m10822c(new ScheduledThreadPoolExecutor(1), new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.23
                {
                    CrashlyticsController.this = this;
                }

                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    Bundle bundle = new Bundle();
                    bundle.putInt(CrashlyticsController.FIREBASE_CRASH_TYPE, 1);
                    bundle.putLong(CrashlyticsController.FIREBASE_TIMESTAMP, j);
                    CrashlyticsController.this.analyticsEventLogger.logEvent(CrashlyticsController.FIREBASE_APPLICATION_EXCEPTION, bundle);
                    return null;
                }
            });
        }
        Logger.getLogger().m8450d("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
        return Tasks.m10820e(null);
    }

    public Task<Void> logAnalyticsAppExceptionEvents() {
        File[] listAppExceptionMarkerFiles;
        ArrayList arrayList = new ArrayList();
        for (File file : listAppExceptionMarkerFiles()) {
            try {
                arrayList.add(logAnalyticsAppExceptionEvent(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException e) {
                Logger.getLogger().m8450d("Could not parse timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.m10819f(arrayList);
    }

    @NonNull
    public static String makeFirebaseSessionIdentifier(@NonNull String str) {
        return str.replaceAll(HelpFormatter.DEFAULT_OPT_PREFIX, "");
    }

    private void retainSessions(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            String name = file.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(name);
            if (!matcher.matches()) {
                Logger.getLogger().m8450d("Deleting unknown file: " + name);
                file.delete();
            } else if (!set.contains(matcher.group(1))) {
                Logger.getLogger().m8450d("Trimming session file: " + name);
                file.delete();
            }
        }
    }

    public void sendSessionReports(@NonNull AppSettingsData appSettingsData, boolean z) throws Exception {
        File[] listCompleteSessionFiles;
        Context context = getContext();
        ReportUploader createReportUploader = this.reportUploaderProvider.createReportUploader(appSettingsData);
        for (File file : listCompleteSessionFiles()) {
            appendOrganizationIdToSessionFile(appSettingsData.organizationId, file);
            this.backgroundWorker.submit(new SendReportRunnable(context, new SessionReport(file, SEND_AT_CRASHTIME_HEADER), createReportUploader, z));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.io.Flushable] */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void synthesizeSessionFile(java.io.File r6, java.lang.String r7, java.io.File[] r8, java.io.File r9) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.CrashlyticsController.synthesizeSessionFile(java.io.File, java.lang.String, java.io.File[], java.io.File):void");
    }

    private void trimOpenSessions(int i) {
        HashSet hashSet = new HashSet();
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        int min = Math.min(i, listSortedSessionBeginFiles.length);
        for (int i2 = 0; i2 < min; i2++) {
            hashSet.add(getSessionIdFromSessionFile(listSortedSessionBeginFiles[i2]));
        }
        this.logFileManager.discardOldLogFiles(hashSet);
        retainSessions(listFilesMatching(new AnySessionPartFileFilter()), hashSet);
    }

    private void trimSessionEventFiles(String str, int i) {
        File filesDir = getFilesDir();
        Utils.capFileCount(filesDir, new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG), i, SMALLEST_FILE_NAME_FIRST);
    }

    private Task<Boolean> waitForReportAction() {
        if (this.dataCollectionArbiter.isAutomaticDataCollectionEnabled()) {
            Logger.getLogger().m8450d("Automatic data collection is enabled. Allowing upload.");
            this.unsentReportsAvailable.m10826e(Boolean.FALSE);
            return Tasks.m10820e(Boolean.TRUE);
        }
        Logger.getLogger().m8450d("Automatic data collection is disabled.");
        Logger.getLogger().m8450d("Notifying that unsent reports are available.");
        this.unsentReportsAvailable.m10826e(Boolean.TRUE);
        Task<TContinuationResult> o = this.dataCollectionArbiter.waitForAutomaticDataCollectionEnabled().mo10781o(new SuccessContinuation<Void, Boolean>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.7
            {
                CrashlyticsController.this = this;
            }

            @NonNull
            public Task<Boolean> then(@Nullable Void r3) throws Exception {
                return Tasks.m10820e(Boolean.TRUE);
            }
        });
        Logger.getLogger().m8450d("Waiting for send/deleteUnsentReports to be called.");
        return Utils.race(o, this.reportActionProvided.m10830a());
    }

    private void writeBeginSession(final String str, final long j) throws Exception {
        final String format = String.format(Locale.US, GENERATOR_FORMAT, CrashlyticsCore.getVersion());
        writeSessionPartFile(str, SESSION_BEGIN_TAG, new CodedOutputStreamWriteAction() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.17
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeBeginSession(codedOutputStream, str, format, j);
            }
        });
        this.nativeComponent.writeBeginSession(str, format, j);
    }

    private void writeInitialPartsTo(CodedOutputStream codedOutputStream, String str) throws IOException {
        String[] strArr;
        for (String str2 : INITIAL_SESSION_PART_TAGS) {
            File[] listFilesMatching = listFilesMatching(new FileNameContainsFilter(str + str2 + ClsFileOutputStream.SESSION_FILE_EXTENSION));
            if (listFilesMatching.length == 0) {
                Logger.getLogger().m8450d("Can't find " + str2 + " data for session ID " + str);
            } else {
                Logger.getLogger().m8450d("Collecting " + str2 + " data for session ID " + str);
                writeToCosFromFile(codedOutputStream, listFilesMatching[0]);
            }
        }
    }

    private static void writeNonFatalEventsTo(CodedOutputStream codedOutputStream, File[] fileArr, String str) {
        Arrays.sort(fileArr, CommonUtils.FILE_MODIFIED_COMPARATOR);
        for (File file : fileArr) {
            try {
                Logger.getLogger().m8450d(String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                writeToCosFromFile(codedOutputStream, file);
            } catch (Exception e) {
                Logger.getLogger().m8447e("Error writting non-fatal to session.", e);
            }
        }
    }

    private void writeSessionApp(String str) throws Exception {
        final String appIdentifier = this.idManager.getAppIdentifier();
        AppData appData = this.appData;
        final String str2 = appData.versionCode;
        final String str3 = appData.versionName;
        final String crashlyticsInstallId = this.idManager.getCrashlyticsInstallId();
        final int id = DeliveryMechanism.determineFrom(this.appData.installerPackageName).getId();
        writeSessionPartFile(str, SESSION_APP_TAG, new CodedOutputStreamWriteAction() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.18
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionApp(codedOutputStream, appIdentifier, str2, str3, crashlyticsInstallId, id, CrashlyticsController.this.unityVersion);
            }
        });
        this.nativeComponent.writeSessionApp(str, appIdentifier, str2, str3, crashlyticsInstallId, id, this.unityVersion);
    }

    private void writeSessionDevice(String str) throws Exception {
        Context context = getContext();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        final int cpuArchitectureInt = CommonUtils.getCpuArchitectureInt();
        final String str2 = Build.MODEL;
        final int availableProcessors = Runtime.getRuntime().availableProcessors();
        final long totalRamInBytes = CommonUtils.getTotalRamInBytes();
        final long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        final boolean isEmulator = CommonUtils.isEmulator(context);
        final int deviceState = CommonUtils.getDeviceState(context);
        final String str3 = Build.MANUFACTURER;
        final String str4 = Build.PRODUCT;
        writeSessionPartFile(str, SESSION_DEVICE_TAG, new CodedOutputStreamWriteAction() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.20
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionDevice(codedOutputStream, cpuArchitectureInt, str2, availableProcessors, totalRamInBytes, blockCount, isEmulator, deviceState, str3, str4);
            }
        });
        this.nativeComponent.writeSessionDevice(str, cpuArchitectureInt, str2, availableProcessors, totalRamInBytes, blockCount, isEmulator, deviceState, str3, str4);
    }

    private void writeSessionEvent(CodedOutputStream codedOutputStream, Thread thread, Throwable th, long j, String str, boolean z) throws Exception {
        Thread[] threadArr;
        Map<String, String> map;
        TrimmedThrowableData trimmedThrowableData = new TrimmedThrowableData(th, this.stackTraceTrimmingStrategy);
        Context context = getContext();
        BatteryState batteryState = BatteryState.get(context);
        Float batteryLevel = batteryState.getBatteryLevel();
        int batteryVelocity = batteryState.getBatteryVelocity();
        boolean proximitySensorEnabled = CommonUtils.getProximitySensorEnabled(context);
        int i = context.getResources().getConfiguration().orientation;
        long totalRamInBytes = CommonUtils.getTotalRamInBytes();
        long calculateFreeRamInBytes = CommonUtils.calculateFreeRamInBytes(context);
        long calculateUsedDiskSpaceInBytes = CommonUtils.calculateUsedDiskSpaceInBytes(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo appProcessInfo = CommonUtils.getAppProcessInfo(context.getPackageName(), context);
        LinkedList linkedList = new LinkedList();
        StackTraceElement[] stackTraceElementArr = trimmedThrowableData.stacktrace;
        String str2 = this.appData.buildId;
        String appIdentifier = this.idManager.getAppIdentifier();
        int i2 = 0;
        if (z) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            threadArr = new Thread[allStackTraces.size()];
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                threadArr[i2] = entry.getKey();
                linkedList.add(this.stackTraceTrimmingStrategy.getTrimmedStackTrace(entry.getValue()));
                i2++;
            }
        } else {
            threadArr = new Thread[0];
        }
        if (!CommonUtils.getBooleanResourceValue(context, COLLECT_CUSTOM_KEYS, true)) {
            map = new TreeMap<>();
        } else {
            Map<String, String> customKeys = this.userMetadata.getCustomKeys();
            map = customKeys;
            if (customKeys != null) {
                map = customKeys;
                if (customKeys.size() > 1) {
                    map = new TreeMap<>(customKeys);
                }
            }
        }
        SessionProtobufHelper.writeSessionEvent(codedOutputStream, j, str, trimmedThrowableData, thread, stackTraceElementArr, threadArr, linkedList, 8, map, this.logFileManager.getBytesForLog(), appProcessInfo, i, appIdentifier, str2, batteryLevel, batteryVelocity, proximitySensorEnabled, totalRamInBytes - calculateFreeRamInBytes, calculateUsedDiskSpaceInBytes);
        this.logFileManager.clearLog();
    }

    private void writeSessionOS(String str) throws Exception {
        final String str2 = Build.VERSION.RELEASE;
        final String str3 = Build.VERSION.CODENAME;
        final boolean isRooted = CommonUtils.isRooted(getContext());
        writeSessionPartFile(str, SESSION_OS_TAG, new CodedOutputStreamWriteAction() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.19
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionOS(codedOutputStream, str2, str3, isRooted);
            }
        });
        this.nativeComponent.writeSessionOs(str, str2, str3, isRooted);
    }

    private void writeSessionPartFile(String str, String str2, CodedOutputStreamWriteAction codedOutputStreamWriteAction) throws Exception {
        ClsFileOutputStream clsFileOutputStream;
        Throwable th;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStream = null;
        codedOutputStream = null;
        try {
            File filesDir = getFilesDir();
            clsFileOutputStream2 = new ClsFileOutputStream(filesDir, str + str2);
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
        }
        try {
            CodedOutputStream newInstance = CodedOutputStream.newInstance(clsFileOutputStream2);
            codedOutputStream = newInstance;
            codedOutputStreamWriteAction.writeTo(newInstance);
            CommonUtils.flushOrLog(newInstance, "Failed to flush to session " + str2 + " file.");
            CommonUtils.closeOrLog(clsFileOutputStream2, "Failed to close session " + str2 + " file.");
        } catch (Throwable th3) {
            th = th3;
            clsFileOutputStream = clsFileOutputStream2;
            CommonUtils.flushOrLog(codedOutputStream, "Failed to flush to session " + str2 + " file.");
            CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close session " + str2 + " file.");
            throw th;
        }
    }

    private void writeSessionPartsToSessionFile(File file, String str, int i) {
        Logger logger = Logger.getLogger();
        logger.m8450d("Collecting session parts for ID " + str);
        File[] listFilesMatching = listFilesMatching(new FileNameContainsFilter(str + SESSION_FATAL_TAG));
        boolean z = listFilesMatching != null && listFilesMatching.length > 0;
        Logger.getLogger().m8450d(String.format(Locale.US, "Session %s has fatal exception: %s", str, Boolean.valueOf(z)));
        File[] listFilesMatching2 = listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        boolean z2 = listFilesMatching2 != null && listFilesMatching2.length > 0;
        Logger.getLogger().m8450d(String.format(Locale.US, "Session %s has non-fatal exceptions: %s", str, Boolean.valueOf(z2)));
        if (z || z2) {
            synthesizeSessionFile(file, str, getTrimmedNonFatalFiles(str, listFilesMatching2, i), z ? listFilesMatching[0] : null);
        } else {
            Logger logger2 = Logger.getLogger();
            logger2.m8450d("No events present for session ID " + str);
        }
        Logger logger3 = Logger.getLogger();
        logger3.m8450d("Removing session part files for ID " + str);
        deleteFiles(listSessionPartFilesFor(str));
    }

    private void writeSessionUser(String str) throws Exception {
        final UserMetadata userMetadata = getUserMetadata(str);
        writeSessionPartFile(str, SESSION_USER_TAG, new CodedOutputStreamWriteAction() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.21
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) throws Exception {
                SessionProtobufHelper.writeSessionUser(codedOutputStream, userMetadata.getUserId(), null, null);
            }
        });
    }

    private static void writeToCosFromFile(CodedOutputStream codedOutputStream, File file) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
        if (!file.exists()) {
            Logger logger = Logger.getLogger();
            logger.m8448e("Tried to include a file that doesn't exist: " + file.getName());
            return;
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            copyToCodedOutputStream(fileInputStream, codedOutputStream, (int) file.length());
            CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream.");
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close file input stream.");
            throw th;
        }
    }

    @NonNull
    public Task<Boolean> checkForUnsentReports() {
        if (this.checkForUnsentReportsCalled.compareAndSet(false, true)) {
            return this.unsentReportsAvailable.m10830a();
        }
        Logger.getLogger().m8450d("checkForUnsentReports should only be called once per execution.");
        return Tasks.m10820e(Boolean.FALSE);
    }

    public void cleanInvalidTempFiles() {
        this.backgroundWorker.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.15
            {
                CrashlyticsController.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsController crashlyticsController = CrashlyticsController.this;
                crashlyticsController.doCleanInvalidTempFiles(crashlyticsController.listFilesMatching(new InvalidPartFileFilter()));
            }
        });
    }

    public Task<Void> deleteUnsentReports() {
        this.reportActionProvided.m10826e(Boolean.FALSE);
        return this.unsentReportsHandled.m10830a();
    }

    public boolean didCrashOnPreviousExecution() {
        boolean z = true;
        if (!this.crashMarker.isPresent()) {
            String currentSessionId = getCurrentSessionId();
            if (currentSessionId == null || !this.nativeComponent.hasCrashDataForSession(currentSessionId)) {
                z = false;
            }
            return z;
        }
        Logger.getLogger().m8450d("Found previous crash marker.");
        this.crashMarker.remove();
        return true;
    }

    void doCleanInvalidTempFiles(File[] fileArr) {
        File[] listFilesMatching;
        final HashSet hashSet = new HashSet();
        for (File file : fileArr) {
            Logger.getLogger().m8450d("Found invalid session part file: " + file);
            hashSet.add(getSessionIdFromSessionFile(file));
        }
        if (!hashSet.isEmpty()) {
            for (File file2 : listFilesMatching(new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.16
                {
                    CrashlyticsController.this = this;
                }

                @Override // java.io.FilenameFilter
                public boolean accept(File file3, String str) {
                    if (str.length() < 35) {
                        return false;
                    }
                    return hashSet.contains(str.substring(0, 35));
                }
            })) {
                Logger.getLogger().m8450d("Deleting invalid session file: " + file2);
                file2.delete();
            }
        }
    }

    void doCloseSessions(int i) throws Exception {
        doCloseSessions(i, false);
    }

    public void enableExceptionHandling(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, SettingsDataProvider settingsDataProvider) {
        openSession();
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = new CrashlyticsUncaughtExceptionHandler(new CrashlyticsUncaughtExceptionHandler.CrashListener() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.5
            {
                CrashlyticsController.this = this;
            }

            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsUncaughtExceptionHandler.CrashListener
            public void onUncaughtException(@NonNull SettingsDataProvider settingsDataProvider2, @NonNull Thread thread, @NonNull Throwable th) {
                CrashlyticsController.this.handleUncaughtException(settingsDataProvider2, thread, th);
            }
        }, settingsDataProvider, uncaughtExceptionHandler);
        this.crashHandler = crashlyticsUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(crashlyticsUncaughtExceptionHandler);
    }

    public boolean finalizeSessions(int i) {
        this.backgroundWorker.checkRunningOnThread();
        if (isHandlingException()) {
            Logger.getLogger().m8450d("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        Logger.getLogger().m8450d("Finalizing previously open sessions.");
        try {
            doCloseSessions(i, true);
            Logger.getLogger().m8450d("Closed all previously open sessions");
            return true;
        } catch (Exception e) {
            Logger.getLogger().m8447e("Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    File getFatalSessionFilesDir() {
        return new File(getFilesDir(), FATAL_SESSION_DIR);
    }

    File getFilesDir() {
        return this.fileStore.getFilesDir();
    }

    File getNativeSessionFilesDir() {
        return new File(getFilesDir(), NATIVE_SESSION_DIR);
    }

    File getNonFatalSessionFilesDir() {
        return new File(getFilesDir(), NONFATAL_SESSION_DIR);
    }

    UserMetadata getUserMetadata() {
        return this.userMetadata;
    }

    void handleUncaughtException(@NonNull final SettingsDataProvider settingsDataProvider, @NonNull final Thread thread, @NonNull final Throwable th) {
        synchronized (this) {
            Logger logger = Logger.getLogger();
            logger.m8450d("Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            final Date date = new Date();
            try {
                Utils.awaitEvenIfOnMainThread(this.backgroundWorker.submitTask(new Callable<Task<Void>>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.6
                    {
                        CrashlyticsController.this = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public Task<Void> call() throws Exception {
                        long timestampSeconds = CrashlyticsController.getTimestampSeconds(date);
                        String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                        if (currentSessionId == null) {
                            Logger.getLogger().m8448e("Tried to write a fatal exception while no session was open.");
                            return Tasks.m10820e(null);
                        }
                        CrashlyticsController.this.crashMarker.create();
                        CrashlyticsController.this.reportingCoordinator.persistFatalEvent(th, thread, CrashlyticsController.makeFirebaseSessionIdentifier(currentSessionId), timestampSeconds);
                        CrashlyticsController.this.doWriteFatal(thread, th, currentSessionId, timestampSeconds);
                        CrashlyticsController.this.doWriteAppExceptionMarker(date.getTime());
                        AbstractC1353Settings settings = settingsDataProvider.getSettings();
                        int i = settings.getSessionData().maxCustomExceptionEvents;
                        int i2 = settings.getSessionData().maxCompleteSessionsCount;
                        CrashlyticsController.this.doCloseSessions(i);
                        CrashlyticsController.this.doOpenSession();
                        CrashlyticsController.this.trimSessionFiles(i2);
                        if (!CrashlyticsController.this.dataCollectionArbiter.isAutomaticDataCollectionEnabled()) {
                            return Tasks.m10820e(null);
                        }
                        final Executor executor = CrashlyticsController.this.backgroundWorker.getExecutor();
                        return settingsDataProvider.getAppSettings().mo10780p(executor, new SuccessContinuation<AppSettingsData, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.6.1
                            {
                                CallableC12946.this = this;
                            }

                            @NonNull
                            public Task<Void> then(@Nullable AppSettingsData appSettingsData) throws Exception {
                                if (appSettingsData == null) {
                                    Logger.getLogger().m8442w("Received null app settings, cannot send reports at crash time.");
                                    return Tasks.m10820e(null);
                                }
                                CrashlyticsController.this.sendSessionReports(appSettingsData, true);
                                return Tasks.m10818g(CrashlyticsController.this.logAnalyticsAppExceptionEvents(), CrashlyticsController.this.reportingCoordinator.sendReports(executor, DataTransportState.getState(appSettingsData)));
                            }
                        });
                    }
                }));
            } catch (Exception e) {
            }
        }
    }

    boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    boolean isHandlingException() {
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = this.crashHandler;
        return crashlyticsUncaughtExceptionHandler != null && crashlyticsUncaughtExceptionHandler.isHandlingException();
    }

    File[] listAppExceptionMarkerFiles() {
        return listFilesMatching(APP_EXCEPTION_MARKER_FILTER);
    }

    File[] listCompleteSessionFiles() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, listFilesMatching(getFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getNonFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getFilesDir(), SESSION_FILE_FILTER));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    File[] listNativeSessionFileDirectories() {
        return ensureFileArrayNotNull(getNativeSessionFilesDir().listFiles());
    }

    File[] listSessionBeginFiles() {
        return listFilesMatching(SESSION_BEGIN_FILE_FILTER);
    }

    void openSession() {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.14
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

    public Task<Void> sendUnsentReports() {
        this.reportActionProvided.m10826e(Boolean.TRUE);
        return this.unsentReportsHandled.m10830a();
    }

    public void setCustomKey(String str, String str2) {
        try {
            this.userMetadata.setCustomKey(str, str2);
            cacheKeyData(this.userMetadata.getCustomKeys());
        } catch (IllegalArgumentException e) {
            Context context = this.context;
            if (context == null || !CommonUtils.isAppDebuggable(context)) {
                Logger.getLogger().m8448e("Attempting to set custom attribute with null key, ignoring.");
                return;
            }
            throw e;
        }
    }

    public void setUserId(String str) {
        this.userMetadata.setUserId(str);
        cacheUserData(this.userMetadata);
    }

    public Task<Void> submitAllReports(float f, Task<AppSettingsData> task) {
        if (!this.reportManager.areReportsAvailable()) {
            Logger.getLogger().m8450d("No reports are available.");
            this.unsentReportsAvailable.m10826e(Boolean.FALSE);
            return Tasks.m10820e(null);
        }
        Logger.getLogger().m8450d("Unsent reports are available.");
        return waitForReportAction().mo10781o(new C12978(task, f));
    }

    void trimSessionFiles(int i) {
        int capSessionCount = i - Utils.capSessionCount(getNativeSessionFilesDir(), getFatalSessionFilesDir(), i, SMALLEST_FILE_NAME_FIRST);
        Utils.capFileCount(getFilesDir(), SESSION_FILE_FILTER, capSessionCount - Utils.capFileCount(getNonFatalSessionFilesDir(), capSessionCount, SMALLEST_FILE_NAME_FIRST), SMALLEST_FILE_NAME_FIRST);
    }

    public void writeNonFatalException(@NonNull final Thread thread, @NonNull final Throwable th) {
        final Date date = new Date();
        this.backgroundWorker.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.11
            {
                CrashlyticsController.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    long timestampSeconds = CrashlyticsController.getTimestampSeconds(date);
                    String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                    if (currentSessionId == null) {
                        Logger.getLogger().m8450d("Tried to write a non-fatal exception while no session was open.");
                        return;
                    }
                    CrashlyticsController.this.reportingCoordinator.persistNonFatalEvent(th, thread, CrashlyticsController.makeFirebaseSessionIdentifier(currentSessionId), timestampSeconds);
                    CrashlyticsController.this.doWriteNonFatal(thread, th, currentSessionId, timestampSeconds);
                }
            }
        });
    }

    public void writeToLog(final long j, final String str) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.10
            {
                CrashlyticsController.this = this;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (CrashlyticsController.this.isHandlingException()) {
                    return null;
                }
                CrashlyticsController.this.logFileManager.writeToLog(j, str);
                return null;
            }
        });
    }
}
