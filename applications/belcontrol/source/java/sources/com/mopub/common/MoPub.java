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
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPub.class */
public class MoPub {
    public static final String SDK_VERSION = "5.15.0";

    /* renamed from: d */
    public static Method f4263d;

    /* renamed from: g */
    public static AdapterConfigurationManager f4266g;

    /* renamed from: h */
    public static PersonalInfoManager f4267h;

    /* renamed from: a */
    public static volatile BrowserAgent f4260a = BrowserAgent.IN_APP;

    /* renamed from: b */
    public static volatile boolean f4261b = false;

    /* renamed from: c */
    public static boolean f4262c = false;

    /* renamed from: e */
    public static boolean f4264e = false;

    /* renamed from: f */
    public static boolean f4265f = false;

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
    public static final class RunnableC1012a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ SdkInitializationListener f4270a;

        public RunnableC1012a(SdkInitializationListener sdkInitializationListener) {
            this.f4270a = sdkInitializationListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            SdkInitializationListener sdkInitializationListener = this.f4270a;
            if (sdkInitializationListener != null) {
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPub$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPub$b.class */
    public static class C1013b implements SdkInitializationListener {

        /* renamed from: a */
        public SdkInitializationListener f4271a;

        public C1013b(SdkInitializationListener sdkInitializationListener) {
            this.f4271a = sdkInitializationListener;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            AdapterConfigurationManager adapterConfigurationManager = MoPub.f4266g;
            if (adapterConfigurationManager != null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FINISHED, adapterConfigurationManager.getAdapterConfigurationInfo());
            }
            MoPub.m3941d(this.f4271a);
            this.f4271a = null;
        }
    }

    /* renamed from: c */
    public static String m3942c(Context context) {
        Preconditions.checkNotNull(context);
        AdapterConfigurationManager adapterConfigurationManager = f4266g;
        if (adapterConfigurationManager == null) {
            return null;
        }
        return adapterConfigurationManager.m4032b(context);
    }

    public static boolean canCollectPersonalInformation() {
        PersonalInfoManager personalInfoManager = f4267h;
        return personalInfoManager != null && personalInfoManager.canCollectPersonalInformation();
    }

    /* renamed from: d */
    public static void m3941d(SdkInitializationListener sdkInitializationListener) {
        f4265f = false;
        f4264e = true;
        new Handler(Looper.getMainLooper()).post(new RunnableC1012a(sdkInitializationListener));
    }

    public static void disableViewability() {
        ViewabilityManager.m3906a();
    }

    @Deprecated
    public static void disableViewability(ExternalViewabilitySessionManager.ViewabilityVendor viewabilityVendor) {
        ViewabilityManager.m3906a();
    }

    /* renamed from: e */
    public static void m3940e(Activity activity, SdkConfiguration sdkConfiguration) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(sdkConfiguration);
        try {
            new Reflection.MethodBuilder(null, "initializeRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).setAccessible().addParam((Class<Class>) Activity.class, (Class) activity).addParam((Class<Class>) SdkConfiguration.class, (Class) sdkConfiguration).execute();
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedVideo was called without the rewarded video module");
        } catch (Exception e3) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while initializing rewarded video", e3);
        }
    }

