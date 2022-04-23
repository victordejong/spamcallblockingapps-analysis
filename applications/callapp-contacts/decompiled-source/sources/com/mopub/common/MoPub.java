package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.Reflection;
import com.mopub.network.AdResponse;
import com.mopub.network.ImpressionData;
import com.mopub.network.Networking;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub.class */
public class MoPub {
    public static final String ANALYTICS_MOPUB_TAG = "mopub";
    public static final String SDK_VERSION = "5.16.4";
    public static AnalyticsEventsListener analyticsEventsListener;

    /* renamed from: d  reason: collision with root package name */
    private static Method f33838d;
    private static AdapterConfigurationManager g;
    private static PersonalInfoManager h;

    /* renamed from: a  reason: collision with root package name */
    private static volatile BrowserAgent f33835a = BrowserAgent.IN_APP;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f33836b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f33837c = false;
    private static boolean e = false;
    private static boolean f = false;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub$AD_TYPE_AND_SIZE.class */
    public enum AD_TYPE_AND_SIZE {
        NATIVE("Native", "Native"),
        BANNER_320X50("Banner", "320X50"),
        BANNER_300X250("Banner", "300X250"),
        INTERSTITIAL("Interstitial", "Fullscreen");
        
        private String size;
        private String type;

        AD_TYPE_AND_SIZE(String str, String str2) {
            this.type = str;
            this.size = str2;
        }

        public final String getSize() {
            return this.size;
        }

        public final String getType() {
            return this.type;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub$AnalyticsEventsListener.class */
    public interface AnalyticsEventsListener {
        void onAdClicked(String str, String str2, AD_TYPE_AND_SIZE ad_type_and_size);

        void onAdLoggingImpression(String str, String str2, double d2, AD_TYPE_AND_SIZE ad_type_and_size);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub$BrowserAgent.class */
    public enum BrowserAgent {
        IN_APP,
        NATIVE;

        public static BrowserAgent fromHeader(Integer num) {
            if (num != null && num.intValue() == 1) {
                return NATIVE;
            }
            return IN_APP;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub$LocationAwareness.class */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub$a.class */
    static final class a implements SdkInitializationListener {

        /* renamed from: a  reason: collision with root package name */
        private SdkInitializationListener f33840a;

        a(SdkInitializationListener sdkInitializationListener) {
            this.f33840a = sdkInitializationListener;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public final void onInitializationFinished() {
            AdapterConfigurationManager adapterConfigurationManager = MoPub.g;
            if (adapterConfigurationManager != null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FINISHED, adapterConfigurationManager.getAdapterConfigurationInfo());
            }
            MoPub.b(this.f33840a);
            this.f33840a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        Preconditions.checkNotNull(context);
        AdapterConfigurationManager adapterConfigurationManager = g;
        if (adapterConfigurationManager == null) {
            return null;
        }
        return adapterConfigurationManager.getTokensAsJsonString(context);
    }

    private static void a(Activity activity) {
        if (!f33837c) {
            f33837c = true;
            try {
                f33838d = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedAdManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException | NoSuchMethodException e2) {
            }
        }
        Method method = f33838d;
        if (method != null) {
            try {
                method.invoke(null, activity);
            } catch (IllegalAccessException e3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while attempting to access the update activity method - this should not have happened", e3);
            } catch (InvocationTargetException e4) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while attempting to access the update activity method - this should not have happened", e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final SdkInitializationListener sdkInitializationListener) {
        f = false;
        e = true;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mopub.common.MoPub.1
            @Override // java.lang.Runnable
            public final void run() {
                SdkInitializationListener sdkInitializationListener2 = SdkInitializationListener.this;
                if (sdkInitializationListener2 != null) {
                    sdkInitializationListener2.onInitializationFinished();
                }
            }
        });
    }

    public static boolean canCollectPersonalInformation() {
        PersonalInfoManager personalInfoManager = h;
        return personalInfoManager != null && personalInfoManager.canCollectPersonalInformation();
    }

    public static void disableViewability() {
        ViewabilityManager.c();
    }

    @Deprecated
    public static void disableViewability(ExternalViewabilitySessionManager.ViewabilityVendor viewabilityVendor) {
        ViewabilityManager.c();
    }

    public static List<String> getAdapterConfigurationInfo() {
        AdapterConfigurationManager adapterConfigurationManager = g;
        if (adapterConfigurationManager != null) {
            return adapterConfigurationManager.getAdapterConfigurationInfo();
        }
        return null;
    }

    public static BrowserAgent getBrowserAgent() {
        Preconditions.checkNotNull(f33835a);
        return f33835a;
    }

    public static LocationAwareness getLocationAwareness() {
        return LocationService.a().f33832c;
    }

    public static int getLocationPrecision() {
        return LocationService.a().f33833d;
    }

    public static long getMinimumLocationRefreshTimeMillis() {
        return LocationService.a().e;
    }

    public static PersonalInfoManager getPersonalInformationManager() {
        return h;
    }

    public static double getPublisherRevenue(AdResponse adResponse, Map<String, Object> map, Bundle bundle) {
        List<String> list;
        List<String> list2;
        ImpressionData impressionData = null;
        if (adResponse != null) {
            impressionData = adResponse.getImpressionData();
            list = adResponse.getImpressionTrackingUrls();
            list2 = adResponse.getClickTrackingUrls();
        } else {
            list2 = null;
            list = null;
        }
        return getPublisherRevenue(impressionData, list, list2, map, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v90, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0, types: [double] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11, types: [double] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2, types: [double] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6, types: [double] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [double] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17, types: [double] */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26, types: [double] */
    /* JADX WARN: Type inference failed for: r12v3, types: [double] */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [double] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6, types: [double] */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double getPublisherRevenue(com.mopub.network.ImpressionData r5, java.util.Collection<java.lang.String> r6, java.util.Collection<java.lang.String> r7, java.util.Map<java.lang.String, java.lang.Object> r8, android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.MoPub.getPublisherRevenue(com.mopub.network.ImpressionData, java.util.Collection, java.util.Collection, java.util.Map, android.os.Bundle):double");
    }

    public static void initializeSdk(Context context, SdkConfiguration sdkConfiguration, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(sdkConfiguration);
        MoPubLog.setLogLevel(sdkConfiguration.getLogLevel());
        MoPubLog.log(MoPubLog.SdkLogEvent.INIT_STARTED, new Object[0]);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "SDK initialize has been called with ad unit: " + sdkConfiguration.getAdUnitId());
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, context.getPackageName() + " was built with target SDK version of " + applicationInfo.targetSdkVersion);
        }
        ViewabilityManager.activate(context.getApplicationContext());
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            Preconditions.checkNotNull(activity);
            Preconditions.checkNotNull(sdkConfiguration);
            try {
                new Reflection.MethodBuilder(null, "initializeRewardedAds").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedAds")).setAccessible().addParam((Class<Class>) Activity.class, (Class) activity).addParam((Class<Class>) SdkConfiguration.class, (Class) sdkConfiguration).execute();
            } catch (ClassNotFoundException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedAds was called without the fullscreen module");
            } catch (NoSuchMethodException e3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedAds was called without the fullscreen module");
            } catch (Exception e4) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while initializing rewarded ads", e4);
            }
        }
        if (e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is already initialized");
            b(sdkInitializationListener);
        } else if (f) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is currently initializing.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub can only be initialized on the main thread.");
        } else {
            f = true;
            Networking.getRequestQueue(context);
            b bVar = new b(new a(sdkInitializationListener), 2);
            PersonalInfoManager personalInfoManager = new PersonalInfoManager(context, sdkConfiguration.getAdUnitId(), bVar);
            h = personalInfoManager;
            personalInfoManager.setAllowLegitimateInterest(sdkConfiguration.getLegitimateInterestAllowed());
            ClientMetadata.getInstance(context);
            AdapterConfigurationManager adapterConfigurationManager = new AdapterConfigurationManager(bVar);
            g = adapterConfigurationManager;
            adapterConfigurationManager.initialize(context, sdkConfiguration.getAdapterConfigurationClasses(), sdkConfiguration.getMediatedNetworkConfigurations(), sdkConfiguration.getMoPubRequestOptions());
        }
    }

