package com.crashlytics.android.core;

import android.content.Context;
import android.util.Log;
import com.crashlytics.android.answers.AppMeasurementEventLogger;
import com.crashlytics.android.answers.EventLogger;
import com.google.android.flexbox.FlexItem;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.concurrency.AbstractC1535d;
import io.fabric.sdk.android.services.concurrency.AbstractC1546l;
import io.fabric.sdk.android.services.concurrency.AbstractCallableC1540g;
import io.fabric.sdk.android.services.concurrency.EnumC1536e;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.network.C1585b;
import io.fabric.sdk.android.services.network.EnumC1587c;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.p068b.C1478g;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1489n;
import io.fabric.sdk.android.services.p068b.C1493o;
import io.fabric.sdk.android.services.p068b.C1494p;
import io.fabric.sdk.android.services.p071d.C1548b;
import io.fabric.sdk.android.services.p071d.C1550d;
import io.fabric.sdk.android.services.p072e.C1567q;
import io.fabric.sdk.android.services.p072e.C1572t;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;
@AbstractC1535d(m3351a = {CrashlyticsNdkDataProvider.class})
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore.class */
public class CrashlyticsCore extends AbstractC1459h<Void> {
    static final float CLS_DEFAULT_PROCESS_DELAY = 1.0f;
    static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    static final String CRASH_MARKER_FILE_NAME = "crash_marker";
    static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 4;
    private static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private static final String MISSING_BUILD_ID_MSG = "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.";
    private static final String PREFERENCE_STORE_NAME = "com.crashlytics.android.core.CrashlyticsCore";
    public static final String TAG = "CrashlyticsCore";
    private final ConcurrentHashMap<String, String> attributes;
    private CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsController controller;
    private CrashlyticsFileMarker crashMarker;
    private CrashlyticsNdkDataProvider crashlyticsNdkDataProvider;
    private float delay;
    private boolean disabled;
    private AbstractC1588d httpRequestFactory;
    private CrashlyticsFileMarker initializationMarker;
    private CrashlyticsListener listener;
    private final PinningInfoProvider pinningInfo;
    private final long startTime;
    private String userEmail;
    private String userId;
    private String userName;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore$Builder.class */
    public static class Builder {
        private float delay = -1.0f;
        private boolean disabled = false;
        private CrashlyticsListener listener;
        private PinningInfoProvider pinningInfoProvider;

        public CrashlyticsCore build() {
            if (this.delay < FlexItem.FLEX_GROW_DEFAULT) {
                this.delay = 1.0f;
            }
            return new CrashlyticsCore(this.delay, this.listener, this.pinningInfoProvider, this.disabled);
        }

        public Builder delay(float f) {
            if (f > FlexItem.FLEX_GROW_DEFAULT) {
                if (this.delay > FlexItem.FLEX_GROW_DEFAULT) {
                    throw new IllegalStateException("delay already set.");
                }
                this.delay = f;
                return this;
            }
            throw new IllegalArgumentException("delay must be greater than 0");
        }

        public Builder disabled(boolean z) {
            this.disabled = z;
            return this;
        }

