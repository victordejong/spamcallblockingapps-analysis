package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.Reflection;
import com.mopub.network.Networking;
import e.n.a.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPub.class */
public class MoPub {
    public static final String SDK_VERSION = "5.16.4";

    /* renamed from: d */
    public static Method f8524d;

    /* renamed from: g */
    public static AdapterConfigurationManager f8527g;

    /* renamed from: h */
    public static PersonalInfoManager f8528h;

    /* renamed from: a */
    public static volatile BrowserAgent f8521a = BrowserAgent.IN_APP;

    /* renamed from: b */
    public static volatile boolean f8522b = false;

    /* renamed from: c */
    public static boolean f8523c = false;

    /* renamed from: e */
    public static boolean f8525e = false;

    /* renamed from: f */
    public static boolean f8526f = false;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPub$BrowserAgent.class */
    public enum BrowserAgent {
        IN_APP,
        NATIVE;

        public static BrowserAgent fromHeader(Integer num) {
            if (num == null) {
                return IN_APP;
            }
            return num.intValue() == 1 ? NATIVE : IN_APP;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPub$LocationAwareness.class */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED
    }

    /* renamed from: com.mopub.common.MoPub$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPub$a.class */
    public static final class RunnableC2640a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ SdkInitializationListener f8531a;

        public RunnableC2640a(SdkInitializationListener sdkInitializationListener) {
            this.f8531a = sdkInitializationListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            SdkInitializationListener sdkInitializationListener = this.f8531a;
            if (sdkInitializationListener != null) {
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: a */
    public static void m36307a(SdkInitializationListener sdkInitializationListener) {
        f8526f = false;
        f8525e = true;
        new Handler(Looper.getMainLooper()).post(new RunnableC2640a(sdkInitializationListener));
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0065 -> B:6:0x0020). Please submit an issue!!! */
    @VisibleForTesting
    /* renamed from: b */
    public static void m36306b(Activity activity) {
        if (!f8523c) {
            f8523c = true;
            try {
                f8524d = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedAdManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException | NoSuchMethodException e) {
            }
        }
        Method method = f8524d;
        if (method != null) {
            try {
                method.invoke(null, activity);
            } catch (IllegalAccessException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while attempting to access the update activity method - this should not have happened", e2);
            } catch (InvocationTargetException e3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while attempting to access the update activity method - this should not have happened", e3);
            }
        }
    }

    public static boolean canCollectPersonalInformation() {
        PersonalInfoManager personalInfoManager = f8528h;
        return personalInfoManager != null && personalInfoManager.canCollectPersonalInformation();
    }

    public static void disableViewability() {
        ViewabilityManager.f8577c = false;
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "OMSDK Viewability has been disabled");
    }

    @Deprecated
    public static void disableViewability(ExternalViewabilitySessionManager.ViewabilityVendor viewabilityVendor) {
        ViewabilityManager.f8577c = false;
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "OMSDK Viewability has been disabled");
    }

    public static List<String> getAdapterConfigurationInfo() {
        AdapterConfigurationManager adapterConfigurationManager = f8527g;
        if (adapterConfigurationManager != null) {
            return adapterConfigurationManager.getAdapterConfigurationInfo();
        }
        return null;
    }

    public static BrowserAgent getBrowserAgent() {
        Preconditions.checkNotNull(f8521a);
        return f8521a;
    }

    public static LocationAwareness getLocationAwareness() {
        return LocationService.m36309a().f8515c;
    }

    public static int getLocationPrecision() {
        return LocationService.m36309a().f8516d;
    }

    public static long getMinimumLocationRefreshTimeMillis() {
        return LocationService.m36309a().f8517e;
    }

    public static PersonalInfoManager getPersonalInformationManager() {
        return f8528h;
    }

