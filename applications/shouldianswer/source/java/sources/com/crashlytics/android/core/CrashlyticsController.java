package com.crashlytics.android.core;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.EventLogger;
import com.crashlytics.android.core.CrashPromptDialog;
import com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler;
import com.crashlytics.android.core.LogFileManager;
import com.crashlytics.android.core.ReportUploader;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.p068b.AbstractC1483j;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1494p;
import io.fabric.sdk.android.services.p068b.EnumC1487l;
import io.fabric.sdk.android.services.p071d.AbstractC1547a;
import io.fabric.sdk.android.services.p072e.C1563m;
import io.fabric.sdk.android.services.p072e.C1565o;
import io.fabric.sdk.android.services.p072e.C1566p;
import io.fabric.sdk.android.services.p072e.C1567q;
import io.fabric.sdk.android.services.p072e.C1572t;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController.class */
public class CrashlyticsController {
    private static final int ANALYZER_VERSION = 1;
    private static final String COLLECT_CUSTOM_KEYS = "com.crashlytics.CollectCustomKeys";
    private static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    static final String FATAL_SESSION_DIR = "fatal-sessions";
    static final String FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS = "clx";
    static final String FIREBASE_APPLICATION_EXCEPTION = "_ae";
    static final String FIREBASE_CRASH_TYPE = "fatal";
    static final int FIREBASE_CRASH_TYPE_FATAL = 1;
    static final String FIREBASE_REALTIME = "_r";
    static final String FIREBASE_TIMESTAMP = "timestamp";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    static final int MAX_INVALID_SESSIONS = 4;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    static final int MAX_STACK_SIZE = 1024;
    static final String NONFATAL_SESSION_DIR = "nonfatal-sessions";
    static final int NUM_STACK_REPETITIONS_ALLOWED = 10;
    static final String SESSION_EVENT_MISSING_BINARY_IMGS_TAG = "SessionMissingBinaryImages";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_JSON_SUFFIX = ".json";
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    private static final boolean SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT = false;
    private final AppData appData;
    private final AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar;
    private final CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsUncaughtExceptionHandler crashHandler;
    private final CrashlyticsCore crashlyticsCore;
    private final DevicePowerStateListener devicePowerStateListener;
    private final AbstractC1547a fileStore;
    private final EventLogger firebaseAnalyticsLogger;
    private final AbstractC1588d httpRequestFactory;
    private final C1494p idManager;
    private final LogFileDirectoryProvider logFileDirectoryProvider;
    private final LogFileManager logFileManager;
    private final PreferenceManager preferenceManager;
    private final String unityVersion;
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final FilenameFilter SESSION_BEGIN_FILE_FILTER = new FileNameContainsFilter(SESSION_BEGIN_TAG) { // from class: com.crashlytics.android.core.CrashlyticsController.1
        @Override // com.crashlytics.android.core.CrashlyticsController.FileNameContainsFilter, java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return super.accept(file, str) && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.2
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final FileFilter SESSION_DIRECTORY_FILTER = new FileFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.3
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.isDirectory() && file.getName().length() == 35;
        }
    };
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsController.4
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    };
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsController.5
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    };
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    static final String SESSION_USER_TAG = "SessionUser";
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    private static final String[] INITIAL_SESSION_PART_TAGS = {SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG};
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final ReportUploader.ReportFilesProvider reportFilesProvider = new ReportUploaderFilesProvider();
    private final ReportUploader.HandlingExceptionCheck handlingExceptionCheck = new ReportUploaderHandlingExceptionCheck();
    private final StackTraceTrimmingStrategy stackTraceTrimmingStrategy = new MiddleOutFallbackStrategy(MAX_STACK_SIZE, new RemoveRepeatsStrategy(10));

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$AnySessionPartFileFilter.class */
    public static class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !CrashlyticsController.SESSION_FILE_FILTER.accept(file, str) && CrashlyticsController.SESSION_FILE_PATTERN.matcher(str).matches();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$CodedOutputStreamWriteAction.class */
    public interface CodedOutputStreamWriteAction {
        void writeTo(CodedOutputStream codedOutputStream);
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$DefaultSettingsDataProvider.class */
    public static final class DefaultSettingsDataProvider implements CrashlyticsUncaughtExceptionHandler.SettingsDataProvider {
        private DefaultSettingsDataProvider() {
        }

        @Override // com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.SettingsDataProvider
        public C1572t getSettingsData() {
            return C1567q.m3307a().m3304b();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$FileNameContainsFilter.class */
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

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$FileOutputStreamWriteAction.class */
    public interface FileOutputStreamWriteAction {
        void writeTo(FileOutputStream fileOutputStream);
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$InvalidPartFileFilter.class */
    public static class InvalidPartFileFilter implements FilenameFilter {
        InvalidPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return ClsFileOutputStream.TEMP_FILENAME_FILTER.accept(file, str) || str.contains(CrashlyticsController.SESSION_EVENT_MISSING_BINARY_IMGS_TAG);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$LogFileDirectoryProvider.class */
    public static final class LogFileDirectoryProvider implements LogFileManager.DirectoryProvider {
        private static final String LOG_FILES_DIR = "log-files";
        private final AbstractC1547a rootFileStore;

        public LogFileDirectoryProvider(AbstractC1547a abstractC1547a) {
            this.rootFileStore = abstractC1547a;
        }

        @Override // com.crashlytics.android.core.LogFileManager.DirectoryProvider
        public File getLogFileDir() {
            File file = new File(this.rootFileStore.mo3339a(), LOG_FILES_DIR);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck.class */
    public static final class PrivacyDialogCheck implements ReportUploader.SendCheck {
        private final AbstractC1459h kit;
        private final PreferenceManager preferenceManager;
        private final C1565o promptData;

        public PrivacyDialogCheck(AbstractC1459h abstractC1459h, PreferenceManager preferenceManager, C1565o c1565o) {
            this.kit = abstractC1459h;
            this.preferenceManager = preferenceManager;
            this.promptData = c1565o;
        }

        @Override // com.crashlytics.android.core.ReportUploader.SendCheck
        public boolean canSendReports() {
            Activity m3583b = this.kit.getFabric().m3583b();
            if (m3583b == null || m3583b.isFinishing()) {
                return true;
            }
            final CrashPromptDialog create = CrashPromptDialog.create(m3583b, this.promptData, new CrashPromptDialog.AlwaysSendCallback() { // from class: com.crashlytics.android.core.CrashlyticsController.PrivacyDialogCheck.1
                @Override // com.crashlytics.android.core.CrashPromptDialog.AlwaysSendCallback
                public void sendUserReportsWithoutPrompting(boolean z) {
                    PrivacyDialogCheck.this.preferenceManager.setShouldAlwaysSendReports(z);
                }
            });
            m3583b.runOnUiThread(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.PrivacyDialogCheck.2
                @Override // java.lang.Runnable
                public void run() {
                    create.show();
                }
            });
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Waiting for user opt-in.");
            create.await();
            return create.getOptIn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider.class */
    public final class ReportUploaderFilesProvider implements ReportUploader.ReportFilesProvider {
        private ReportUploaderFilesProvider() {
            CrashlyticsController.this = r4;
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getCompleteSessionFiles() {
            return CrashlyticsController.this.listCompleteSessionFiles();
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getInvalidSessionFiles() {
            return CrashlyticsController.this.getInvalidFilesDir().listFiles();
        }

        @Override // com.crashlytics.android.core.ReportUploader.ReportFilesProvider
        public File[] getNativeReportFiles() {
            return CrashlyticsController.this.listNativeSessionFileDirectories();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$ReportUploaderHandlingExceptionCheck.class */
    public final class ReportUploaderHandlingExceptionCheck implements ReportUploader.HandlingExceptionCheck {
        private ReportUploaderHandlingExceptionCheck() {
            CrashlyticsController.this = r4;
        }

        @Override // com.crashlytics.android.core.ReportUploader.HandlingExceptionCheck
        public boolean isHandlingException() {
            return CrashlyticsController.this.isHandlingException();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$SendReportRunnable.class */
    public static final class SendReportRunnable implements Runnable {
        private final Context context;
        private final Report report;
        private final ReportUploader reportUploader;

        public SendReportRunnable(Context context, Report report, ReportUploader reportUploader) {
            this.context = context;
            this.report = report;
            this.reportUploader = reportUploader;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C1480i.m3463n(this.context)) {
                return;
            }
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Attempting to send crash report at time of crash...");
            this.reportUploader.forceUpload(this.report);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsController$SessionPartFileFilter.class */
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

    public CrashlyticsController(CrashlyticsCore crashlyticsCore, CrashlyticsBackgroundWorker crashlyticsBackgroundWorker, AbstractC1588d abstractC1588d, C1494p c1494p, PreferenceManager preferenceManager, AbstractC1547a abstractC1547a, AppData appData, UnityVersionProvider unityVersionProvider, AppMeasurementEventListenerRegistrar appMeasurementEventListenerRegistrar, EventLogger eventLogger) {
        this.crashlyticsCore = crashlyticsCore;
        this.backgroundWorker = crashlyticsBackgroundWorker;
        this.httpRequestFactory = abstractC1588d;
        this.idManager = c1494p;
        this.preferenceManager = preferenceManager;
        this.fileStore = abstractC1547a;
        this.appData = appData;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.appMeasurementEventListenerRegistrar = appMeasurementEventListenerRegistrar;
        this.firebaseAnalyticsLogger = eventLogger;
        Context context = crashlyticsCore.getContext();
        this.logFileDirectoryProvider = new LogFileDirectoryProvider(abstractC1547a);
        this.logFileManager = new LogFileManager(context, this.logFileDirectoryProvider);
        this.devicePowerStateListener = new DevicePowerStateListener(context);
    }

    private void closeOpenSessions(File[] fileArr, int i, int i2) {
        C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Closing open sessions.");
        while (i < fileArr.length) {
            File file = fileArr[i];
            String sessionIdFromSessionFile = getSessionIdFromSessionFile(file);
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3552a(CrashlyticsCore.TAG, "Closing session: " + sessionIdFromSessionFile);
            writeSessionPartsToSessionFile(file, sessionIdFromSessionFile, i2);
            i++;
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream clsFileOutputStream) {
        if (clsFileOutputStream == null) {
            return;
        }
        try {
            clsFileOutputStream.closeInProgressStream();
        } catch (IOException e) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Error closing session file stream in the presence of an exception", e);
        }
    }

    private static void copyToCodedOutputStream(InputStream inputStream, CodedOutputStream codedOutputStream, int i) {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= bArr.length || (read = inputStream.read(bArr, i3, bArr.length - i3)) < 0) {
                break;
            }
            i2 = i3 + read;
        }
        codedOutputStream.writeRawBytes(bArr);
    }

    private void deleteSessionPartFilesFor(String str) {
        for (File file : listSessionPartFilesFor(str)) {
            file.delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void doCloseSessions(C1566p c1566p, boolean z) {
        trimOpenSessions((z ? 1 : 0) + 8);
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (listSortedSessionBeginFiles.length <= z) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "No open sessions to be closed.");
            return;
        }
        writeSessionUser(getSessionIdFromSessionFile(listSortedSessionBeginFiles[z ? 1 : 0]));
        if (c1566p == null) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Unable to close session. Settings are not loaded.");
        } else {
            closeOpenSessions(listSortedSessionBeginFiles, z, c1566p.f4266c);
        }
    }

    public void doOpenSession() {
        Date date = new Date();
        String clsuuid = new CLSUUID(this.idManager).toString();
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(CrashlyticsCore.TAG, "Opening a new session with ID " + clsuuid);
        writeBeginSession(clsuuid, date);
        writeSessionApp(clsuuid);
        writeSessionOS(clsuuid);
        writeSessionDevice(clsuuid);
        this.logFileManager.setCurrentSession(clsuuid);
    }

    public void doWriteNonFatal(Date date, Thread thread, Throwable th) {
        ClsFileOutputStream clsFileOutputStream;
        Throwable th2;
        CodedOutputStream codedOutputStream;
        Exception e;
        CodedOutputStream newInstance;
        String currentSessionId = getCurrentSessionId();
        ClsFileOutputStream clsFileOutputStream2 = null;
        CodedOutputStream codedOutputStream2 = null;
        if (currentSessionId == null) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        recordLoggedExceptionAnswersEvent(currentSessionId, th.getClass().getName());
        try {
            try {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
                clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_NON_FATAL_TAG + C1480i.m3506a(this.eventCounter.getAndIncrement()));
                codedOutputStream2 = null;
                clsFileOutputStream2 = clsFileOutputStream;
                try {
                    newInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                } catch (Exception e2) {
                    e = e2;
                    codedOutputStream = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
                clsFileOutputStream = clsFileOutputStream2;
            }
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream = null;
            codedOutputStream = null;
        } catch (Throwable th4) {
            th2 = th4;
            clsFileOutputStream = null;
        }
        try {
            try {
                writeSessionEvent(newInstance, date, thread, th, EVENT_TYPE_LOGGED, false);
                C1480i.m3495a(newInstance, "Failed to flush to non-fatal file.");
            } catch (Exception e4) {
                e = e4;
                codedOutputStream = newInstance;
                codedOutputStream2 = codedOutputStream;
                clsFileOutputStream2 = clsFileOutputStream;
                C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                C1480i.m3495a(codedOutputStream, "Failed to flush to non-fatal file.");
                C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                trimSessionEventFiles(currentSessionId, 64);
                return;
            } catch (Throwable th5) {
                th2 = th5;
                codedOutputStream2 = newInstance;
                C1480i.m3495a(codedOutputStream2, "Failed to flush to non-fatal file.");
                C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
                throw th2;
            }
            trimSessionEventFiles(currentSessionId, 64);
            return;
        } catch (Exception e5) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "An error occurred when trimming non-fatal files.", e5);
            return;
        }
        C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close non-fatal file output stream.");
    }

    private File[] ensureFileArrayNotNull(File[] fileArr) {
        File[] fileArr2 = fileArr;
        if (fileArr == null) {
            fileArr2 = new File[0];
        }
        return fileArr2;
    }

    public void finalizeMostRecentNativeCrash(Context context, File file, String str) {
        byte[] minidumpFromDirectory = NativeFileUtils.minidumpFromDirectory(file);
        byte[] metadataJsonFromDirectory = NativeFileUtils.metadataJsonFromDirectory(file);
        byte[] binaryImagesJsonFromDirectory = NativeFileUtils.binaryImagesJsonFromDirectory(file, context);
        if (minidumpFromDirectory == null || minidumpFromDirectory.length == 0) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3548d(CrashlyticsCore.TAG, "No minidump data found in directory " + file);
            return;
        }
        recordFatalExceptionAnswersEvent(str, "<native-crash: minidump>");
        byte[] readFile = readFile(str, "BeginSession.json");
        byte[] readFile2 = readFile(str, "SessionApp.json");
        byte[] readFile3 = readFile(str, "SessionDevice.json");
        byte[] readFile4 = readFile(str, "SessionOS.json");
        byte[] readFile5 = NativeFileUtils.readFile(new MetaDataStore(getFilesDir()).getUserDataFileForSession(str));
        LogFileManager logFileManager = new LogFileManager(this.crashlyticsCore.getContext(), this.logFileDirectoryProvider, str);
        byte[] bytesForLog = logFileManager.getBytesForLog();
        logFileManager.clearLog();
        byte[] readFile6 = NativeFileUtils.readFile(new MetaDataStore(getFilesDir()).getKeysFileForSession(str));
        File file2 = new File(this.fileStore.mo3339a(), str);
        if (!file2.mkdir()) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Couldn't create native sessions directory");
            return;
        }
        gzipIfNotEmpty(minidumpFromDirectory, new File(file2, "minidump"));
        gzipIfNotEmpty(metadataJsonFromDirectory, new File(file2, "metadata"));
        gzipIfNotEmpty(binaryImagesJsonFromDirectory, new File(file2, "binaryImages"));
        gzipIfNotEmpty(readFile, new File(file2, "session"));
        gzipIfNotEmpty(readFile2, new File(file2, "app"));
        gzipIfNotEmpty(readFile3, new File(file2, "device"));
        gzipIfNotEmpty(readFile4, new File(file2, "os"));
        gzipIfNotEmpty(readFile5, new File(file2, "user"));
        gzipIfNotEmpty(bytesForLog, new File(file2, "logs"));
        gzipIfNotEmpty(readFile6, new File(file2, "keys"));
    }

    private boolean firebaseCrashExists() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private CreateReportSpiCall getCreateReportSpiCall(String str, String str2) {
        String m3481b = C1480i.m3481b(this.crashlyticsCore.getContext(), CRASHLYTICS_API_ENDPOINT);
        return new CompositeCreateReportSpiCall(new DefaultCreateReportSpiCall(this.crashlyticsCore, m3481b, str, this.httpRequestFactory), new NativeCreateReportSpiCall(this.crashlyticsCore, m3481b, str2, this.httpRequestFactory));
    }

    public String getCurrentSessionId() {
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        return listSortedSessionBeginFiles.length > 0 ? getSessionIdFromSessionFile(listSortedSessionBeginFiles[0]) : null;
    }

    public String getPreviousSessionId() {
        File[] listSortedSessionBeginFiles = listSortedSessionBeginFiles();
        return listSortedSessionBeginFiles.length > 1 ? getSessionIdFromSessionFile(listSortedSessionBeginFiles[1]) : null;
    }

    public static String getSessionIdFromSessionFile(File file) {
        return file.getName().substring(0, 35);
    }

    private File[] getTrimmedNonFatalFiles(String str, File[] fileArr, int i) {
        File[] fileArr2 = fileArr;
        if (fileArr.length > i) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(i)));
            trimSessionEventFiles(str, i);
            fileArr2 = listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        }
        return fileArr2;
    }

    private UserMetaData getUserMetaData(String str) {
        return isHandlingException() ? new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail()) : new MetaDataStore(getFilesDir()).readUserData(str);
    }

    private void gzip(byte[] bArr, File file) {
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        GZIPOutputStream gZIPOutputStream2;
        try {
            gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream = null;
        }
        try {
            gZIPOutputStream2.write(bArr);
            gZIPOutputStream2.finish();
            C1480i.m3498a(gZIPOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream = gZIPOutputStream2;
            C1480i.m3498a(gZIPOutputStream);
            throw th;
        }
    }

    private void gzipIfNotEmpty(byte[] bArr, File file) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        gzip(bArr, file);
    }

    private File[] listFiles(File file) {
        return ensureFileArrayNotNull(file.listFiles());
    }

    private File[] listFilesMatching(File file, FilenameFilter filenameFilter) {
        return ensureFileArrayNotNull(file.listFiles(filenameFilter));
    }

    private File[] listFilesMatching(FileFilter fileFilter) {
        return ensureFileArrayNotNull(getFilesDir().listFiles(fileFilter));
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

    private byte[] readFile(String str, String str2) {
        File filesDir = getFilesDir();
        return NativeFileUtils.readFile(new File(filesDir, str + str2));
    }

    private static void recordFatalExceptionAnswersEvent(String str, String str2) {
        Answers answers = (Answers) C1449c.m3587a(Answers.class);
        if (answers == null) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new AbstractC1483j.C1484a(str, str2));
        }
    }

    public void recordFatalFirebaseEvent(long j) {
        if (firebaseCrashExists()) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
        } else if (this.firebaseAnalyticsLogger == null) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
        } else {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Logging Crashlytics event to Firebase");
            Bundle bundle = new Bundle();
            bundle.putInt(FIREBASE_REALTIME, 1);
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", j);
            this.firebaseAnalyticsLogger.logEvent(FIREBASE_ANALYTICS_ORIGIN_CRASHLYTICS, "_ae", bundle);
        }
    }

    private static void recordLoggedExceptionAnswersEvent(String str, String str2) {
        Answers answers = (Answers) C1449c.m3587a(Answers.class);
        if (answers == null) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Answers is not available");
        } else {
            answers.onException(new AbstractC1483j.C1485b(str, str2));
        }
    }

    private void recursiveDelete(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    public void recursiveDelete(Set<File> set) {
        for (File file : set) {
            recursiveDelete(file);
        }
    }

    private void retainSessions(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            String name = file.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(name);
            if (!matcher.matches()) {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Deleting unknown file: " + name);
                file.delete();
            } else if (!set.contains(matcher.group(1))) {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Trimming session file: " + name);
                file.delete();
            }
        }
    }

    public void sendSessionReports(C1572t c1572t) {
        if (c1572t == null) {
            C1449c.m3572g().mo3548d(CrashlyticsCore.TAG, "Cannot send reports. Settings are unavailable.");
            return;
        }
        Context context = this.crashlyticsCore.getContext();
        ReportUploader reportUploader = new ReportUploader(this.appData.apiKey, getCreateReportSpiCall(c1572t.f4280a.f4234d, c1572t.f4280a.f4235e), this.reportFilesProvider, this.handlingExceptionCheck);
        for (File file : listCompleteSessionFiles()) {
            this.backgroundWorker.submit(new SendReportRunnable(context, new SessionReport(file, SEND_AT_CRASHTIME_HEADER), reportUploader));
        }
    }

    public boolean shouldPromptUserBeforeSendingCrashReports(C1572t c1572t) {
        if (c1572t == null) {
            return false;
        }
        boolean z = false;
        if (c1572t.f4283d.f4248a) {
            z = false;
            if (!this.preferenceManager.shouldAlwaysSendReports()) {
                z = true;
            }
        }
        return z;
    }

    private void synthesizeSessionFile(File file, String str, File[] fileArr, File file2) {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream;
        Throwable th;
        Exception e;
        ClsFileOutputStream clsFileOutputStream2;
        boolean z = file2 != null;
        File fatalSessionFilesDir = z ? getFatalSessionFilesDir() : getNonFatalSessionFilesDir();
        if (!fatalSessionFilesDir.exists()) {
            fatalSessionFilesDir.mkdirs();
        }
        CodedOutputStream codedOutputStream2 = null;
        try {
            ClsFileOutputStream clsFileOutputStream3 = new ClsFileOutputStream(fatalSessionFilesDir, str);
            codedOutputStream2 = null;
            codedOutputStream = null;
            clsFileOutputStream = clsFileOutputStream3;
            try {
                try {
                    CodedOutputStream newInstance = CodedOutputStream.newInstance(clsFileOutputStream3);
                    AbstractC1462k m3572g = C1449c.m3572g();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Collecting SessionStart data for session ID ");
                    sb.append(str);
                    m3572g.mo3552a(CrashlyticsCore.TAG, sb.toString());
                    writeToCosFromFile(newInstance, file);
                    newInstance.writeUInt64(4, new Date().getTime() / 1000);
                    newInstance.writeBool(5, z);
                    newInstance.writeUInt32(11, 1);
                    newInstance.writeEnum(12, 3);
                    writeInitialPartsTo(newInstance, str);
                    writeNonFatalEventsTo(newInstance, fileArr, str);
                    if (z) {
                        codedOutputStream2 = newInstance;
                        writeToCosFromFile(newInstance, file2);
                    }
                    C1480i.m3495a(newInstance, "Error flushing session file stream");
                    C1480i.m3497a((Closeable) clsFileOutputStream3, "Failed to close CLS file");
                } catch (Exception e2) {
                    e = e2;
                    clsFileOutputStream2 = clsFileOutputStream3;
                    AbstractC1462k m3572g2 = C1449c.m3572g();
                    CodedOutputStream codedOutputStream3 = codedOutputStream2;
                    CodedOutputStream codedOutputStream4 = codedOutputStream2;
                    StringBuilder sb2 = new StringBuilder();
                    CodedOutputStream codedOutputStream5 = codedOutputStream2;
                    sb2.append("Failed to write session file for session ID: ");
                    CodedOutputStream codedOutputStream6 = codedOutputStream2;
                    sb2.append(str);
                    codedOutputStream = codedOutputStream2;
                    clsFileOutputStream = clsFileOutputStream2;
                    m3572g2.mo3545e(CrashlyticsCore.TAG, sb2.toString(), e);
                    C1480i.m3495a(codedOutputStream2, "Error flushing session file stream");
                    closeWithoutRenamingOrLog(clsFileOutputStream2);
                }
            } catch (Throwable th2) {
                th = th2;
                C1480i.m3495a(codedOutputStream, "Error flushing session file stream");
                C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close CLS file");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            clsFileOutputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            codedOutputStream = null;
            clsFileOutputStream = null;
            C1480i.m3495a(codedOutputStream, "Error flushing session file stream");
            C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close CLS file");
            throw th;
        }
    }

    private void trimInvalidSessionFiles() {
        File invalidFilesDir = getInvalidFilesDir();
        if (!invalidFilesDir.exists()) {
            return;
        }
        File[] listFilesMatching = listFilesMatching(invalidFilesDir, new InvalidPartFileFilter());
        Arrays.sort(listFilesMatching, Collections.reverseOrder());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < listFilesMatching.length && hashSet.size() < 4; i++) {
            hashSet.add(getSessionIdFromSessionFile(listFilesMatching[i]));
        }
        retainSessions(listFiles(invalidFilesDir), hashSet);
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

    private void writeBeginSession(final String str, Date date) {
        final String format = String.format(Locale.US, GENERATOR_FORMAT, this.crashlyticsCore.getVersion());
        final long time = date.getTime() / 1000;
        writeSessionPartFile(str, SESSION_BEGIN_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.17
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeBeginSession(codedOutputStream, str, format, time);
            }
        });
        writeFile(str, "BeginSession.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.18
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.18.1
                    {
                        C122418.this = this;
                        put("session_id", str);
                        put("generator", format);
                        put("started_at_seconds", Long.valueOf(time));
                    }
                }).toString().getBytes());
            }
        });
    }

    public void writeFatal(Date date, Thread thread, Throwable th) {
        Throwable th2;
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStream;
        Exception e;
        String currentSessionId;
        CodedOutputStream codedOutputStream2 = null;
        ClsFileOutputStream clsFileOutputStream2 = null;
        CodedOutputStream codedOutputStream3 = null;
        try {
            try {
                currentSessionId = getCurrentSessionId();
            } catch (Throwable th3) {
                th2 = th3;
                C1480i.m3495a(codedOutputStream2, "Failed to flush to session begin file.");
                C1480i.m3497a((Closeable) clsFileOutputStream2, "Failed to close fatal exception file output stream.");
                throw th2;
            }
        } catch (Exception e2) {
            e = e2;
            clsFileOutputStream = null;
            codedOutputStream = null;
        } catch (Throwable th4) {
            th2 = th4;
            codedOutputStream2 = null;
            clsFileOutputStream2 = null;
            C1480i.m3495a(codedOutputStream2, "Failed to flush to session begin file.");
            C1480i.m3497a((Closeable) clsFileOutputStream2, "Failed to close fatal exception file output stream.");
            throw th2;
        }
        if (currentSessionId == null) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Tried to write a fatal exception while no session was open.", null);
            C1480i.m3495a((Flushable) null, "Failed to flush to session begin file.");
            C1480i.m3497a((Closeable) null, "Failed to close fatal exception file output stream.");
            return;
        }
        recordFatalExceptionAnswersEvent(currentSessionId, th.getClass().getName());
        ClsFileOutputStream clsFileOutputStream3 = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_FATAL_TAG);
        try {
            CodedOutputStream newInstance = CodedOutputStream.newInstance(clsFileOutputStream3);
            codedOutputStream3 = newInstance;
            codedOutputStream2 = newInstance;
            clsFileOutputStream2 = clsFileOutputStream3;
            writeSessionEvent(newInstance, date, thread, th, "crash", true);
            codedOutputStream = newInstance;
            clsFileOutputStream = clsFileOutputStream3;
        } catch (Exception e3) {
            e = e3;
            codedOutputStream = codedOutputStream3;
            clsFileOutputStream = clsFileOutputStream3;
            codedOutputStream2 = codedOutputStream;
            clsFileOutputStream2 = clsFileOutputStream;
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "An error occurred in the fatal exception logger", e);
            C1480i.m3495a(codedOutputStream, "Failed to flush to session begin file.");
            C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
        }
        C1480i.m3495a(codedOutputStream, "Failed to flush to session begin file.");
        C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close fatal exception file output stream.");
    }

    private void writeFile(String str, String str2, FileOutputStreamWriteAction fileOutputStreamWriteAction) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        try {
            fileOutputStream2 = new FileOutputStream(new File(getFilesDir(), str + str2));
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            fileOutputStreamWriteAction.writeTo(fileOutputStream2);
            C1480i.m3497a((Closeable) fileOutputStream2, "Failed to close " + str2 + " file.");
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = fileOutputStream2;
            C1480i.m3497a((Closeable) fileOutputStream, "Failed to close " + str2 + " file.");
            throw th;
        }
    }

    private void writeInitialPartsTo(CodedOutputStream codedOutputStream, String str) {
        String[] strArr;
        for (String str2 : INITIAL_SESSION_PART_TAGS) {
            File[] listFilesMatching = listFilesMatching(new FileNameContainsFilter(str + str2 + ClsFileOutputStream.SESSION_FILE_EXTENSION));
            if (listFilesMatching.length == 0) {
                C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Can't find " + str2 + " data for session ID " + str, null);
            } else {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Collecting " + str2 + " data for session ID " + str);
                writeToCosFromFile(codedOutputStream, listFilesMatching[0]);
            }
        }
    }

    private static void writeNonFatalEventsTo(CodedOutputStream codedOutputStream, File[] fileArr, String str) {
        Arrays.sort(fileArr, C1480i.f4059a);
        for (File file : fileArr) {
            try {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                writeToCosFromFile(codedOutputStream, file);
            } catch (Exception e) {
                C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Error writting non-fatal to session.", e);
            }
        }
    }

    private void writeSessionApp(String str) {
        final String m3440c = this.idManager.m3440c();
        final String str2 = this.appData.versionCode;
        final String str3 = this.appData.versionName;
        final String m3443b = this.idManager.m3443b();
        final int m3458a = EnumC1487l.m3457a(this.appData.installerPackageName).m3458a();
        writeSessionPartFile(str, SESSION_APP_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.19
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeSessionApp(codedOutputStream, m3440c, CrashlyticsController.this.appData.apiKey, str2, str3, m3443b, m3458a, CrashlyticsController.this.unityVersion);
            }
        });
        writeFile(str, "SessionApp.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.20
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.20.1
                    {
                        C122820.this = this;
                        put("app_identifier", m3440c);
                        put("api_key", CrashlyticsController.this.appData.apiKey);
                        put("version_code", str2);
                        put("version_name", str3);
                        put("install_uuid", m3443b);
                        put("delivery_mechanism", Integer.valueOf(m3458a));
                        put("unity_version", TextUtils.isEmpty(CrashlyticsController.this.unityVersion) ? "" : CrashlyticsController.this.unityVersion);
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionDevice(String str) {
        Context context = this.crashlyticsCore.getContext();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        final int m3507a = C1480i.m3507a();
        final int availableProcessors = Runtime.getRuntime().availableProcessors();
        final long m3484b = C1480i.m3484b();
        final long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        final boolean m3471f = C1480i.m3471f(context);
        final Map<C1494p.EnumC1495a, String> m3435h = this.idManager.m3435h();
        final int m3469h = C1480i.m3469h(context);
        writeSessionPartFile(str, SESSION_DEVICE_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.23
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeSessionDevice(codedOutputStream, m3507a, Build.MODEL, availableProcessors, m3484b, blockCount, m3471f, m3435h, m3469h, Build.MANUFACTURER, Build.PRODUCT);
            }
        });
        writeFile(str, "SessionDevice.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.24
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.24.1
                    {
                        C123424.this = this;
                        put("arch", Integer.valueOf(m3507a));
                        put("build_model", Build.MODEL);
                        put("available_processors", Integer.valueOf(availableProcessors));
                        put("total_ram", Long.valueOf(m3484b));
                        put("disk_space", Long.valueOf(blockCount));
                        put("is_emulator", Boolean.valueOf(m3471f));
                        put("ids", m3435h);
                        put("state", Integer.valueOf(m3469h));
                        put("build_manufacturer", Build.MANUFACTURER);
                        put("build_product", Build.PRODUCT);
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionEvent(CodedOutputStream codedOutputStream, Date date, Thread thread, Throwable th, String str, boolean z) {
        Thread[] threadArr;
        TreeMap treeMap;
        TrimmedThrowableData trimmedThrowableData = new TrimmedThrowableData(th, this.stackTraceTrimmingStrategy);
        Context context = this.crashlyticsCore.getContext();
        long time = date.getTime() / 1000;
        Float m3477c = C1480i.m3477c(context);
        int m3499a = C1480i.m3499a(context, this.devicePowerStateListener.isPowerConnected());
        boolean m3474d = C1480i.m3474d(context);
        int i = context.getResources().getConfiguration().orientation;
        long m3484b = C1480i.m3484b();
        long m3482b = C1480i.m3482b(context);
        long m3475c = C1480i.m3475c(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo m3490a = C1480i.m3490a(context.getPackageName(), context);
        LinkedList linkedList = new LinkedList();
        StackTraceElement[] stackTraceElementArr = trimmedThrowableData.stacktrace;
        String str2 = this.appData.buildId;
        String m3440c = this.idManager.m3440c();
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
        if (!C1480i.m3500a(context, COLLECT_CUSTOM_KEYS, true)) {
            treeMap = new TreeMap();
        } else {
            Map<String, String> attributes = this.crashlyticsCore.getAttributes();
            treeMap = attributes;
            if (attributes != null) {
                treeMap = attributes;
                if (attributes.size() > 1) {
                    treeMap = new TreeMap(attributes);
                }
            }
        }
        SessionProtobufHelper.writeSessionEvent(codedOutputStream, time, str, trimmedThrowableData, thread, stackTraceElementArr, threadArr, linkedList, treeMap, this.logFileManager, m3490a, i, m3440c, str2, m3477c, m3499a, m3474d, m3484b - m3482b, m3475c);
    }

    private void writeSessionOS(String str) {
        final boolean m3470g = C1480i.m3470g(this.crashlyticsCore.getContext());
        writeSessionPartFile(str, SESSION_OS_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.21
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeSessionOS(codedOutputStream, Build.VERSION.RELEASE, Build.VERSION.CODENAME, m3470g);
            }
        });
        writeFile(str, "SessionOS.json", new FileOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.22
            @Override // com.crashlytics.android.core.CrashlyticsController.FileOutputStreamWriteAction
            public void writeTo(FileOutputStream fileOutputStream) {
                fileOutputStream.write(new JSONObject(new HashMap<String, Object>() { // from class: com.crashlytics.android.core.CrashlyticsController.22.1
                    {
                        C123122.this = this;
                        put("version", Build.VERSION.RELEASE);
                        put("build_version", Build.VERSION.CODENAME);
                        put("is_rooted", Boolean.valueOf(m3470g));
                    }
                }).toString().getBytes());
            }
        });
    }

    private void writeSessionPartFile(String str, String str2, CodedOutputStreamWriteAction codedOutputStreamWriteAction) {
        ClsFileOutputStream clsFileOutputStream;
        Throwable th;
        ClsFileOutputStream clsFileOutputStream2;
        CodedOutputStream codedOutputStream;
        CodedOutputStream codedOutputStream2 = null;
        try {
            clsFileOutputStream2 = new ClsFileOutputStream(getFilesDir(), str + str2);
            codedOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            clsFileOutputStream = null;
        }
        try {
            CodedOutputStream newInstance = CodedOutputStream.newInstance(clsFileOutputStream2);
            codedOutputStream = newInstance;
            codedOutputStreamWriteAction.writeTo(newInstance);
            C1480i.m3495a(newInstance, "Failed to flush to session " + str2 + " file.");
            C1480i.m3497a((Closeable) clsFileOutputStream2, "Failed to close session " + str2 + " file.");
        } catch (Throwable th3) {
            codedOutputStream2 = codedOutputStream;
            clsFileOutputStream = clsFileOutputStream2;
            th = th3;
            C1480i.m3495a(codedOutputStream2, "Failed to flush to session " + str2 + " file.");
            C1480i.m3497a((Closeable) clsFileOutputStream, "Failed to close session " + str2 + " file.");
            throw th;
        }
    }

    private void writeSessionPartsToSessionFile(File file, String str, int i) {
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3552a(CrashlyticsCore.TAG, "Collecting session parts for ID " + str);
        File[] listFilesMatching = listFilesMatching(new FileNameContainsFilter(str + SESSION_FATAL_TAG));
        boolean z = listFilesMatching != null && listFilesMatching.length > 0;
        C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has fatal exception: %s", str, Boolean.valueOf(z)));
        File[] listFilesMatching2 = listFilesMatching(new FileNameContainsFilter(str + SESSION_NON_FATAL_TAG));
        boolean z2 = listFilesMatching2 != null && listFilesMatching2.length > 0;
        C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has non-fatal exceptions: %s", str, Boolean.valueOf(z2)));
        if (z || z2) {
            synthesizeSessionFile(file, str, getTrimmedNonFatalFiles(str, listFilesMatching2, i), z ? listFilesMatching[0] : null);
        } else {
            AbstractC1462k m3572g2 = C1449c.m3572g();
            m3572g2.mo3552a(CrashlyticsCore.TAG, "No events present for session ID " + str);
        }
        AbstractC1462k m3572g3 = C1449c.m3572g();
        m3572g3.mo3552a(CrashlyticsCore.TAG, "Removing session part files for ID " + str);
        deleteSessionPartFilesFor(str);
    }

    private void writeSessionUser(String str) {
        final UserMetaData userMetaData = getUserMetaData(str);
        writeSessionPartFile(str, SESSION_USER_TAG, new CodedOutputStreamWriteAction() { // from class: com.crashlytics.android.core.CrashlyticsController.25
            @Override // com.crashlytics.android.core.CrashlyticsController.CodedOutputStreamWriteAction
            public void writeTo(CodedOutputStream codedOutputStream) {
                SessionProtobufHelper.writeSessionUser(codedOutputStream, userMetaData.f3834id, userMetaData.name, userMetaData.email);
            }
        });
    }

    private static void writeToCosFromFile(CodedOutputStream codedOutputStream, File file) {
        Throwable th;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        if (!file.exists()) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
            return;
        }
        try {
            fileInputStream2 = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            copyToCodedOutputStream(fileInputStream2, codedOutputStream, (int) file.length());
            C1480i.m3497a((Closeable) fileInputStream2, "Failed to close file input stream.");
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = fileInputStream2;
            C1480i.m3497a((Closeable) fileInputStream, "Failed to close file input stream.");
            throw th;
        }
    }

    public void cacheKeyData(final Map<String, String> map) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.11
            @Override // java.util.concurrent.Callable
            public Void call() {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeKeyData(CrashlyticsController.this.getCurrentSessionId(), map);
                return null;
            }
        });
    }

    public void cacheUserData(final String str, final String str2, final String str3) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.10
            @Override // java.util.concurrent.Callable
            public Void call() {
                new MetaDataStore(CrashlyticsController.this.getFilesDir()).writeUserData(CrashlyticsController.this.getCurrentSessionId(), new UserMetaData(str, str2, str3));
                return null;
            }
        });
    }

    public void cleanInvalidTempFiles() {
        this.backgroundWorker.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.14
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsController crashlyticsController = CrashlyticsController.this;
                crashlyticsController.doCleanInvalidTempFiles(crashlyticsController.listFilesMatching(new InvalidPartFileFilter()));
            }
        });
    }

    void doCleanInvalidTempFiles(File[] fileArr) {
        File[] listFilesMatching;
        final HashSet hashSet = new HashSet();
        for (File file : fileArr) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Found invalid session part file: " + file);
            hashSet.add(getSessionIdFromSessionFile(file));
        }
        if (hashSet.isEmpty()) {
            return;
        }
        File invalidFilesDir = getInvalidFilesDir();
        if (!invalidFilesDir.exists()) {
            invalidFilesDir.mkdir();
        }
        for (File file2 : listFilesMatching(new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsController.15
            @Override // java.io.FilenameFilter
            public boolean accept(File file3, String str) {
                if (str.length() < 35) {
                    return false;
                }
                return hashSet.contains(str.substring(0, 35));
            }
        })) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Moving session file: " + file2);
            if (!file2.renameTo(new File(invalidFilesDir, file2.getName()))) {
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Could not move session file. Deleting " + file2);
                file2.delete();
            }
        }
        trimInvalidSessionFiles();
    }

    void doCloseSessions(C1566p c1566p) {
        doCloseSessions(c1566p, false);
    }

    public void enableExceptionHandling(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, boolean z) {
        openSession();
        this.crashHandler = new CrashlyticsUncaughtExceptionHandler(new CrashlyticsUncaughtExceptionHandler.CrashListener() { // from class: com.crashlytics.android.core.CrashlyticsController.6
            @Override // com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.CrashListener
            public void onUncaughtException(CrashlyticsUncaughtExceptionHandler.SettingsDataProvider settingsDataProvider, Thread thread, Throwable th, boolean z2) {
                CrashlyticsController.this.handleUncaughtException(settingsDataProvider, thread, th, z2);
            }
        }, new DefaultSettingsDataProvider(), z, uncaughtExceptionHandler);
        Thread.setDefaultUncaughtExceptionHandler(this.crashHandler);
    }

    public boolean finalizeNativeReport(final CrashlyticsNdkData crashlyticsNdkData) {
        if (crashlyticsNdkData == null) {
            return true;
        }
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsController.16
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                File first;
                TreeSet<File> treeSet = crashlyticsNdkData.timestampedDirectories;
                String previousSessionId = CrashlyticsController.this.getPreviousSessionId();
                if (previousSessionId != null && !treeSet.isEmpty() && (first = treeSet.first()) != null) {
                    CrashlyticsController crashlyticsController = CrashlyticsController.this;
                    crashlyticsController.finalizeMostRecentNativeCrash(crashlyticsController.crashlyticsCore.getContext(), first, previousSessionId);
                }
                CrashlyticsController.this.recursiveDelete(treeSet);
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    public boolean finalizeSessions(final C1566p c1566p) {
        return ((Boolean) this.backgroundWorker.submitAndWait(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsController.13
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                if (CrashlyticsController.this.isHandlingException()) {
                    C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Finalizing previously open sessions.");
                CrashlyticsController.this.doCloseSessions(c1566p, true);
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    File getFatalSessionFilesDir() {
        return new File(getFilesDir(), FATAL_SESSION_DIR);
    }

    File getFilesDir() {
        return this.fileStore.mo3339a();
    }

    File getInvalidFilesDir() {
        return new File(getFilesDir(), INVALID_CLS_CACHE_DIR);
    }

    File getNonFatalSessionFilesDir() {
        return new File(getFilesDir(), NONFATAL_SESSION_DIR);
    }

    void handleUncaughtException(final CrashlyticsUncaughtExceptionHandler.SettingsDataProvider settingsDataProvider, final Thread thread, final Throwable th, final boolean z) {
        synchronized (this) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3552a(CrashlyticsCore.TAG, "Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            this.devicePowerStateListener.dispose();
            final Date date = new Date();
            this.backgroundWorker.submitAndWait(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.7
                @Override // java.util.concurrent.Callable
                public Void call() {
                    C1563m c1563m;
                    C1566p c1566p;
                    CrashlyticsController.this.crashlyticsCore.createCrashMarker();
                    CrashlyticsController.this.writeFatal(date, thread, th);
                    C1572t settingsData = settingsDataProvider.getSettingsData();
                    if (settingsData != null) {
                        c1566p = settingsData.f4281b;
                        c1563m = settingsData.f4283d;
                    } else {
                        c1566p = null;
                        c1563m = null;
                    }
                    if ((c1563m == null || c1563m.f4252e) || z) {
                        CrashlyticsController.this.recordFatalFirebaseEvent(date.getTime());
                    }
                    CrashlyticsController.this.doCloseSessions(c1566p);
                    CrashlyticsController.this.doOpenSession();
                    if (c1566p != null) {
                        CrashlyticsController.this.trimSessionFiles(c1566p.f4270g);
                    }
                    if (!CrashlyticsController.this.shouldPromptUserBeforeSendingCrashReports(settingsData)) {
                        CrashlyticsController.this.sendSessionReports(settingsData);
                        return null;
                    }
                    return null;
                }
            });
        }
    }

    boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    boolean isHandlingException() {
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = this.crashHandler;
        return crashlyticsUncaughtExceptionHandler != null && crashlyticsUncaughtExceptionHandler.isHandlingException();
    }

    File[] listCompleteSessionFiles() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, listFilesMatching(getFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getNonFatalSessionFilesDir(), SESSION_FILE_FILTER));
        Collections.addAll(linkedList, listFilesMatching(getFilesDir(), SESSION_FILE_FILTER));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    File[] listNativeSessionFileDirectories() {
        return listFilesMatching(SESSION_DIRECTORY_FILTER);
    }

    File[] listSessionBeginFiles() {
        return listFilesMatching(SESSION_BEGIN_FILE_FILTER);
    }

    void openSession() {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.12
            @Override // java.util.concurrent.Callable
            public Void call() {
                CrashlyticsController.this.doOpenSession();
                return null;
            }
        });
    }

    public void registerAnalyticsEventListener(C1572t c1572t) {
        if (!c1572t.f4283d.f4252e || !this.appMeasurementEventListenerRegistrar.register()) {
            return;
        }
        C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Registered Firebase Analytics event listener");
    }

    public void registerDevicePowerStateListener() {
        this.devicePowerStateListener.initialize();
    }

    public void submitAllReports(float f, C1572t c1572t) {
        if (c1572t == null) {
            C1449c.m3572g().mo3548d(CrashlyticsCore.TAG, "Could not send reports. Settings are not available.");
            return;
        }
        new ReportUploader(this.appData.apiKey, getCreateReportSpiCall(c1572t.f4280a.f4234d, c1572t.f4280a.f4235e), this.reportFilesProvider, this.handlingExceptionCheck).uploadReports(f, shouldPromptUserBeforeSendingCrashReports(c1572t) ? new PrivacyDialogCheck(this.crashlyticsCore, this.preferenceManager, c1572t.f4282c) : new ReportUploader.AlwaysSendCheck());
    }

    void trimSessionFiles(int i) {
        int capFileCount = i - Utils.capFileCount(getFatalSessionFilesDir(), i, SMALLEST_FILE_NAME_FIRST);
        Utils.capFileCount(getFilesDir(), SESSION_FILE_FILTER, capFileCount - Utils.capFileCount(getNonFatalSessionFilesDir(), capFileCount, SMALLEST_FILE_NAME_FIRST), SMALLEST_FILE_NAME_FIRST);
    }

    public void writeNonFatalException(final Thread thread, final Throwable th) {
        final Date date = new Date();
        this.backgroundWorker.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsController.9
            @Override // java.lang.Runnable
            public void run() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.doWriteNonFatal(date, thread, th);
                }
            }
        });
    }

    public void writeToLog(final long j, final String str) {
        this.backgroundWorker.submit(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsController.8
            @Override // java.util.concurrent.Callable
            public Void call() {
                if (!CrashlyticsController.this.isHandlingException()) {
                    CrashlyticsController.this.logFileManager.writeToLog(j, str);
                    return null;
                }
                return null;
            }
        });
    }
}