    public static boolean isSdkInitialized() {
        return e;
    }

    public static void onBackPressed(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    public static void onCreate(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        a(activity);
    }

    public static void onDestroy(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onPause(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onRestart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        a(activity);
    }

    public static void onResume(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        a(activity);
    }

    public static void onStart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        a(activity);
    }

    public static void onStop(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    public static void registerAdAnalyticsListener(AnalyticsEventsListener analyticsEventsListener2) {
        analyticsEventsListener = analyticsEventsListener2;
    }

    @Deprecated
    public static void resetBrowserAgent() {
        f33835a = BrowserAgent.IN_APP;
        f33836b = false;
    }

    public static void setAllowLegitimateInterest(boolean z) {
        PersonalInfoManager personalInfoManager = h;
        if (personalInfoManager != null) {
            personalInfoManager.setAllowLegitimateInterest(z);
        }
    }

    public static void setBrowserAgent(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        f33835a = browserAgent;
        f33836b = true;
    }

    public static void setBrowserAgentFromAdServer(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        if (f33836b) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Browser agent already overridden by client with value " + f33835a);
            return;
        }
        f33835a = browserAgent;
    }

    public static void setEngineInformation(AppEngineInfo appEngineInfo) {
        Preconditions.checkNotNull(appEngineInfo);
        if (!TextUtils.isEmpty(appEngineInfo.f33778a) && !TextUtils.isEmpty(appEngineInfo.f33779b)) {
            BaseUrlGenerator.setAppEngineInfo(appEngineInfo);
        }
    }

    public static void setLocationAwareness(LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        LocationService a2 = LocationService.a();
        Preconditions.checkNotNull(locationAwareness);
        a2.f33832c = locationAwareness;
    }

    public static void setLocationPrecision(int i) {
        LocationService.a().f33833d = Math.min(Math.max(0, i), 6);
    }

    public static void setMinimumLocationRefreshTimeMillis(long j) {
        LocationService.a().e = j;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        BaseUrlGenerator.setWrapperVersion(str);
    }

    public static boolean shouldAllowLegitimateInterest() {
        PersonalInfoManager personalInfoManager = h;
        return personalInfoManager != null && personalInfoManager.shouldAllowLegitimateInterest();
    }
}
