package com.millennialmedia;

import android.app.Activity;
import android.app.Application;
import android.text.TextUtils;
import com.millennialmedia.internal.ActivityListenerManager;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.InlineMediatedAdAdapter;
import com.millennialmedia.internal.adadapters.InterstitialMediatedAdAdapter;
import com.millennialmedia.internal.adadapters.MediatedAdAdapter;
import com.millennialmedia.internal.adadapters.NativeMediatedAdAdapter;
import com.millennialmedia.internal.adcontrollers.AdController;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.mediation.CustomEventRegistry;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/MMSDK.class */
public class MMSDK {
    private static final String TAG = "MMSDK";
    public static final String VERSION = "6.7.0-c5b3e1a";
    private static AppInfo appInfo;
    private static TestInfo testInfo;
    private static UserData userData;
    public static final Map<String, String> registeredPlugins = new HashMap();
    public static boolean initialized = false;
    public static boolean locationEnabled = true;

    public static AppInfo getAppInfo() {
        return appInfo;
    }

    public static TestInfo getTestInfo() {
        return testInfo;
    }

    public static UserData getUserData() {
        return userData;
    }

    @Deprecated
    public static void initialize(Activity activity) {
        if (activity != null) {
            try {
                initialize(activity.getApplication());
                return;
            } catch (MMException e) {
                throw new IllegalStateException(e);
            }
        }
        throw new IllegalStateException("Unable to initialize SDK, specified activity is null");
    }

    @Deprecated
    public static void initialize(Activity activity, ActivityListenerManager.LifecycleState lifecycleState) {
        initialize(activity);
        ActivityListenerManager.setInitialStateForUnknownActivity(activity.hashCode(), lifecycleState);
    }

    public static void initialize(Application application) {
        long currentTimeMillis = System.currentTimeMillis();
        if (application != null) {
            if (initialized) {
                MMLog.m4066i(TAG, "Millennial Media SDK already initialized");
                return;
            }
            ThreadUtils.initialize();
            EnvironmentUtils.init(application);
            Handshake.initialize();
            ActivityListenerManager.init();
            PlayListServerAdapter.registerPackagedAdapters();
            AdAdapter.registerPackagedAdapters();
            AdController.registerPackagedControllers();
            registerKnownMediationAdapters();
            PlayListServerAdapter.registerPackagedPlayListItemTypes();
            Handshake.request(true);
            AdPlacementReporter.init();
            initialized = true;
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            String str = TAG;
            MMLog.m4070d(str, "SDK Initialization completed in " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            return;
        }
        throw new MMInitializationException("Unable to initialize SDK. Please provide a valid Application instance.");
    }

    public static boolean isInitialized() {
        return initialized;
    }

    public static void registerAdAdapter(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        AdAdapter.registerAdapter(cls, cls2, cls3);
    }

    public static void registerAdController(AdController adController) {
        AdController.registerController(adController);
    }

    private static void registerKnownMediationAdapters() {
        registerMediatedAdAdapter(InlineAd.class, InlineMediatedAdAdapter.class);
        registerMediatedAdAdapter(InterstitialAd.class, InterstitialMediatedAdAdapter.class);
        registerMediatedAdAdapter(NativeAd.class, NativeMediatedAdAdapter.class);
        CustomEventRegistry.register("ADCOLONY", InterstitialAd.class, "com.millennialmedia.mediation.AdColonyCustomEventInterstitial");
        CustomEventRegistry.register("ADMOB", InlineAd.class, "com.millennialmedia.mediation.AdMobCustomEventBanner");
        CustomEventRegistry.register("ADMOB", InterstitialAd.class, "com.millennialmedia.mediation.AdMobCustomEventInterstitial");
        CustomEventRegistry.register("FACEBOOK", InlineAd.class, "com.millennialmedia.mediation.FacebookCustomEventBanner");
        CustomEventRegistry.register("FACEBOOK", InterstitialAd.class, "com.millennialmedia.mediation.FacebookCustomEventInterstitial");
        CustomEventRegistry.register("FACEBOOK", NativeAd.class, "com.millennialmedia.mediation.FacebookCustomEventNative");
        CustomEventRegistry.register("INMOBI", InlineAd.class, "com.millennialmedia.mediation.InMobiCustomEventBanner");
        CustomEventRegistry.register("INMOBI", InterstitialAd.class, "com.millennialmedia.mediation.InMobiCustomEventInterstitial");
        CustomEventRegistry.register("MOPUB", InlineAd.class, "com.millennialmedia.mediation.MoPubCustomEventBanner");
        CustomEventRegistry.register("MOPUB", NativeAd.class, "com.millennialmedia.mediation.MoPubCustomEventNative");
        CustomEventRegistry.register("MOPUB", InterstitialAd.class, "com.millennialmedia.mediation.MoPubCustomEventInterstitial");
        CustomEventRegistry.register("CHARTBOOST", InterstitialAd.class, "com.millennialmedia.mediation.ChartboostCustomEventInterstitial");
    }

    public static void registerMediatedAdAdapter(Class<? extends AdPlacement> cls, Class<? extends MediatedAdAdapter> cls2) {
        AdAdapter.registerMediatedAdAdapter(cls, cls2);
    }

    public static void registerPlayListServerAdapter(PlayListServerAdapter playListServerAdapter) {
        PlayListServerAdapter.registerAdapter(playListServerAdapter);
    }

    public static boolean registerPlugin(String str, String str2) {
        if (initialized) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                MMLog.m4068e(TAG, "Unable to register plugin, neither id or version can be null or empty");
                return false;
            }
            registeredPlugins.put(str, str2);
            if (!MMLog.isDebugEnabled()) {
                return true;
            }
            String str3 = TAG;
            MMLog.m4070d(str3, "Registered plugin with ID <" + str + "> and version <" + str2 + ">");
            return true;
        }
        throw new MMInitializationException("Unable to register plugin, SDK must be initialized first");
    }

    public static void setActiveAdServerAdapter(Class<? extends PlayListServerAdapter> cls) {
        PlayListServer.setActivePlayListServerAdapter(cls);
    }

    public static void setAppInfo(AppInfo appInfo2) {
        if (initialized) {
            appInfo = appInfo2;
            return;
        }
        throw new MMInitializationException("Unable to set app info, SDK must be initialized first");
    }

    public static void setLocationEnabled(boolean z) {
        if (initialized) {
            if (MMLog.isDebugEnabled()) {
                String str = TAG;
                MMLog.m4070d(str, "Setting location enabled: " + z);
            }
            locationEnabled = z;
            return;
        }
        throw new MMInitializationException("Unable to set location state, SDK must be initialized first");
    }

    public static void setTestInfo(TestInfo testInfo2) {
        if (initialized) {
            testInfo = testInfo2;
            return;
        }
        throw new MMInitializationException("Unable to set test info, SDK must be initialized first");
    }

    public static void setUserData(UserData userData2) {
        if (initialized) {
            userData = userData2;
            return;
        }
        throw new MMInitializationException("Unable to set user data, SDK must be initialized first");
    }
}