        public Builder listener(CrashlyticsListener crashlyticsListener) {
            if (crashlyticsListener != null) {
                if (this.listener != null) {
                    throw new IllegalStateException("listener already set.");
                }
                this.listener = crashlyticsListener;
                return this;
            }
            throw new IllegalArgumentException("listener must not be null.");
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            if (pinningInfoProvider != null) {
                if (this.pinningInfoProvider != null) {
                    throw new IllegalStateException("pinningInfoProvider already set.");
                }
                this.pinningInfoProvider = pinningInfoProvider;
                return this;
            }
            throw new IllegalArgumentException("pinningInfoProvider must not be null.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore$CrashMarkerCheck.class */
    public static final class CrashMarkerCheck implements Callable<Boolean> {
        private final CrashlyticsFileMarker crashMarker;

        public CrashMarkerCheck(CrashlyticsFileMarker crashlyticsFileMarker) {
            this.crashMarker = crashlyticsFileMarker;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() {
            if (!this.crashMarker.isPresent()) {
                return Boolean.FALSE;
            }
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Found previous crash marker.");
            this.crashMarker.remove();
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore$NoOpListener.class */
    public static final class NoOpListener implements CrashlyticsListener {
        private NoOpListener() {
        }

        @Override // com.crashlytics.android.core.CrashlyticsListener
        public void crashlyticsDidDetectCrashDuringPreviousExecution() {
        }
    }

    public CrashlyticsCore() {
        this(1.0f, null, null, false);
    }

    CrashlyticsCore(float f, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z) {
        this(f, crashlyticsListener, pinningInfoProvider, z, C1489n.m3456a("Crashlytics Exception Handler"));
    }

    CrashlyticsCore(float f, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z, ExecutorService executorService) {
        this.userId = null;
        this.userEmail = null;
        this.userName = null;
        this.delay = f;
        this.listener = crashlyticsListener == null ? new NoOpListener() : crashlyticsListener;
        this.pinningInfo = pinningInfoProvider;
        this.disabled = z;
        this.backgroundWorker = new CrashlyticsBackgroundWorker(executorService);
        this.attributes = new ConcurrentHashMap<>();
        this.startTime = System.currentTimeMillis();
    }

    private void checkForPreviousCrash() {
        if (!Boolean.TRUE.equals((Boolean) this.backgroundWorker.submitAndWait(new CrashMarkerCheck(this.crashMarker)))) {
            return;
        }
        try {
            this.listener.crashlyticsDidDetectCrashDuringPreviousExecution();
        } catch (Exception e) {
            C1449c.m3572g().mo3545e(TAG, "Exception thrown by CrashlyticsListener while notifying of previous crash.", e);
        }
    }

    private void doLog(int i, String str, String str2) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging messages.")) {
            this.controller.writeToLog(System.currentTimeMillis() - this.startTime, formatLogMessage(i, str, str2));
        }
    }

    private static boolean ensureFabricWithCalled(String str) {
        CrashlyticsCore crashlyticsCore = getInstance();
        if (crashlyticsCore == null || crashlyticsCore.controller == null) {
            AbstractC1462k m3572g = C1449c.m3572g();
            m3572g.mo3545e(TAG, "Crashlytics must be initialized by calling Fabric.with(Context) " + str, null);
            return false;
        }
        return true;
    }

    private void finishInitSynchronously() {
        AbstractCallableC1540g<Void> abstractCallableC1540g = new AbstractCallableC1540g<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.1
            @Override // java.util.concurrent.Callable
            public Void call() {
                return CrashlyticsCore.this.doInBackground();
            }

            @Override // io.fabric.sdk.android.services.concurrency.C1543j, io.fabric.sdk.android.services.concurrency.AbstractC1542i
            public EnumC1536e getPriority() {
                return EnumC1536e.IMMEDIATE;
            }
        };
        for (AbstractC1546l abstractC1546l : getDependencies()) {
            abstractCallableC1540g.addDependency(abstractC1546l);
        }
        Future submit = getFabric().m3574e().submit(abstractCallableC1540g);
        C1449c.m3572g().mo3552a(TAG, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            C1449c.m3572g().mo3545e(TAG, "Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            C1449c.m3572g().mo3545e(TAG, "Problem encountered during Crashlytics initialization.", e2);
        } catch (TimeoutException e3) {
            C1449c.m3572g().mo3545e(TAG, "Crashlytics timed out during initialization.", e3);
        }
    }

    private static String formatLogMessage(int i, String str, String str2) {
        return C1480i.m3483b(i) + "/" + str + " " + str2;
    }

    public static CrashlyticsCore getInstance() {
        return (CrashlyticsCore) C1449c.m3587a(CrashlyticsCore.class);
    }

    static boolean isBuildIdValid(String str, boolean z) {
        if (!z) {
            C1449c.m3572g().mo3552a(TAG, "Configured not to require a build ID.");
            return true;
        } else if (!C1480i.m3473d(str)) {
            return true;
        } else {
            Log.e(TAG, ".");
            Log.e(TAG, ".     |  | ");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".   \\ |  | /");
            Log.e(TAG, ".    \\    /");
            Log.e(TAG, ".     \\  /");
            Log.e(TAG, ".      \\/");
            Log.e(TAG, ".");
            Log.e(TAG, MISSING_BUILD_ID_MSG);
            Log.e(TAG, ".");
            Log.e(TAG, ".      /\\");
            Log.e(TAG, ".     /  \\");
            Log.e(TAG, ".    /    \\");
            Log.e(TAG, ".   / |  | \\");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".");
            return false;
        }
    }

    private static String sanitizeAttribute(String str) {
        String str2 = str;
        if (str != null) {
            String trim = str.trim();
            str2 = trim;
            if (trim.length() > MAX_ATTRIBUTE_SIZE) {
                str2 = trim.substring(0, MAX_ATTRIBUTE_SIZE);
            }
        }
        return str2;
    }

    public void crash() {
        new CrashTest().indexOutOfBounds();
    }

    public void createCrashMarker() {
        this.crashMarker.create();
    }

    boolean didPreviousInitializationFail() {
        return this.initializationMarker.isPresent();
    }

    /* JADX WARN: Finally extract failed */
    @Override // io.fabric.sdk.android.AbstractC1459h
    public Void doInBackground() {
        C1572t m3304b;
        markInitializationStarted();
        this.controller.cleanInvalidTempFiles();
        try {
            try {
                this.controller.registerDevicePowerStateListener();
                m3304b = C1567q.m3307a().m3304b();
            } catch (Exception e) {
                C1449c.m3572g().mo3545e(TAG, "Crashlytics encountered a problem during asynchronous initialization.", e);
            }
            if (m3304b == null) {
                C1449c.m3572g().mo3548d(TAG, "Received null settings, skipping report submission!");
                markInitializationComplete();
                return null;
            }
            this.controller.registerAnalyticsEventListener(m3304b);
            if (!m3304b.f4283d.f4250c) {
                C1449c.m3572g().mo3552a(TAG, "Collection of crash reports disabled in Crashlytics settings.");
                markInitializationComplete();
                return null;
            }
            CrashlyticsNdkData nativeCrashData = getNativeCrashData();
            if (nativeCrashData != null && !this.controller.finalizeNativeReport(nativeCrashData)) {
                C1449c.m3572g().mo3552a(TAG, "Could not finalize previous NDK sessions.");
            }
            if (!this.controller.finalizeSessions(m3304b.f4281b)) {
                C1449c.m3572g().mo3552a(TAG, "Could not finalize previous sessions.");
            }
            this.controller.submitAllReports(this.delay, m3304b);
            markInitializationComplete();
            return null;
        } catch (Throwable th) {
            markInitializationComplete();
            throw th;
        }
    }

    public Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    CrashlyticsController getController() {
        return this.controller;
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    CrashlyticsNdkData getNativeCrashData() {
        CrashlyticsNdkDataProvider crashlyticsNdkDataProvider = this.crashlyticsNdkDataProvider;
        if (crashlyticsNdkDataProvider != null) {
            return crashlyticsNdkDataProvider.getCrashlyticsNdkData();
        }
        return null;
    }

    public PinningInfoProvider getPinningInfoProvider() {
        return !this.disabled ? this.pinningInfo : null;
    }

    public String getUserEmail() {
        return getIdManager().m3448a() ? this.userEmail : null;
    }

    public String getUserIdentifier() {
        return getIdManager().m3448a() ? this.userId : null;
    }

    public String getUserName() {
        return getIdManager().m3448a() ? this.userName : null;
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getVersion() {
        return "2.6.3.25";
    }

    boolean internalVerifyPinning(URL url) {
        if (getPinningInfoProvider() != null) {
            HttpRequest mo3228a = this.httpRequestFactory.mo3228a(EnumC1587c.GET, url.toString());
            ((HttpsURLConnection) mo3228a.m3294a()).setInstanceFollowRedirects(false);
            mo3228a.m3275b();
            return true;
        }
        return false;
    }

    public void log(int i, String str, String str2) {
        doLog(i, str, str2);
        C1449c.m3572g().mo3554a(i, "" + str, "" + str2, true);
    }

    public void log(String str) {
        doLog(3, TAG, str);
    }

    public void logException(Throwable th) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging exceptions.")) {
            if (th == null) {
                C1449c.m3572g().mo3555a(5, TAG, "Crashlytics is ignoring a request to log a null exception.");
            } else {
                this.controller.writeNonFatalException(Thread.currentThread(), th);
            }
        }
    }

    void markInitializationComplete() {
        this.backgroundWorker.submit(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.3
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                try {
                    boolean remove = CrashlyticsCore.this.initializationMarker.remove();
                    AbstractC1462k m3572g = C1449c.m3572g();
                    m3572g.mo3552a(CrashlyticsCore.TAG, "Initialization marker file removed: " + remove);
                    return Boolean.valueOf(remove);
                } catch (Exception e) {
                    C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Problem encountered deleting Crashlytics initialization marker.", e);
                    return false;
                }
            }
        });
    }

