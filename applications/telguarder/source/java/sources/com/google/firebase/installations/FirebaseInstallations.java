package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;
import com.google.firebase.installations.local.IidStore;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/FirebaseInstallations.class */
public class FirebaseInstallations implements FirebaseInstallationsApi {
    private static final String API_KEY_VALIDATION_MSG = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.";
    private static final String APP_ID_VALIDATION_MSG = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";
    private static final String AUTH_ERROR_MSG = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request.";
    private static final String CHIME_FIREBASE_APP_NAME = "CHIME_ANDROID_SDK";
    private static final int CORE_POOL_SIZE = 0;
    private static final long KEEP_ALIVE_TIME_IN_SECONDS = 30;
    private static final String LOCKFILE_NAME_GENERATE_FID = "generatefid.lock";
    private static final int MAXIMUM_POOL_SIZE = 1;
    private static final String PROJECT_ID_VALIDATION_MSG = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";
    private final ExecutorService backgroundExecutor;
    private String cachedFid;
    private final RandomFidGenerator fidGenerator;
    private Set<FidListener> fidListeners;
    private final FirebaseApp firebaseApp;
    private final IidStore iidStore;
    private final List<StateListener> listeners;
    private final Object lock;
    private final ExecutorService networkExecutor;
    private final PersistedInstallation persistedInstallation;
    private final FirebaseInstallationServiceClient serviceClient;
    private final Utils utils;
    private static final Object lockGenerateFid = new Object();
    private static final ThreadFactory THREAD_FACTORY = new ThreadFactory() { // from class: com.google.firebase.installations.FirebaseInstallations.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.mCount.getAndIncrement())));
        }
    };

    /* renamed from: com.google.firebase.installations.FirebaseInstallations$3 */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/FirebaseInstallations$3.class */
    public static /* synthetic */ class C16113 {

        /* renamed from: $SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode */
        static final /* synthetic */ int[] f169xc38d2559;

        /* renamed from: $SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode */
        static final /* synthetic */ int[] f170xe5baa01a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f170xe5baa01a = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f170xe5baa01a[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f170xe5baa01a[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f169xc38d2559 = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f169xc38d2559[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public FirebaseInstallations(FirebaseApp firebaseApp, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2) {
        this(new ThreadPoolExecutor(0, 1, (long) KEEP_ALIVE_TIME_IN_SECONDS, TimeUnit.SECONDS, new LinkedBlockingQueue(), THREAD_FACTORY), firebaseApp, new FirebaseInstallationServiceClient(firebaseApp.getApplicationContext(), provider, provider2), new PersistedInstallation(firebaseApp), Utils.getInstance(), new IidStore(firebaseApp), new RandomFidGenerator());
    }

    FirebaseInstallations(ExecutorService executorService, FirebaseApp firebaseApp, FirebaseInstallationServiceClient firebaseInstallationServiceClient, PersistedInstallation persistedInstallation, Utils utils, IidStore iidStore, RandomFidGenerator randomFidGenerator) {
        this.lock = new Object();
        this.fidListeners = new HashSet();
        this.listeners = new ArrayList();
        this.firebaseApp = firebaseApp;
        this.serviceClient = firebaseInstallationServiceClient;
        this.persistedInstallation = persistedInstallation;
        this.utils = utils;
        this.iidStore = iidStore;
        this.fidGenerator = randomFidGenerator;
        this.backgroundExecutor = executorService;
        this.networkExecutor = new ThreadPoolExecutor(0, 1, (long) KEEP_ALIVE_TIME_IN_SECONDS, TimeUnit.SECONDS, new LinkedBlockingQueue(), THREAD_FACTORY);
    }

    public static /* synthetic */ Void access$lambda$0(FirebaseInstallations firebaseInstallations) {
        return firebaseInstallations.deleteFirebaseInstallationId();
    }

    private Task<InstallationTokenResult> addGetAuthTokenListener() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        addStateListeners(new GetAuthTokenListener(this.utils, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private Task<String> addGetIdListener() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        addStateListeners(new GetIdListener(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private void addStateListeners(StateListener stateListener) {
        synchronized (this.lock) {
            this.listeners.add(stateListener);
        }
    }

    private Void deleteFirebaseInstallationId() throws FirebaseInstallationsException {
        updateCacheFid(null);
        PersistedInstallationEntry multiProcessSafePrefs = getMultiProcessSafePrefs();
        if (multiProcessSafePrefs.isRegistered()) {
            this.serviceClient.deleteFirebaseInstallation(getApiKey(), multiProcessSafePrefs.getFirebaseInstallationId(), getProjectIdentifier(), multiProcessSafePrefs.getRefreshToken());
        }
        insertOrUpdatePrefs(multiProcessSafePrefs.withNoGeneratedFid());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doNetworkCallIfNecessary(boolean r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.firebase.installations.local.PersistedInstallationEntry r0 = r0.getMultiProcessSafePrefs()
            r7 = r0
            r0 = r7
            boolean r0 = r0.isErrored()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            if (r0 != 0) goto L32
            r0 = r7
            boolean r0 = r0.isUnregistered()     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            if (r0 == 0) goto L16
            goto L32
        L16:
            r0 = r6
            if (r0 != 0) goto L29
            r0 = r5
            com.google.firebase.installations.Utils r0 = r0.utils     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            r1 = r7
            boolean r0 = r0.isAuthTokenExpired(r1)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            if (r0 == 0) goto L28
            goto L29
        L28:
            return
        L29:
            r0 = r5
            r1 = r7
            com.google.firebase.installations.local.PersistedInstallationEntry r0 = r0.fetchAuthTokenFromServer(r1)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            r8 = r0
            goto L38
        L32:
            r0 = r5
            r1 = r7
            com.google.firebase.installations.local.PersistedInstallationEntry r0 = r0.registerFidWithServer(r1)     // Catch: com.google.firebase.installations.FirebaseInstallationsException -> L87
            r8 = r0
        L38:
            r0 = r5
            r1 = r8
            r0.insertOrUpdatePrefs(r1)
            r0 = r5
            r1 = r7
            r2 = r8
            r0.updateFidListener(r1, r2)
            r0 = r8
            boolean r0 = r0.isRegistered()
            if (r0 == 0) goto L52
            r0 = r5
            r1 = r8
            java.lang.String r1 = r1.getFirebaseInstallationId()
            r0.updateCacheFid(r1)
        L52:
            r0 = r8
            boolean r0 = r0.isErrored()
            if (r0 == 0) goto L6a
            r0 = r5
            com.google.firebase.installations.FirebaseInstallationsException r1 = new com.google.firebase.installations.FirebaseInstallationsException
            r2 = r1
            com.google.firebase.installations.FirebaseInstallationsException$Status r3 = com.google.firebase.installations.FirebaseInstallationsException.Status.BAD_CONFIG
            r2.<init>(r3)
            r0.triggerOnException(r1)
            goto L86
        L6a:
            r0 = r8
            boolean r0 = r0.isNotGenerated()
            if (r0 == 0) goto L81
            r0 = r5
            java.io.IOException r1 = new java.io.IOException
            r2 = r1
            java.lang.String r3 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r2.<init>(r3)
            r0.triggerOnException(r1)
            goto L86
        L81:
            r0 = r5
            r1 = r8
            r0.triggerOnStateReached(r1)
        L86:
            return
        L87:
            r8 = move-exception
            r0 = r5
            r1 = r8
            r0.triggerOnException(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.FirebaseInstallations.doNetworkCallIfNecessary(boolean):void");
    }

    public final void doRegistrationOrRefresh(boolean z) {
        PersistedInstallationEntry prefsWithGeneratedIdMultiProcessSafe = getPrefsWithGeneratedIdMultiProcessSafe();
        PersistedInstallationEntry persistedInstallationEntry = prefsWithGeneratedIdMultiProcessSafe;
        if (z) {
            persistedInstallationEntry = prefsWithGeneratedIdMultiProcessSafe.withClearedAuthToken();
        }
        triggerOnStateReached(persistedInstallationEntry);
        this.networkExecutor.execute(FirebaseInstallations$$Lambda$4.lambdaFactory$(this, z));
    }

    private PersistedInstallationEntry fetchAuthTokenFromServer(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        TokenResult generateAuthToken = this.serviceClient.generateAuthToken(getApiKey(), persistedInstallationEntry.getFirebaseInstallationId(), getProjectIdentifier(), persistedInstallationEntry.getRefreshToken());
        int i = C16113.f170xe5baa01a[generateAuthToken.getResponseCode().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return persistedInstallationEntry.withFisError("BAD CONFIG");
            }
            if (i != 3) {
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
            }
            updateCacheFid(null);
            return persistedInstallationEntry.withNoGeneratedFid();
        }
        return persistedInstallationEntry.withAuthToken(generateAuthToken.getToken(), generateAuthToken.getTokenExpirationTimestamp(), this.utils.currentTimeInSecs());
    }

    private String getCacheFid() {
        String str;
        synchronized (this) {
            str = this.cachedFid;
        }
        return str;
    }

    public static FirebaseInstallations getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    public static FirebaseInstallations getInstance(FirebaseApp firebaseApp) {
        Preconditions.checkArgument(firebaseApp != null, "Null is not a valid value of FirebaseApp.");
        return (FirebaseInstallations) firebaseApp.get(FirebaseInstallationsApi.class);
    }

    private PersistedInstallationEntry getMultiProcessSafePrefs() {
        PersistedInstallationEntry readPersistedInstallationEntryValue;
        synchronized (lockGenerateFid) {
            CrossProcessLock acquire = CrossProcessLock.acquire(this.firebaseApp.getApplicationContext(), LOCKFILE_NAME_GENERATE_FID);
            readPersistedInstallationEntryValue = this.persistedInstallation.readPersistedInstallationEntryValue();
            if (acquire != null) {
                acquire.releaseAndClose();
            }
        }
        return readPersistedInstallationEntryValue;
    }

    private PersistedInstallationEntry getPrefsWithGeneratedIdMultiProcessSafe() {
        PersistedInstallationEntry persistedInstallationEntry;
        synchronized (lockGenerateFid) {
            CrossProcessLock acquire = CrossProcessLock.acquire(this.firebaseApp.getApplicationContext(), LOCKFILE_NAME_GENERATE_FID);
            PersistedInstallationEntry readPersistedInstallationEntryValue = this.persistedInstallation.readPersistedInstallationEntryValue();
            persistedInstallationEntry = readPersistedInstallationEntryValue;
            if (readPersistedInstallationEntryValue.isNotGenerated()) {
                persistedInstallationEntry = this.persistedInstallation.insertOrUpdatePersistedInstallationEntry(readPersistedInstallationEntryValue.withUnregisteredFid(readExistingIidOrCreateFid(readPersistedInstallationEntryValue)));
            }
            if (acquire != null) {
                acquire.releaseAndClose();
            }
        }
        return persistedInstallationEntry;
    }

    private void insertOrUpdatePrefs(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (lockGenerateFid) {
            CrossProcessLock acquire = CrossProcessLock.acquire(this.firebaseApp.getApplicationContext(), LOCKFILE_NAME_GENERATE_FID);
            this.persistedInstallation.insertOrUpdatePersistedInstallationEntry(persistedInstallationEntry);
            if (acquire != null) {
                acquire.releaseAndClose();
            }
        }
    }

    public static /* synthetic */ void lambda$getToken$1(FirebaseInstallations firebaseInstallations, boolean z) {
        firebaseInstallations.doRegistrationOrRefresh(z);
    }

    private void preConditionChecks() {
        Preconditions.checkNotEmpty(getApplicationId(), APP_ID_VALIDATION_MSG);
        Preconditions.checkNotEmpty(getProjectIdentifier(), PROJECT_ID_VALIDATION_MSG);
        Preconditions.checkNotEmpty(getApiKey(), API_KEY_VALIDATION_MSG);
        Preconditions.checkArgument(Utils.isValidAppIdFormat(getApplicationId()), APP_ID_VALIDATION_MSG);
        Preconditions.checkArgument(Utils.isValidApiKeyFormat(getApiKey()), API_KEY_VALIDATION_MSG);
    }

    private String readExistingIidOrCreateFid(PersistedInstallationEntry persistedInstallationEntry) {
        if ((this.firebaseApp.getName().equals(CHIME_FIREBASE_APP_NAME) || this.firebaseApp.isDefaultApp()) && persistedInstallationEntry.shouldAttemptMigration()) {
            String readIid = this.iidStore.readIid();
            String str = readIid;
            if (TextUtils.isEmpty(readIid)) {
                str = this.fidGenerator.createRandomFid();
            }
            return str;
        }
        return this.fidGenerator.createRandomFid();
    }

    private PersistedInstallationEntry registerFidWithServer(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        InstallationResponse createFirebaseInstallation = this.serviceClient.createFirebaseInstallation(getApiKey(), persistedInstallationEntry.getFirebaseInstallationId(), getProjectIdentifier(), getApplicationId(), (persistedInstallationEntry.getFirebaseInstallationId() == null || persistedInstallationEntry.getFirebaseInstallationId().length() != 11) ? null : this.iidStore.readToken());
        int i = C16113.f169xc38d2559[createFirebaseInstallation.getResponseCode().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
            }
            return persistedInstallationEntry.withFisError("BAD CONFIG");
        }
        return persistedInstallationEntry.withRegisteredFid(createFirebaseInstallation.getFid(), createFirebaseInstallation.getRefreshToken(), this.utils.currentTimeInSecs(), createFirebaseInstallation.getAuthToken().getToken(), createFirebaseInstallation.getAuthToken().getTokenExpirationTimestamp());
    }

    private void triggerOnException(Exception exc) {
        synchronized (this.lock) {
            Iterator<StateListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                if (it.next().onException(exc)) {
                    it.remove();
                }
            }
        }
    }

    private void triggerOnStateReached(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (this.lock) {
            Iterator<StateListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                if (it.next().onStateReached(persistedInstallationEntry)) {
                    it.remove();
                }
            }
        }
    }

    private void updateCacheFid(String str) {
        synchronized (this) {
            this.cachedFid = str;
        }
    }

    private void updateFidListener(PersistedInstallationEntry persistedInstallationEntry, PersistedInstallationEntry persistedInstallationEntry2) {
        synchronized (this) {
            if (this.fidListeners.size() != 0 && !persistedInstallationEntry.getFirebaseInstallationId().equals(persistedInstallationEntry2.getFirebaseInstallationId())) {
                for (FidListener fidListener : this.fidListeners) {
                    fidListener.onFidChanged(persistedInstallationEntry2.getFirebaseInstallationId());
                }
            }
        }
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    public Task<Void> delete() {
        return Tasks.call(this.backgroundExecutor, FirebaseInstallations$$Lambda$3.lambdaFactory$(this));
    }

    String getApiKey() {
        return this.firebaseApp.getOptions().getApiKey();
    }

    String getApplicationId() {
        return this.firebaseApp.getOptions().getApplicationId();
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    public Task<String> getId() {
        preConditionChecks();
        String cacheFid = getCacheFid();
        if (cacheFid != null) {
            return Tasks.forResult(cacheFid);
        }
        Task<String> addGetIdListener = addGetIdListener();
        this.backgroundExecutor.execute(FirebaseInstallations$$Lambda$1.lambdaFactory$(this));
        return addGetIdListener;
    }

    String getName() {
        return this.firebaseApp.getName();
    }

    String getProjectIdentifier() {
        return this.firebaseApp.getOptions().getProjectId();
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    public Task<InstallationTokenResult> getToken(boolean z) {
        preConditionChecks();
        Task<InstallationTokenResult> addGetAuthTokenListener = addGetAuthTokenListener();
        this.backgroundExecutor.execute(FirebaseInstallations$$Lambda$2.lambdaFactory$(this, z));
        return addGetAuthTokenListener;
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    public FidListenerHandle registerFidListener(final FidListener fidListener) {
        FidListenerHandle fidListenerHandle;
        synchronized (this) {
            this.fidListeners.add(fidListener);
            fidListenerHandle = new FidListenerHandle() { // from class: com.google.firebase.installations.FirebaseInstallations.2
                {
                    FirebaseInstallations.this = this;
                }

                @Override // com.google.firebase.installations.internal.FidListenerHandle
                public void unregister() {
                    synchronized (FirebaseInstallations.this) {
                        FirebaseInstallations.this.fidListeners.remove(fidListener);
                    }
                }
            };
        }
        return fidListenerHandle;
    }
}
