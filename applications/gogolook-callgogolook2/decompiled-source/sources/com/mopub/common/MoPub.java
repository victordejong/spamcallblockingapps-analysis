package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.Reflection;
import com.mopub.network.Networking;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p081h.p430l.p431a.C10685d;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub.class */
public class MoPub {
    public static final String SDK_VERSION = "5.11.1";
    @Nullable

    /* renamed from: d */
    public static Method f8107d;

    /* renamed from: g */
    public static AdapterConfigurationManager f8110g;

    /* renamed from: h */
    public static PersonalInfoManager f8111h;
    @NonNull

    /* renamed from: a */
    public static volatile BrowserAgent f8104a = BrowserAgent.IN_APP;

    /* renamed from: b */
    public static volatile boolean f8105b = false;

    /* renamed from: c */
    public static boolean f8106c = false;

    /* renamed from: e */
    public static boolean f8108e = false;

    /* renamed from: f */
    public static boolean f8109f = false;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$BrowserAgent.class */
    public enum BrowserAgent {
        IN_APP,
        NATIVE;

        @NonNull
        public static BrowserAgent fromHeader(@Nullable Integer num) {
            if (num == null) {
                return IN_APP;
            }
            return num.intValue() == 1 ? NATIVE : IN_APP;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$LocationAwareness.class */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED
    }

    /* renamed from: com.mopub.common.MoPub$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$a.class */
    public static final class RunnableC3763a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ SdkInitializationListener f8114a;

        public RunnableC3763a(SdkInitializationListener sdkInitializationListener) {
            this.f8114a = sdkInitializationListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            SdkInitializationListener sdkInitializationListener = this.f8114a;
            if (sdkInitializationListener != null) {
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPub$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$b.class */
    public static class C3764b implements SdkInitializationListener {
        @Nullable

        /* renamed from: a */
        public SdkInitializationListener f8115a;

        public C3764b(@Nullable SdkInitializationListener sdkInitializationListener) {
            this.f8115a = sdkInitializationListener;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            AdapterConfigurationManager adapterConfigurationManager = MoPub.f8110g;
            if (adapterConfigurationManager != null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FINISHED, adapterConfigurationManager.getAdapterConfigurationInfo());
            }
            MoPub.m30779b(this.f8115a);
            this.f8115a = null;
        }
    }

    @Nullable
    /* renamed from: a */
    public static String m30781a(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        AdapterConfigurationManager adapterConfigurationManager = f8110g;
        if (adapterConfigurationManager == null) {
            return null;
        }
        return adapterConfigurationManager.m30875b(context);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m30783a(@NonNull Activity activity) {
        if (!f8106c) {
            f8106c = true;
            try {
                f8107d = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedVideoManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException | NoSuchMethodException e) {
            }
        }
        Method method = f8107d;
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

    /* renamed from: a */
    public static void m30782a(@NonNull Activity activity, @NonNull SdkConfiguration sdkConfiguration) {
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

    /* renamed from: b */
    public static void m30779b(@Nullable SdkInitializationListener sdkInitializationListener) {
        f8109f = false;
        f8108e = true;
        new Handler(Looper.getMainLooper()).post(new RunnableC3763a(sdkInitializationListener));
    }

    public static boolean canCollectPersonalInformation() {
        PersonalInfoManager personalInfoManager = f8111h;
        return personalInfoManager != null && personalInfoManager.canCollectPersonalInformation();
    }

    public static void disableViewability(@NonNull ExternalViewabilitySessionManager.ViewabilityVendor viewabilityVendor) {
        Preconditions.checkNotNull(viewabilityVendor);
        viewabilityVendor.disable();
    }

    @Nullable
    public static List<String> getAdapterConfigurationInfo() {
        AdapterConfigurationManager adapterConfigurationManager = f8110g;
        if (adapterConfigurationManager != null) {
            return adapterConfigurationManager.getAdapterConfigurationInfo();
        }
        return null;
    }

    @NonNull
    public static BrowserAgent getBrowserAgent() {
        Preconditions.checkNotNull(f8104a);
        return f8104a;
    }

    @NonNull
    public static LocationAwareness getLocationAwareness() {
        return LocationService.m30788d().m30796a();
    }

    public static int getLocationPrecision() {
        return LocationService.m30788d().m30790b();
    }

    public static long getMinimumLocationRefreshTimeMillis() {
        return LocationService.m30788d().m30789c();
    }

    @Nullable
    public static PersonalInfoManager getPersonalInformationManager() {
        return f8111h;
    }

    public static void initializeSdk(@NonNull Context context, @NonNull SdkConfiguration sdkConfiguration, @Nullable SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(sdkConfiguration);
        MoPubLog.setLogLevel(sdkConfiguration.m30759a());
        MoPubLog.log(MoPubLog.SdkLogEvent.INIT_STARTED, new Object[0]);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "SDK initialize has been called with ad unit: " + sdkConfiguration.getAdUnitId());
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, context.getPackageName() + " was built with target SDK version of " + applicationInfo.targetSdkVersion);
        }
        if (context instanceof Activity) {
            m30782a((Activity) context, sdkConfiguration);
        }
        if (f8108e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is already initialized");
            m30779b(sdkInitializationListener);
        } else if (f8109f) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is currently initializing.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub can only be initialized on the main thread.");
        } else {
            f8109f = true;
            Networking.getRequestQueue(context);
            C10685d dVar = new C10685d(new C3764b(sdkInitializationListener), 2);
            f8111h = new PersonalInfoManager(context, sdkConfiguration.getAdUnitId(), dVar);
            f8111h.setAllowLegitimateInterest(sdkConfiguration.getLegitimateInterestAllowed());
            ClientMetadata.getInstance(context);
            f8110g = new AdapterConfigurationManager(dVar);
            f8110g.initialize(context, sdkConfiguration.getAdapterConfigurationClasses(), sdkConfiguration.getMediatedNetworkConfigurations(), sdkConfiguration.getMoPubRequestOptions());
        }
    }

