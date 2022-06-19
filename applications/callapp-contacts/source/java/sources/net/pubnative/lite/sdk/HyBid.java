package net.pubnative.lite.sdk;

import android.app.Application;
import net.pubnative.lite.sdk.DeviceInfo;
import net.pubnative.lite.sdk.UserDataManager;
import net.pubnative.lite.sdk.analytics.ReportingController;
import net.pubnative.lite.sdk.analytics.ReportingEventCallback;
import net.pubnative.lite.sdk.api.PNApiClient;
import net.pubnative.lite.sdk.browser.BrowserManager;
import net.pubnative.lite.sdk.config.ConfigManager;
import net.pubnative.lite.sdk.location.HyBidLocationManager;
import net.pubnative.lite.sdk.reporting.ReportingDelegate;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.viewability.ViewabilityManager;
import net.pubnative.lite.sdk.vpaid.VideoAdCache;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/HyBid.class */
public class HyBid {
    public static final String HYBID_VERSION = "2.4.3";
    public static final String OMSDK_VERSION = "1.3.17";
    public static final String OM_PARTNER_NAME = "pubnativenet";
    private static final String REPORTING_URL = "https://rta-analytics.pubnative.io/event";
    private static final String TAG = "HyBid";
    private static AdCache sAdCache;
    private static String sAge;
    private static PNApiClient sApiClient;
    private static String sAppToken;
    private static String sAppVersion;
    private static BrowserManager sBrowserManager;
    private static String sBundleId;
    private static ConfigManager sConfigManager;
    private static String sContentAgeRating;
    private static boolean sCoppaEnabled = false;
    private static String sDeveloperDomain;
    private static DeviceInfo sDeviceInfo;
    private static String sGender;
    private static String sIabCategory;
    private static String sIabSubcategory;
    private static boolean sInitialized = false;
    private static Integer sInterstitialSkipOffset = 0;
    private static String sKeywords;
    private static HyBidLocationManager sLocationManager;
    private static boolean sLocationTrackingEnabled = true;
    private static boolean sLocationUpdatesEnabled = true;
    private static ReportingController sReportingController;
    private static ReportingDelegate sReportingDelegate;
    private static boolean sTestMode = false;
    private static UserDataManager sUserDataManager;
    private static VgiIdManager sVgiIdManager;
    private static VideoAdCache sVideoAdCache;
    private static ViewabilityManager sViewabilityManager;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/HyBid$InitialisationListener.class */
    public interface InitialisationListener {
        void onInitialisationFinished(boolean z);
    }

    public static void addReportingCallback(ReportingEventCallback reportingEventCallback) {
        sReportingController.addCallback(reportingEventCallback);
    }

    public static boolean areLocationUpdatesEnabled() {
        return sLocationUpdatesEnabled;
    }

    public static AdCache getAdCache() {
        return sAdCache;
    }

    public static String getAge() {
        return sAge;
    }

    public static PNApiClient getApiClient() {
        return sApiClient;
    }

    public static String getAppToken() {
        return sAppToken;
    }

    public static String getAppVersion() {
        return sAppVersion;
    }

    public static BrowserManager getBrowserManager() {
        return sBrowserManager;
    }

    public static String getBundleId() {
        return sBundleId;
    }

    public static ConfigManager getConfigManager() {
        return sConfigManager;
    }

    public static String getContentAgeRating() {
        return sContentAgeRating;
    }

    public static String getDeveloperDomain() {
        return sDeveloperDomain;
    }

    public static DeviceInfo getDeviceInfo() {
        return sDeviceInfo;
    }

    public static String getGender() {
        return sGender;
    }

    public static String getHyBidVersion() {
        return "2.4.3";
    }

    public static String getIabCategory() {
        return sIabCategory;
    }

    public static Integer getInterstitialSkipOffset() {
        return sInterstitialSkipOffset;
    }

    public static String getKeywords() {
        return sKeywords;
    }

    public static HyBidLocationManager getLocationManager() {
        return sLocationManager;
    }

    public static ReportingController getReportingController() {
        return sReportingController;
    }

    public static UserDataManager getUserDataManager() {
        return sUserDataManager;
    }

    public static VgiIdManager getVgiIdManager() {
        return sVgiIdManager;
    }

