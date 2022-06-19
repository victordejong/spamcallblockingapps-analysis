package com.google.firebase.crashlytics;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.MissingNativeComponent;
import com.google.firebase.crashlytics.internal.analytics.BlockingAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.BreadcrumbAnalyticsEventReceiver;
import com.google.firebase.crashlytics.internal.analytics.CrashlyticsOriginAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.UnavailableAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.breadcrumbs.DisabledBreadcrumbSource;
import com.google.firebase.crashlytics.internal.common.AppData;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.common.DataCollectionArbiter;
import com.google.firebase.crashlytics.internal.common.ExecutorUtils;
import com.google.firebase.crashlytics.internal.common.IdManager;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.settings.SettingsController;
import com.google.firebase.crashlytics.internal.unity.ResourceUnityVersionProvider;
import com.google.firebase.installations.AbstractC15822h;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/FirebaseCrashlytics.class */
public class FirebaseCrashlytics {
    private static final int APP_EXCEPTION_CALLBACK_TIMEOUT_MS = 500;
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN = "clx";
    private static final String LEGACY_CRASH_ANALYTICS_ORIGIN = "crash";
    private final CrashlyticsCore core;

    private FirebaseCrashlytics(CrashlyticsCore crashlyticsCore) {
        this.core = crashlyticsCore;
    }

