package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
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
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub.class */
public class MoPub {
    public static final String ANALYTICS_MOPUB_TAG = "mopub";
    public static final String SDK_VERSION = "5.16.4";
    public static AnalyticsEventsListener analyticsEventsListener;

    /* renamed from: d */
    private static Method f58758d;

    /* renamed from: g */
    private static AdapterConfigurationManager f58761g;

    /* renamed from: h */
    private static PersonalInfoManager f58762h;

    /* renamed from: a */
    private static volatile BrowserAgent f58755a = BrowserAgent.IN_APP;

    /* renamed from: b */
    private static volatile boolean f58756b = false;

    /* renamed from: c */
    private static boolean f58757c = false;

    /* renamed from: e */
    private static boolean f58759e = false;

    /* renamed from: f */
    private static boolean f58760f = false;

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

        void onAdLoggingImpression(String str, String str2, double d, AD_TYPE_AND_SIZE ad_type_and_size);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.common.MoPub$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPub$a.class */
    public static final class C16686a implements SdkInitializationListener {

        /* renamed from: a */
        private SdkInitializationListener f58764a;

        C16686a(SdkInitializationListener sdkInitializationListener) {
            this.f58764a = sdkInitializationListener;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public final void onInitializationFinished() {
            AdapterConfigurationManager adapterConfigurationManager = MoPub.f58761g;
            if (adapterConfigurationManager != null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FINISHED, adapterConfigurationManager.getAdapterConfigurationInfo());
            }
            MoPub.m6733b(this.f58764a);
            this.f58764a = null;
        }
    }

    /* renamed from: a */
    public static String m6735a(Context context) {
        Preconditions.checkNotNull(context);
        AdapterConfigurationManager adapterConfigurationManager = f58761g;
        if (adapterConfigurationManager == null) {
            return null;
        }
        return adapterConfigurationManager.getTokensAsJsonString(context);
    }