    @VisibleForTesting
    /* renamed from: f */
    public static void m3939f(Activity activity) {
        if (!f4262c) {
            f4262c = true;
            try {
                f4263d = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedVideoManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException | NoSuchMethodException e) {
            }
        }
        Method method = f4263d;
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

    public static List<String> getAdapterConfigurationInfo() {
        AdapterConfigurationManager adapterConfigurationManager = f4266g;
        if (adapterConfigurationManager != null) {
            return adapterConfigurationManager.getAdapterConfigurationInfo();
        }
        return null;
    }

    public static BrowserAgent getBrowserAgent() {
        Preconditions.checkNotNull(f4260a);
        return f4260a;
    }

    public static LocationAwareness getLocationAwareness() {
        return LocationService.m3957a().m3956b();
    }

    public static int getLocationPrecision() {
        return LocationService.m3957a().m3954d();
    }

    public static long getMinimumLocationRefreshTimeMillis() {
        return LocationService.m3957a().m3953e();
    }

    public static PersonalInfoManager getPersonalInformationManager() {
        return f4267h;
    }

    public static void initializeSdk(Context context, SdkConfiguration sdkConfiguration, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(sdkConfiguration);
        MoPubLog.setLogLevel(sdkConfiguration.m3919a());
        MoPubLog.log(MoPubLog.SdkLogEvent.INIT_STARTED, new Object[0]);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "SDK initialize has been called with ad unit: " + sdkConfiguration.getAdUnitId());
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            MoPubLog.log(sdkLogEvent, context.getPackageName() + " was built with target SDK version of " + applicationInfo.targetSdkVersion);
        }
        ViewabilityManager.activate(context.getApplicationContext());
        if (context instanceof Activity) {
            m3940e((Activity) context, sdkConfiguration);
        }
        if (f4264e) {
            MoPubLog.log(sdkLogEvent, "MoPub SDK is already initialized");
            m3941d(sdkInitializationListener);
        } else if (f4265f) {
            MoPubLog.log(sdkLogEvent, "MoPub SDK is currently initializing.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            MoPubLog.log(sdkLogEvent, "MoPub can only be initialized on the main thread.");
        } else {
            f4265f = true;
            Networking.getRequestQueue(context);
            yf1 yf1Var = new yf1(new C1013b(sdkInitializationListener), 2);
            PersonalInfoManager personalInfoManager = new PersonalInfoManager(context, sdkConfiguration.getAdUnitId(), yf1Var);
            f4267h = personalInfoManager;
            personalInfoManager.setAllowLegitimateInterest(sdkConfiguration.getLegitimateInterestAllowed());
            ClientMetadata.getInstance(context);
            AdapterConfigurationManager adapterConfigurationManager = new AdapterConfigurationManager(yf1Var);
            f4266g = adapterConfigurationManager;
            adapterConfigurationManager.initialize(context, sdkConfiguration.getAdapterConfigurationClasses(), sdkConfiguration.getMediatedNetworkConfigurations(), sdkConfiguration.getMoPubRequestOptions());
        }
    }

    public static boolean isSdkInitialized() {
        return f4264e;
    }

    public static void onBackPressed(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    public static void onCreate(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        m3939f(activity);
    }

    public static void onDestroy(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onPause(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onRestart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        m3939f(activity);
    }

    public static void onResume(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        m3939f(activity);
    }

    public static void onStart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        m3939f(activity);
    }

    public static void onStop(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    @Deprecated
    @VisibleForTesting
    public static void resetBrowserAgent() {
        f4260a = BrowserAgent.IN_APP;
        f4261b = false;
    }

    public static void setAllowLegitimateInterest(boolean z) {
        PersonalInfoManager personalInfoManager = f4267h;
        if (personalInfoManager != null) {
            personalInfoManager.setAllowLegitimateInterest(z);
        }
    }

    public static void setBrowserAgent(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        f4260a = browserAgent;
        f4261b = true;
    }

    public static void setBrowserAgentFromAdServer(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        if (!f4261b) {
            f4260a = browserAgent;
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Browser agent already overridden by client with value " + f4260a);
    }

    public static void setEngineInformation(AppEngineInfo appEngineInfo) {
        Preconditions.checkNotNull(appEngineInfo);
        if (TextUtils.isEmpty(appEngineInfo.f4147a) || TextUtils.isEmpty(appEngineInfo.f4148b)) {
            return;
        }
        BaseUrlGenerator.setAppEngineInfo(appEngineInfo);
    }

    public static void setLocationAwareness(LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        LocationService.m3957a().m3950h(locationAwareness);
    }

    public static void setLocationPrecision(int i) {
        LocationService.m3957a().m3949i(i);
    }

    public static void setMinimumLocationRefreshTimeMillis(long j) {
        LocationService.m3957a().m3948j(j);
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        BaseUrlGenerator.setWrapperVersion(str);
    }

    public static boolean shouldAllowLegitimateInterest() {
        PersonalInfoManager personalInfoManager = f4267h;
        return personalInfoManager != null && personalInfoManager.shouldAllowLegitimateInterest();
    }
}