    public static boolean isSdkInitialized() {
        return f8108e;
    }

    public static void onBackPressed(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    public static void onCreate(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        m30783a(activity);
    }

    public static void onDestroy(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onPause(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onRestart(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        m30783a(activity);
    }

    public static void onResume(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        m30783a(activity);
    }

    public static void onStart(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        m30783a(activity);
    }

    public static void onStop(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    @Deprecated
    @VisibleForTesting
    public static void resetBrowserAgent() {
        f8104a = BrowserAgent.IN_APP;
        f8105b = false;
    }

    public static void setAllowLegitimateInterest(boolean z) {
        PersonalInfoManager personalInfoManager = f8111h;
        if (personalInfoManager != null) {
            personalInfoManager.setAllowLegitimateInterest(z);
        }
    }

    public static void setBrowserAgent(@NonNull BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        f8104a = browserAgent;
        f8105b = true;
    }

    public static void setBrowserAgentFromAdServer(@NonNull BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        if (f8105b) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Browser agent already overridden by client with value " + f8104a);
            return;
        }
        f8104a = browserAgent;
    }

    public static void setEngineInformation(@NonNull AppEngineInfo appEngineInfo) {
        Preconditions.checkNotNull(appEngineInfo);
        if (!TextUtils.isEmpty(appEngineInfo.f7991a) && !TextUtils.isEmpty(appEngineInfo.f7992b)) {
            BaseUrlGenerator.setAppEngineInfo(appEngineInfo);
        }
    }

    public static void setLocationAwareness(@NonNull LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        LocationService.m30788d().m30791a(locationAwareness);
    }

    public static void setLocationPrecision(int i) {
        LocationService.m30788d().m30795a(i);
    }

    public static void setMinimumLocationRefreshTimeMillis(long j) {
        LocationService.m30788d().m30794a(j);
    }

    public static void setWrapperVersion(@NonNull String str) {
        Preconditions.checkNotNull(str);
        BaseUrlGenerator.setWrapperVersion(str);
    }

    public static boolean shouldAllowLegitimateInterest() {
        PersonalInfoManager personalInfoManager = f8111h;
        return personalInfoManager != null && personalInfoManager.shouldAllowLegitimateInterest();
    }
}