    void markInitializationStarted() {
        this.backgroundWorker.submitAndWait(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.2
            @Override // java.util.concurrent.Callable
            public Void call() {
                CrashlyticsCore.this.initializationMarker.create();
                C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Initialization marker file created.");
                return null;
            }
        });
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public boolean onPreExecute() {
        return onPreExecute(super.getContext());
    }

    boolean onPreExecute(Context context) {
        String m3512a;
        if (!this.disabled && (m3512a = new C1478g().m3512a(context)) != null) {
            String m3464m = C1480i.m3464m(context);
            if (!isBuildIdValid(m3464m, C1480i.m3500a(context, CRASHLYTICS_REQUIRE_BUILD_ID, true))) {
                throw new UnmetDependencyException(MISSING_BUILD_ID_MSG);
            }
            try {
                AbstractC1462k m3572g = C1449c.m3572g();
                m3572g.mo3549c(TAG, "Initializing Crashlytics " + getVersion());
                C1548b c1548b = new C1548b(this);
                this.crashMarker = new CrashlyticsFileMarker(CRASH_MARKER_FILE_NAME, c1548b);
                this.initializationMarker = new CrashlyticsFileMarker(INITIALIZATION_MARKER_FILE_NAME, c1548b);
                PreferenceManager create = PreferenceManager.create(new C1550d(getContext(), PREFERENCE_STORE_NAME), this);
                CrashlyticsPinningInfoProvider crashlyticsPinningInfoProvider = this.pinningInfo != null ? new CrashlyticsPinningInfoProvider(this.pinningInfo) : null;
                this.httpRequestFactory = new C1585b(C1449c.m3572g());
                this.httpRequestFactory.mo3226a(crashlyticsPinningInfoProvider);
                C1494p idManager = getIdManager();
                AppData create2 = AppData.create(context, idManager, m3512a, m3464m);
                ManifestUnityVersionProvider manifestUnityVersionProvider = new ManifestUnityVersionProvider(context, create2.packageName);
                AppMeasurementEventListenerRegistrar instanceFrom = DefaultAppMeasurementEventListenerRegistrar.instanceFrom(this);
                EventLogger eventLogger = AppMeasurementEventLogger.getEventLogger(context);
                AbstractC1462k m3572g2 = C1449c.m3572g();
                m3572g2.mo3552a(TAG, "Installer package name is: " + create2.installerPackageName);
                this.controller = new CrashlyticsController(this, this.backgroundWorker, this.httpRequestFactory, idManager, create, c1548b, create2, manifestUnityVersionProvider, instanceFrom, eventLogger);
                boolean didPreviousInitializationFail = didPreviousInitializationFail();
                checkForPreviousCrash();
                this.controller.enableExceptionHandling(Thread.getDefaultUncaughtExceptionHandler(), new C1493o().m3449b(context));
                if (!didPreviousInitializationFail || !C1480i.m3463n(context)) {
                    C1449c.m3572g().mo3552a(TAG, "Exception handling initialization successful");
                    return true;
                }
                C1449c.m3572g().mo3552a(TAG, "Crashlytics did not finish previous background initialization. Initializing synchronously.");
                finishInitSynchronously();
                return false;
            } catch (Exception e) {
                C1449c.m3572g().mo3545e(TAG, "Crashlytics was not started due to an exception during initialization", e);
                this.controller = null;
                return false;
            }
        }
        return false;
    }