    public static VideoAdCache getVideoAdCache() {
        VideoAdCache videoAdCache;
        synchronized (HyBid.class) {
            try {
                videoAdCache = sVideoAdCache;
            } catch (Throwable th) {
                throw th;
            }
        }
        return videoAdCache;
    }

    public static ViewabilityManager getViewabilityManager() {
        return sViewabilityManager;
    }

    public static String getsIabSubcategory() {
        return sIabSubcategory;
    }

    public static void initialize(String str, Application application) {
        initialize(str, application, null);
    }

    public static void initialize(String str, Application application, final InitialisationListener initialisationListener) {
        sAppToken = str;
        sBundleId = application.getPackageName();
        sApiClient = new PNApiClient(application);
        if (application.getSystemService("location") != null) {
            sLocationManager = new HyBidLocationManager(application);
            if (isLocationTrackingEnabled() && areLocationUpdatesEnabled()) {
                sLocationManager.startLocationUpdates();
            }
        }
        sDeviceInfo = new DeviceInfo(application.getApplicationContext());
        sUserDataManager = new UserDataManager(application.getApplicationContext(), str);
        sConfigManager = new ConfigManager(application.getApplicationContext(), str);
        sAdCache = new AdCache();
        sVideoAdCache = new VideoAdCache();
        sBrowserManager = new BrowserManager();
        sVgiIdManager = new VgiIdManager(application.getApplicationContext());
        sReportingController = new ReportingController();
        sViewabilityManager = new ViewabilityManager(application, sReportingController);
        sReportingDelegate = new ReportingDelegate(application.getApplicationContext(), REPORTING_URL);
        sDeviceInfo.initialize(new DeviceInfo.Listener() { // from class: net.pubnative.lite.sdk.HyBid.1
            @Override // net.pubnative.lite.sdk.DeviceInfo.Listener
            public final void onInfoLoaded() {
                HyBid.sUserDataManager.initialize(HyBid.sDeviceInfo.getAdvertisingId(), new UserDataManager.UserDataInitialisationListener() { // from class: net.pubnative.lite.sdk.HyBid.1.1
                    @Override // net.pubnative.lite.sdk.UserDataManager.UserDataInitialisationListener
                    public void onDataInitialised(boolean z) {
                        if (initialisationListener != null) {
                            initialisationListener.onInitialisationFinished(z);
                        }
                    }
                });
            }
        });
        sInitialized = true;
    }

    public static boolean isCoppaEnabled() {
        return sCoppaEnabled;
    }

    public static boolean isInitialized() {
        return sInitialized;
    }

    public static boolean isLocationTrackingEnabled() {
        return sLocationTrackingEnabled;
    }

    public static boolean isTestMode() {
        return sTestMode;
    }

    public static boolean isViewabilityMeasurementActivated() {
        return sViewabilityManager.isViewabilityMeasurementActivated();
    }

    public static boolean removeReportingCallback(ReportingEventCallback reportingEventCallback) {
        return sReportingController.removeCallback(reportingEventCallback);
    }

    public static void setAge(String str) {
        sAge = str;
    }

    public static void setAppToken(String str) {
        synchronized (HyBid.class) {
            try {
                sAppToken = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setAppVersion(String str) {
        sAppVersion = str;
    }

    public static void setContentAgeRating(String str) {
        sContentAgeRating = str;
    }

    public static void setCoppaEnabled(boolean z) {
        sCoppaEnabled = z;
    }

    public static void setDeveloperDomain(String str) {
        sDeveloperDomain = str;
    }

    public static void setGender(String str) {
        sGender = str;
    }

    public static void setIabCategory(String str) {
        sIabCategory = str;
    }

    public static void setIabSubcategory(String str) {
        sIabSubcategory = str;
    }

    public static void setInterstitialSkipOffset(Integer num) {
        if (num.intValue() >= 0) {
            sInterstitialSkipOffset = num;
        }
    }

    public static void setKeywords(String str) {
        sKeywords = str;
    }

    public static void setLocationTrackingEnabled(boolean z) {
        sLocationTrackingEnabled = z;
    }

    public static void setLocationUpdatesEnabled(boolean z) {
        sLocationUpdatesEnabled = z;
    }

    public static void setLogLevel(Logger.Level level) {
        Logger.setLogLevel(level);
    }

    public static void setTestMode(boolean z) {
        sTestMode = z;
    }
}