    public static FirebaseCrashlytics getInstance() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) C15601b.m8573d().m8577a(FirebaseCrashlytics.class);
        Objects.requireNonNull(firebaseCrashlytics, "FirebaseCrashlytics component is not present.");
        return firebaseCrashlytics;
    }

    public static FirebaseCrashlytics init(C15601b c15601b, AbstractC15822h abstractC15822h, CrashlyticsNativeComponent crashlyticsNativeComponent, AbstractC15587a abstractC15587a) {
        BlockingAnalyticsEventLogger blockingAnalyticsEventLogger;
        BreadcrumbAnalyticsEventReceiver breadcrumbAnalyticsEventReceiver;
        Logger logger = Logger.getLogger();
        logger.m8484i("Initializing Firebase Crashlytics " + CrashlyticsCore.getVersion());
        Context m8583a = c15601b.m8583a();
        IdManager idManager = new IdManager(m8583a, m8583a.getPackageName(), abstractC15822h);
        DataCollectionArbiter dataCollectionArbiter = new DataCollectionArbiter(c15601b);
        MissingNativeComponent missingNativeComponent = crashlyticsNativeComponent;
        if (crashlyticsNativeComponent == null) {
            missingNativeComponent = new MissingNativeComponent();
        }
        if (abstractC15587a != null) {
            CrashlyticsOriginAnalyticsEventLogger crashlyticsOriginAnalyticsEventLogger = new CrashlyticsOriginAnalyticsEventLogger(abstractC15587a);
            CrashlyticsAnalyticsListener crashlyticsAnalyticsListener = new CrashlyticsAnalyticsListener();
            if (subscribeToAnalyticsEvents(abstractC15587a, crashlyticsAnalyticsListener) != null) {
                Logger.getLogger().m8488d("Registered Firebase Analytics listener.");
                BreadcrumbAnalyticsEventReceiver breadcrumbAnalyticsEventReceiver2 = new BreadcrumbAnalyticsEventReceiver();
                BlockingAnalyticsEventLogger blockingAnalyticsEventLogger2 = new BlockingAnalyticsEventLogger(crashlyticsOriginAnalyticsEventLogger, 500, TimeUnit.MILLISECONDS);
                crashlyticsAnalyticsListener.setBreadcrumbEventReceiver(breadcrumbAnalyticsEventReceiver2);
                crashlyticsAnalyticsListener.setCrashlyticsOriginEventReceiver(blockingAnalyticsEventLogger2);
                breadcrumbAnalyticsEventReceiver = breadcrumbAnalyticsEventReceiver2;
                blockingAnalyticsEventLogger = blockingAnalyticsEventLogger2;
            } else {
                Logger.getLogger().m8480w("Could not register Firebase Analytics listener; a listener is already registered.");
                breadcrumbAnalyticsEventReceiver = new DisabledBreadcrumbSource();
                blockingAnalyticsEventLogger = crashlyticsOriginAnalyticsEventLogger;
            }
        } else {
            Logger.getLogger().m8488d("Firebase Analytics is not available.");
            breadcrumbAnalyticsEventReceiver = new DisabledBreadcrumbSource();
            blockingAnalyticsEventLogger = new UnavailableAnalyticsEventLogger();
        }
        final CrashlyticsCore crashlyticsCore = new CrashlyticsCore(c15601b, idManager, missingNativeComponent, dataCollectionArbiter, breadcrumbAnalyticsEventReceiver, blockingAnalyticsEventLogger, ExecutorUtils.buildSingleThreadExecutorService("Crashlytics Exception Handler"));
        String str = c15601b.m8574c().f56100b;
        String mappingFileId = CommonUtils.getMappingFileId(m8583a);
        Logger.getLogger().m8488d("Mapping file ID is: ".concat(String.valueOf(mappingFileId)));
        try {
            AppData create = AppData.create(m8583a, idManager, str, mappingFileId, new ResourceUnityVersionProvider(m8583a));
            Logger logger2 = Logger.getLogger();
            logger2.m8482v("Installer package name is: " + create.installerPackageName);
            ExecutorService buildSingleThreadExecutorService = ExecutorUtils.buildSingleThreadExecutorService("com.google.firebase.crashlytics.startup");
            final SettingsController create2 = SettingsController.create(m8583a, str, idManager, new HttpRequestFactory(), create.versionCode, create.versionName, dataCollectionArbiter);
            create2.loadSettingsData(buildSingleThreadExecutorService).mo11484a(buildSingleThreadExecutorService, new AbstractC14179b<Void, Object>() { // from class: com.google.firebase.crashlytics.FirebaseCrashlytics.1
                @Override // com.google.android.gms.tasks.AbstractC14179b
                public Object then(AbstractC14185h<Void> abstractC14185h) throws Exception {
                    if (!abstractC14185h.mo11478b()) {
                        Logger.getLogger().m8485e("Error fetching settings.", abstractC14185h.mo11474e());
                        return null;
                    }
                    return null;
                }
            });
            final boolean onPreExecute = crashlyticsCore.onPreExecute(create, create2);
            C14188k.m11462a(buildSingleThreadExecutorService, new Callable<Void>() { // from class: com.google.firebase.crashlytics.FirebaseCrashlytics.2
                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    if (onPreExecute) {
                        crashlyticsCore.doBackgroundInitializationAsync(create2);
                        return null;
                    }
                    return null;
                }
            });
            return new FirebaseCrashlytics(crashlyticsCore);
        } catch (PackageManager.NameNotFoundException e) {
            Logger.getLogger().m8485e("Error retrieving app package info.", e);
            return null;
        }
    }

    private static AbstractC15587a.AbstractC15588a subscribeToAnalyticsEvents(AbstractC15587a abstractC15587a, CrashlyticsAnalyticsListener crashlyticsAnalyticsListener) {
        AbstractC15587a.AbstractC15588a mo8599a = abstractC15587a.mo8599a(FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN, crashlyticsAnalyticsListener);
        AbstractC15587a.AbstractC15588a abstractC15588a = mo8599a;
        if (mo8599a == null) {
            Logger.getLogger().m8488d("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            AbstractC15587a.AbstractC15588a mo8599a2 = abstractC15587a.mo8599a(LEGACY_CRASH_ANALYTICS_ORIGIN, crashlyticsAnalyticsListener);
            abstractC15588a = mo8599a2;
            if (mo8599a2 != null) {
                Logger.getLogger().m8480w("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
                abstractC15588a = mo8599a2;
            }
        }
        return abstractC15588a;
    }

    public AbstractC14185h<Boolean> checkForUnsentReports() {
        return this.core.checkForUnsentReports();
    }

    public void deleteUnsentReports() {
        this.core.deleteUnsentReports();
    }

    public boolean didCrashOnPreviousExecution() {
        return this.core.didCrashOnPreviousExecution();
    }

    public void log(String str) {
        this.core.log(str);
    }

    public void recordException(Throwable th) {
        if (th == null) {
            Logger.getLogger().m8480w("A null value was passed to recordException. Ignoring.");
        } else {
            this.core.logException(th);
        }
    }

    public void sendUnsentReports() {
        this.core.sendUnsentReports();
    }

    public void setCrashlyticsCollectionEnabled(Boolean bool) {
        this.core.setCrashlyticsCollectionEnabled(bool);
    }

    public void setCrashlyticsCollectionEnabled(boolean z) {
        this.core.setCrashlyticsCollectionEnabled(Boolean.valueOf(z));
    }

    public void setCustomKey(String str, double d) {
        this.core.setCustomKey(str, Double.toString(d));
    }

    public void setCustomKey(String str, float f) {
        this.core.setCustomKey(str, Float.toString(f));
    }

    public void setCustomKey(String str, int i) {
        this.core.setCustomKey(str, Integer.toString(i));
    }

    public void setCustomKey(String str, long j) {
        this.core.setCustomKey(str, Long.toString(j));
    }

    public void setCustomKey(String str, String str2) {
        this.core.setCustomKey(str, str2);
    }

    public void setCustomKey(String str, boolean z) {
        this.core.setCustomKey(str, Boolean.toString(z));
    }

    public void setCustomKeys(CustomKeysAndValues customKeysAndValues) {
        this.core.setCustomKeys(customKeysAndValues.keysAndValues);
    }

    public void setUserId(String str) {
        this.core.setUserId(str);
    }
}