    public static void initializeSdk(Context context, SdkConfiguration sdkConfiguration, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(sdkConfiguration);
        MoPubLog.setLogLevel(sdkConfiguration.f8549f);
        MoPubLog.log(MoPubLog.SdkLogEvent.INIT_STARTED, new Object[0]);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        StringBuilder m8728C = C22128a.m8728C("SDK initialize has been called with ad unit: ");
        m8728C.append(sdkConfiguration.getAdUnitId());
        MoPubLog.log(sdkLogEvent, m8728C.toString());
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            MoPubLog.log(sdkLogEvent, context.getPackageName() + " was built with target SDK version of " + applicationInfo.targetSdkVersion);
        }
        ViewabilityManager.activate(context.getApplicationContext());
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            Preconditions.checkNotNull(activity);
            Preconditions.checkNotNull(sdkConfiguration);
            try {
                new Reflection.MethodBuilder(null, "initializeRewardedAds").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedAds")).setAccessible().addParam((Class<Class>) Activity.class, (Class) activity).addParam((Class<Class>) SdkConfiguration.class, (Class) sdkConfiguration).execute();
            } catch (ClassNotFoundException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedAds was called without the fullscreen module");
            } catch (NoSuchMethodException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedAds was called without the fullscreen module");
            } catch (Exception e3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while initializing rewarded ads", e3);
            }
        }
        if (f8525e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is already initialized");
            m36307a(sdkInitializationListener);
        } else if (f8526f) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is currently initializing.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub can only be initialized on the main thread.");
        } else {
            f8526f = true;
            Networking.getRequestQueue(context);
            c cVar = new c(new b(sdkInitializationListener), 2);
            PersonalInfoManager personalInfoManager = new PersonalInfoManager(context, sdkConfiguration.getAdUnitId(), cVar);
            f8528h = personalInfoManager;
            personalInfoManager.setAllowLegitimateInterest(sdkConfiguration.getLegitimateInterestAllowed());
            ClientMetadata.getInstance(context);
            AdapterConfigurationManager adapterConfigurationManager = new AdapterConfigurationManager(cVar);
            f8527g = adapterConfigurationManager;
            adapterConfigurationManager.initialize(context, sdkConfiguration.getAdapterConfigurationClasses(), sdkConfiguration.getMediatedNetworkConfigurations(), sdkConfiguration.getMoPubRequestOptions());
        }
    }

    public static boolean isSdkInitialized() {
        return f8525e;
    }

    public static void onBackPressed(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    public static void onCreate(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        m36306b(activity);
    }

    public static void onDestroy(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onPause(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onRestart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        m36306b(activity);
    }

    public static void onResume(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        m36306b(activity);
    }

    public static void onStart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        m36306b(activity);
    }

    public static void onStop(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    @Deprecated
    @VisibleForTesting
    public static void resetBrowserAgent() {
        f8521a = BrowserAgent.IN_APP;
        f8522b = false;
    }

    public static void setAllowLegitimateInterest(boolean z) {
        PersonalInfoManager personalInfoManager = f8528h;
        if (personalInfoManager != null) {
            personalInfoManager.setAllowLegitimateInterest(z);
        }
    }

    public static void setBrowserAgent(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        f8521a = browserAgent;
        f8522b = true;
    }

    public static void setBrowserAgentFromAdServer(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        if (!f8522b) {
            f8521a = browserAgent;
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        StringBuilder m8728C = C22128a.m8728C("Browser agent already overridden by client with value ");
        m8728C.append(f8521a);
        MoPubLog.log(sdkLogEvent, m8728C.toString());
    }

    public static void setEngineInformation(AppEngineInfo appEngineInfo) {
        Preconditions.checkNotNull(appEngineInfo);
        if (TextUtils.isEmpty(appEngineInfo.f8411a) || TextUtils.isEmpty(appEngineInfo.f8412b)) {
            return;
        }
        BaseUrlGenerator.setAppEngineInfo(appEngineInfo);
    }

    public static void setLocationAwareness(LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        LocationService m36309a = LocationService.m36309a();
        Preconditions.checkNotNull(locationAwareness);
        m36309a.f8515c = locationAwareness;
    }

    public static void setLocationPrecision(int i) {
        LocationService.m36309a().f8516d = Math.min(Math.max(0, i), 6);
    }

    public static void setMinimumLocationRefreshTimeMillis(long j) {
        LocationService.m36309a().f8517e = j;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        BaseUrlGenerator.setWrapperVersion(str);
    }

    public static boolean shouldAllowLegitimateInterest() {
        PersonalInfoManager personalInfoManager = f8528h;
        return personalInfoManager != null && personalInfoManager.shouldAllowLegitimateInterest();
    }
}