    public void setBool(String str, boolean z) {
        setString(str, Boolean.toString(z));
    }

    void setCrashlyticsNdkDataProvider(CrashlyticsNdkDataProvider crashlyticsNdkDataProvider) {
        this.crashlyticsNdkDataProvider = crashlyticsNdkDataProvider;
    }

    public void setDouble(String str, double d) {
        setString(str, Double.toString(d));
    }

    public void setFloat(String str, float f) {
        setString(str, Float.toString(f));
    }

    public void setInt(String str, int i) {
        setString(str, Integer.toString(i));
    }

    @Deprecated
    public void setListener(CrashlyticsListener crashlyticsListener) {
        synchronized (this) {
            C1449c.m3572g().mo3548d(TAG, "Use of setListener is deprecated.");
            if (crashlyticsListener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            }
            this.listener = crashlyticsListener;
        }
    }

    public void setLong(String str, long j) {
        setString(str, Long.toString(j));
    }

    public void setString(String str, String str2) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting keys.")) {
            if (str == null) {
                Context context = getContext();
                if (context != null && C1480i.m3468i(context)) {
                    throw new IllegalArgumentException("Custom attribute key must not be null.");
                }
                C1449c.m3572g().mo3545e(TAG, "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            String sanitizeAttribute = sanitizeAttribute(str);
            if (this.attributes.size() >= 64 && !this.attributes.containsKey(sanitizeAttribute)) {
                C1449c.m3572g().mo3552a(TAG, "Exceeded maximum number of custom attributes (64)");
                return;
            }
            this.attributes.put(sanitizeAttribute, str2 == null ? "" : sanitizeAttribute(str2));
            this.controller.cacheKeyData(this.attributes);
        }
    }

    public void setUserEmail(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userEmail = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserIdentifier(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userId = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserName(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userName = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public boolean verifyPinning(URL url) {
        try {
            return internalVerifyPinning(url);
        } catch (Exception e) {
            C1449c.m3572g().mo3545e(TAG, "Could not verify SSL pinning", e);
            return false;
        }
    }
}
