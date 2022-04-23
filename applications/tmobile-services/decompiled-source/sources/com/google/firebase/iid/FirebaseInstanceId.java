package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.RequestDeduplicator;
import com.google.firebase.iid.Store;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.messaging.Constants;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import javax.annotation.Nonnull;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId.class */
public class FirebaseInstanceId {
    private static Store store;
    @VisibleForTesting
    @GuardedBy
    static ScheduledExecutorService syncExecutor;
    private final FirebaseApp app;
    private final AutoInit autoInit;
    @VisibleForTesting
    final Executor fileIoExecutor;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final Metadata metadata;
    private final RequestDeduplicator requestDeduplicator;
    private final GmsRpc rpc;
    @GuardedBy
    private boolean syncScheduledOrRunning;
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);
    private static final Pattern API_KEY_FORMAT = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId$AutoInit.class */
    public class AutoInit {
        @Nullable
        @GuardedBy
        private EventHandler<DataCollectionDefaultChange> dataCollectionDefaultChangeEventHandler;
        @Nullable
        @GuardedBy
        private Boolean fcmAutoInitEnabled;
        @GuardedBy
        private boolean initialized;
        private boolean isFcmLibraryPresent;
        private final Subscriber subscriber;

        AutoInit(Subscriber subscriber) {
            this.subscriber = subscriber;
        }

        private boolean isFcmPresent() {
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
                return true;
            } catch (ClassNotFoundException e) {
                Context applicationContext = FirebaseInstanceId.this.app.getApplicationContext();
                Intent intent = new Intent(ServiceStarter.ACTION_MESSAGING_EVENT);
                intent.setPackage(applicationContext.getPackageName());
                ResolveInfo resolveService = applicationContext.getPackageManager().resolveService(intent, 0);
                return (resolveService == null || resolveService.serviceInfo == null) ? false : true;
            }
        }

        @Nullable
        private Boolean readEnabled() {
            ApplicationInfo applicationInfo;
            Context applicationContext = FirebaseInstanceId.this.app.getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        void initialize() {
            synchronized (this) {
                if (!this.initialized) {
                    this.isFcmLibraryPresent = isFcmPresent();
                    Boolean readEnabled = readEnabled();
                    this.fcmAutoInitEnabled = readEnabled;
                    if (readEnabled == null && this.isFcmLibraryPresent) {
                        EventHandler<DataCollectionDefaultChange> firebaseInstanceId$AutoInit$$Lambda$0 = new EventHandler(this) { // from class: com.google.firebase.iid.FirebaseInstanceId$AutoInit$$Lambda$0
                            private final FirebaseInstanceId.AutoInit arg$1;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.arg$1 = this;
                            }

                            @Override // com.google.firebase.events.EventHandler
                            public final void handle(Event event) {
                                this.arg$1.lambda$initialize$0$FirebaseInstanceId$AutoInit(event);
                            }
                        };
                        this.dataCollectionDefaultChangeEventHandler = firebaseInstanceId$AutoInit$$Lambda$0;
                        this.subscriber.subscribe(DataCollectionDefaultChange.class, firebaseInstanceId$AutoInit$$Lambda$0);
                    }
                    this.initialized = true;
                }
            }
        }

        boolean isEnabled() {
            synchronized (this) {
                initialize();
                if (this.fcmAutoInitEnabled == null) {
                    return this.isFcmLibraryPresent && FirebaseInstanceId.this.app.isDataCollectionDefaultEnabled();
                }
                return this.fcmAutoInitEnabled.booleanValue();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$initialize$0$FirebaseInstanceId$AutoInit(Event event) {
            synchronized (this) {
                if (isEnabled()) {
                    FirebaseInstanceId.this.startSyncIfNecessary();
                }
            }
        }

        void setEnabled(boolean z) {
            synchronized (this) {
                initialize();
                if (this.dataCollectionDefaultChangeEventHandler != null) {
                    this.subscriber.unsubscribe(DataCollectionDefaultChange.class, this.dataCollectionDefaultChangeEventHandler);
                    this.dataCollectionDefaultChangeEventHandler = null;
                }
                SharedPreferences.Editor edit = FirebaseInstanceId.this.app.getApplicationContext().getSharedPreferences("com.google.firebase.messaging", 0).edit();
                edit.putBoolean("auto_init", z);
                edit.apply();
                if (z) {
                    FirebaseInstanceId.this.startSyncIfNecessary();
                }
                this.fcmAutoInitEnabled = Boolean.valueOf(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseInstanceId(FirebaseApp firebaseApp, Subscriber subscriber, UserAgentPublisher userAgentPublisher, HeartBeatInfo heartBeatInfo, FirebaseInstallationsApi firebaseInstallationsApi) {
        this(firebaseApp, new Metadata(firebaseApp.getApplicationContext()), FirebaseIidExecutors.newCachedSingleThreadExecutor(), FirebaseIidExecutors.newCachedSingleThreadExecutor(), subscriber, userAgentPublisher, heartBeatInfo, firebaseInstallationsApi);
    }

    FirebaseInstanceId(FirebaseApp firebaseApp, Metadata metadata, Executor executor, Executor executor2, Subscriber subscriber, UserAgentPublisher userAgentPublisher, HeartBeatInfo heartBeatInfo, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.syncScheduledOrRunning = false;
        if (Metadata.getDefaultSenderId(firebaseApp) != null) {
            synchronized (FirebaseInstanceId.class) {
                try {
                    if (store == null) {
                        store = new Store(firebaseApp.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.app = firebaseApp;
            this.metadata = metadata;
            this.rpc = new GmsRpc(firebaseApp, metadata, userAgentPublisher, heartBeatInfo, firebaseInstallationsApi);
            this.fileIoExecutor = executor2;
            this.autoInit = new AutoInit(subscriber);
            this.requestDeduplicator = new RequestDeduplicator(executor);
            this.firebaseInstallations = firebaseInstallationsApi;
            executor2.execute(new Runnable(this) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$0
                private final FirebaseInstanceId arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.arg$1.lambda$new$0$FirebaseInstanceId();
                }
            });
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    private <T> T awaitTask(Task<T> task) throws IOException {
        try {
            return (T) Tasks.m10823b(task, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException(GmsRpc.ERROR_SERVICE_NOT_AVAILABLE);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    resetStorageAndScheduleSync();
                }
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e2);
            }
        }
    }

    private static <T> T awaitTaskAllowOnMainThread(@NonNull Task<T> task) throws InterruptedException {
        Preconditions.m14522l(task, "Task must not be null");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        task.mo10793c(FirebaseInstanceId$$Lambda$2.$instance, new OnCompleteListener(countDownLatch) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$3
            private final CountDownLatch arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = countDownLatch;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                this.arg$1.countDown();
            }
        });
        countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
        return (T) getResultOrThrowException(task);
    }

    private static void checkRequiredFirebaseOptions(@NonNull FirebaseApp firebaseApp) {
        Preconditions.m14526h(firebaseApp.getOptions().getProjectId(), "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google.");
        Preconditions.m14526h(firebaseApp.getOptions().getApplicationId(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.");
        Preconditions.m14526h(firebaseApp.getOptions().getApiKey(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.");
        Preconditions.m14532b(isValidAppIdFormat(firebaseApp.getOptions().getApplicationId()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.m14532b(isValidApiKeyFormat(firebaseApp.getOptions().getApiKey()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @VisibleForTesting
    @KeepForSdk
    public static void clearInstancesForTest() {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (syncExecutor != null) {
                    syncExecutor.shutdownNow();
                }
                syncExecutor = null;
                store = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @NonNull
    @Keep
    public static FirebaseInstanceId getInstance(@NonNull FirebaseApp firebaseApp) {
        checkRequiredFirebaseOptions(firebaseApp);
        FirebaseInstanceId firebaseInstanceId = (FirebaseInstanceId) firebaseApp.get(FirebaseInstanceId.class);
        Preconditions.m14522l(firebaseInstanceId, "Firebase Instance ID component is not present");
        return firebaseInstanceId;
    }

    private Task<InstanceIdResult> getInstanceId(final String str, String str2) {
        final String rationaliseScope = rationaliseScope(str2);
        return Tasks.m10820e(null).mo10788h(this.fileIoExecutor, new Continuation(this, str, rationaliseScope) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$1
            private final FirebaseInstanceId arg$1;
            private final String arg$2;
            private final String arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = str;
                this.arg$3 = rationaliseScope;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.arg$1.lambda$getInstanceId$3$FirebaseInstanceId(this.arg$2, this.arg$3, task);
            }
        });
    }

    private static <T> T getResultOrThrowException(@NonNull Task<T> task) {
        if (task.mo10782n()) {
            return task.mo10786j();
        }
        if (task.mo10784l()) {
            throw new CancellationException("Task is already canceled");
        } else if (task.mo10783m()) {
            throw new IllegalStateException(task.mo10787i());
        } else {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    private String getSubtype() {
        return FirebaseApp.DEFAULT_APP_NAME.equals(this.app.getName()) ? "" : this.app.getPersistenceKey();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isDebugLogEnabled() {
        if (!Log.isLoggable("FirebaseInstanceId", 3)) {
            return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
        }
        return true;
    }

    static boolean isValidApiKeyFormat(@Nonnull String str) {
        return API_KEY_FORMAT.matcher(str).matches();
    }

    static boolean isValidAppIdFormat(@Nonnull String str) {
        return str.contains(":");
    }

    private static String rationaliseScope(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase(Constants.ScionAnalytics.ORIGIN_FCM) || str.equalsIgnoreCase(Constants.MessageTypes.MESSAGE)) ? "*" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSyncIfNecessary() {
        if (tokenNeedsRefresh(getTokenWithoutTriggeringSync())) {
            startSync();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String blockingGetMasterToken() throws IOException {
        return getToken(Metadata.getDefaultSenderId(this.app), "*");
    }

    @WorkerThread
    public void deleteInstanceId() throws IOException {
        checkRequiredFirebaseOptions(this.app);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            awaitTask(this.firebaseInstallations.delete());
            resetStorageAndScheduleSync();
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    @WorkerThread
    public void deleteToken(@NonNull String str, @NonNull String str2) throws IOException {
        checkRequiredFirebaseOptions(this.app);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            String rationaliseScope = rationaliseScope(str2);
            awaitTask(this.rpc.deleteToken(getIdWithoutTriggeringSync(), str, rationaliseScope));
            store.deleteToken(getSubtype(), str, rationaliseScope);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enqueueTaskWithDelaySeconds(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (syncExecutor == null) {
                    syncExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("FirebaseInstanceId"));
                }
                syncExecutor.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseApp getApp() {
        return this.app;
    }

    public long getCreationTime() {
        return store.getCreationTime(this.app.getPersistenceKey());
    }

    @NonNull
    @WorkerThread
    public String getId() {
        checkRequiredFirebaseOptions(this.app);
        startSyncIfNecessary();
        return getIdWithoutTriggeringSync();
    }

    String getIdWithoutTriggeringSync() {
        try {
            store.setCreationTime(this.app.getPersistenceKey());
            return (String) awaitTaskAllowOnMainThread(this.firebaseInstallations.getId());
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        }
    }

    @NonNull
    public Task<InstanceIdResult> getInstanceId() {
        checkRequiredFirebaseOptions(this.app);
        return getInstanceId(Metadata.getDefaultSenderId(this.app), "*");
    }

    @Nullable
    @Deprecated
    public String getToken() {
        checkRequiredFirebaseOptions(this.app);
        Store.Token tokenWithoutTriggeringSync = getTokenWithoutTriggeringSync();
        if (tokenNeedsRefresh(tokenWithoutTriggeringSync)) {
            startSync();
        }
        return Store.Token.getTokenOrNull(tokenWithoutTriggeringSync);
    }

    @Nullable
    @WorkerThread
    public String getToken(@NonNull String str, @NonNull String str2) throws IOException {
        checkRequiredFirebaseOptions(this.app);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((InstanceIdResult) awaitTask(getInstanceId(str, str2))).getToken();
        }
        throw new IOException("MAIN_THREAD");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Store.Token getTokenWithoutTriggeringSync() {
        return getTokenWithoutTriggeringSync(Metadata.getDefaultSenderId(this.app), "*");
    }

    @Nullable
    @VisibleForTesting
    Store.Token getTokenWithoutTriggeringSync(String str, String str2) {
        return store.getToken(getSubtype(), str, str2);
    }

    @VisibleForTesting
    @KeepForSdk
    public boolean isFcmAutoInitEnabled() {
        return this.autoInit.isEnabled();
    }

    @VisibleForTesting
    public boolean isGmsCorePresent() {
        return this.metadata.isGmscorePresent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task lambda$getInstanceId$1$FirebaseInstanceId(String str, String str2, String str3, String str4) throws Exception {
        store.saveToken(getSubtype(), str, str2, str4, this.metadata.getAppVersionCode());
        return Tasks.m10820e(new InstanceIdResultImpl(str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task lambda$getInstanceId$2$FirebaseInstanceId(final String str, final String str2, final String str3) {
        return this.rpc.getToken(str, str2, str3).mo10780p(this.fileIoExecutor, new SuccessContinuation(this, str2, str3, str) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$5
            private final FirebaseInstanceId arg$1;
            private final String arg$2;
            private final String arg$3;
            private final String arg$4;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = str2;
                this.arg$3 = str3;
                this.arg$4 = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.arg$1.lambda$getInstanceId$1$FirebaseInstanceId(this.arg$2, this.arg$3, this.arg$4, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task lambda$getInstanceId$3$FirebaseInstanceId(final String str, final String str2, Task task) throws Exception {
        final String idWithoutTriggeringSync = getIdWithoutTriggeringSync();
        Store.Token tokenWithoutTriggeringSync = getTokenWithoutTriggeringSync(str, str2);
        return !tokenNeedsRefresh(tokenWithoutTriggeringSync) ? Tasks.m10820e(new InstanceIdResultImpl(idWithoutTriggeringSync, tokenWithoutTriggeringSync.token)) : this.requestDeduplicator.getOrStartGetTokenRequest(str, str2, new RequestDeduplicator.GetTokenRequest(this, idWithoutTriggeringSync, str, str2) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$4
            private final FirebaseInstanceId arg$1;
            private final String arg$2;
            private final String arg$3;
            private final String arg$4;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = idWithoutTriggeringSync;
                this.arg$3 = str;
                this.arg$4 = str2;
            }

            @Override // com.google.firebase.iid.RequestDeduplicator.GetTokenRequest
            public final Task start() {
                return this.arg$1.lambda$getInstanceId$2$FirebaseInstanceId(this.arg$2, this.arg$3, this.arg$4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$0$FirebaseInstanceId() {
        if (isFcmAutoInitEnabled()) {
            startSyncIfNecessary();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetStorageAndScheduleSync() {
        synchronized (this) {
            store.deleteAll();
            if (isFcmAutoInitEnabled()) {
                startSync();
            }
        }
    }

    @VisibleForTesting
    @KeepForSdk
    public void setFcmAutoInitEnabled(boolean z) {
        this.autoInit.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSyncScheduledOrRunning(boolean z) {
        synchronized (this) {
            this.syncScheduledOrRunning = z;
        }
    }

    void startSync() {
        synchronized (this) {
            if (!this.syncScheduledOrRunning) {
                syncWithDelaySecondsInternal(0L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void syncWithDelaySecondsInternal(long j) {
        synchronized (this) {
            enqueueTaskWithDelaySeconds(new SyncTask(this, Math.min(Math.max(30L, j << 1), MAX_DELAY_SEC)), j);
            this.syncScheduledOrRunning = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean tokenNeedsRefresh(@Nullable Store.Token token) {
        return token == null || token.needsRefresh(this.metadata.getAppVersionCode());
    }
}