    /* renamed from: a */
    private static void m6736a(Activity activity) {
        if (!f58757c) {
            f58757c = true;
            try {
                f58758d = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedAdManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException | NoSuchMethodException e) {
            }
        }
        Method method = f58758d;
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

    /* renamed from: b */
    public static void m6733b(final SdkInitializationListener sdkInitializationListener) {
        f58760f = false;
        f58759e = true;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.mopub.common.MoPub.1
            @Override // java.lang.Runnable
            public final void run() {
                SdkInitializationListener sdkInitializationListener2 = sdkInitializationListener;
                if (sdkInitializationListener2 != null) {
                    sdkInitializationListener2.onInitializationFinished();
                }
            }
        });
    }

    public static boolean canCollectPersonalInformation() {
        PersonalInfoManager personalInfoManager = f58762h;
        return personalInfoManager != null && personalInfoManager.canCollectPersonalInformation();
    }

    public static void disableViewability() {
        ViewabilityManager.m6706c();
    }

    @Deprecated
    public static void disableViewability(ExternalViewabilitySessionManager.ViewabilityVendor viewabilityVendor) {
        ViewabilityManager.m6706c();
    }

    public static List<String> getAdapterConfigurationInfo() {
        AdapterConfigurationManager adapterConfigurationManager = f58761g;
        if (adapterConfigurationManager != null) {
            return adapterConfigurationManager.getAdapterConfigurationInfo();
        }
        return null;
    }

    public static BrowserAgent getBrowserAgent() {
        Preconditions.checkNotNull(f58755a);
        return f58755a;
    }

    public static LocationAwareness getLocationAwareness() {
        return LocationService.m6739a().f58751c;
    }

    public static int getLocationPrecision() {
        return LocationService.m6739a().f58752d;
    }

    public static long getMinimumLocationRefreshTimeMillis() {
        return LocationService.m6739a().f58753e;
    }

    public static PersonalInfoManager getPersonalInformationManager() {
        return f58762h;
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

    /* JADX WARN: Type inference failed for: r0v110, types: [double] */
    /* JADX WARN: Type inference failed for: r0v118, types: [double] */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    /* JADX WARN: Type inference failed for: r0v61, types: [double] */
    /* JADX WARN: Type inference failed for: r0v90, types: [double] */
    /* JADX WARN: Type inference failed for: r0v95, types: [double] */
    public static double getPublisherRevenue(ImpressionData impressionData, Collection<String> collection, Collection<String> collection2, Map<String, Object> map, Bundle bundle) {
        char c;
        Double publisherRevenue;
        char doubleValue = (impressionData == null || (publisherRevenue = impressionData.getPublisherRevenue()) == null) ? (char) 0 : publisherRevenue.doubleValue() * 1000.0d;
        char c2 = doubleValue;
        if (doubleValue <= 0.0d) {
            if (collection != null && collection.size() > 0) {
                Iterator<String> it2 = collection.iterator();
                char c3 = 0;
                char c4 = doubleValue;
                while (true) {
                    char c5 = c3;
                    doubleValue = c4;
                    c = c5;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Uri parse = Uri.parse(it2.next());
                    c3 = c5;
                    if (parse != null) {
                        String queryParameter = parse.getQueryParameter("rev");
                        char c6 = c4;
                        if (!TextUtils.isEmpty(queryParameter)) {
                            try {
                                ?? parseDouble = Double.parseDouble(queryParameter);
                                c6 = parseDouble;
                                if (parseDouble > 0.0d) {
                                    doubleValue = parseDouble * 1000.0d;
                                    c = c5;
                                    break;
                                }
                            } catch (NumberFormatException e) {
                                c6 = c4;
                            }
                        }
                        c4 = c6;
                        c3 = c5;
                        if (c5 <= 0.0d) {
                            String queryParameter2 = parse.getQueryParameter("charge_price");
                            c4 = c6;
                            c3 = c5;
                            if (!TextUtils.isEmpty(queryParameter2)) {
                                try {
                                    c3 = Double.parseDouble(queryParameter2);
                                    c4 = c6;
                                } catch (NumberFormatException e2) {
                                    c4 = c6;
                                    c3 = c5;
                                }
                            }
                        }
                    }
                }
            } else {
                c = 0;
            }
            int i = (doubleValue > 0.0d ? 1 : (doubleValue == 0.0d ? 0 : -1));
            char c7 = c;
            if (i <= 0) {
                c7 = c;
                if (c <= 0.0d) {
                    c7 = c;
                    if (collection2 != null) {
                        c7 = c;
                        if (collection2.size() > 0) {
                            Iterator<String> it3 = collection2.iterator();
                            while (true) {
                                char c8 = c;
                                c7 = c8;
                                if (!it3.hasNext()) {
                                    break;
                                }
                                Uri parse2 = Uri.parse(it3.next());
                                c = c8;
                                if (parse2 != null) {
                                    String queryParameter3 = parse2.getQueryParameter("charge_price");
                                    c = c8;
                                    if (!TextUtils.isEmpty(queryParameter3)) {
                                        try {
                                            c7 = Double.parseDouble(queryParameter3);
                                            c = c7;
                                            if (c7 > 0.0d) {
                                                break;
                                            }
                                        } catch (NumberFormatException e3) {
                                            c = c8;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            c2 = doubleValue;
            if (i <= 0) {
                c2 = c7 * 0;
            }
        }
        char c9 = c2;
        if (c2 <= 0.0d) {
            c9 = c2;
            if (map != null) {
                Object obj = map.get(DataKeys.CALLAPP_FLOOR_PRICE_KEY);
                c9 = c2;
                if (obj instanceof Double) {
                    c9 = ((Double) obj).doubleValue();
                }
            }
        }
        char c10 = c9;
        if (c9 <= 0.0d) {
            c10 = c9;
            if (bundle != null) {
                c10 = bundle.getDouble(DataKeys.CALLAPP_FLOOR_PRICE_KEY);
            }
        }
        return c10;
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
            } catch (ClassNotFoundException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedAds was called without the fullscreen module");
            } catch (NoSuchMethodException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedAds was called without the fullscreen module");
            } catch (Exception e3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while initializing rewarded ads", e3);
            }
        }
        if (f58759e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is already initialized");
            m6733b(sdkInitializationListener);
        } else if (f58760f) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is currently initializing.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub can only be initialized on the main thread.");
        } else {
            f58760f = true;
            Networking.getRequestQueue(context);
            C16716b c16716b = new C16716b(new C16686a(sdkInitializationListener), 2);
            PersonalInfoManager personalInfoManager = new PersonalInfoManager(context, sdkConfiguration.getAdUnitId(), c16716b);
            f58762h = personalInfoManager;
            personalInfoManager.setAllowLegitimateInterest(sdkConfiguration.getLegitimateInterestAllowed());
            ClientMetadata.getInstance(context);
            AdapterConfigurationManager adapterConfigurationManager = new AdapterConfigurationManager(c16716b);
            f58761g = adapterConfigurationManager;
            adapterConfigurationManager.initialize(context, sdkConfiguration.getAdapterConfigurationClasses(), sdkConfiguration.getMediatedNetworkConfigurations(), sdkConfiguration.getMoPubRequestOptions());
        }
    }

    public static boolean isSdkInitialized() {
        return f58759e;
    }

    public static void onBackPressed(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    public static void onCreate(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        m6736a(activity);
    }

    public static void onDestroy(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onPause(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onRestart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        m6736a(activity);
    }

    public static void onResume(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        m6736a(activity);
    }

    public static void onStart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        m6736a(activity);
    }

    public static void onStop(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    public static void registerAdAnalyticsListener(AnalyticsEventsListener analyticsEventsListener2) {
        analyticsEventsListener = analyticsEventsListener2;
    }

    @Deprecated
    public static void resetBrowserAgent() {
        f58755a = BrowserAgent.IN_APP;
        f58756b = false;
    }

    public static void setAllowLegitimateInterest(boolean z) {
        PersonalInfoManager personalInfoManager = f58762h;
        if (personalInfoManager != null) {
            personalInfoManager.setAllowLegitimateInterest(z);
        }
    }

    public static void setBrowserAgent(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        f58755a = browserAgent;
        f58756b = true;
    }

    public static void setBrowserAgentFromAdServer(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        if (!f58756b) {
            f58755a = browserAgent;
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Browser agent already overridden by client with value " + f58755a);
    }

    public static void setEngineInformation(AppEngineInfo appEngineInfo) {
        Preconditions.checkNotNull(appEngineInfo);
        if (TextUtils.isEmpty(appEngineInfo.f58653a) || TextUtils.isEmpty(appEngineInfo.f58654b)) {
            return;
        }
        BaseUrlGenerator.setAppEngineInfo(appEngineInfo);
    }

    public static void setLocationAwareness(LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        LocationService m6739a = LocationService.m6739a();
        Preconditions.checkNotNull(locationAwareness);
        m6739a.f58751c = locationAwareness;
    }

    public static void setLocationPrecision(int i) {
        LocationService.m6739a().f58752d = Math.min(Math.max(0, i), 6);
    }

    public static void setMinimumLocationRefreshTimeMillis(long j) {
        LocationService.m6739a().f58753e = j;
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        BaseUrlGenerator.setWrapperVersion(str);
    }

    public static boolean shouldAllowLegitimateInterest() {
        PersonalInfoManager personalInfoManager = f58762h;
        return personalInfoManager != null && personalInfoManager.shouldAllowLegitimateInterest();
    }
}
