package com.appsflyer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLib.class */
public abstract class AppsFlyerLib {
    public static AppsFlyerLib getInstance() {
        return AppsFlyerLibCore.getInstance();
    }

    public abstract void enableFacebookDeferredApplinks(boolean z);

    public abstract AppsFlyerLib enableLocationCollection(boolean z);

    public abstract String getAppsFlyerUID(Context context);

    public abstract String getAttributionId(Context context);

    public abstract String getHostName();

    public abstract String getHostPrefix();

    public abstract String getOutOfStore(Context context);

    public abstract String getSdkVersion();

    @Deprecated
    public abstract AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener);

    public abstract AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, Context context);

    public abstract boolean isPreInstalledApp(Context context);

    public abstract boolean isTrackingStopped();

    public abstract void onPause(Context context);

    public abstract void performOnAppAttribution(Context context, URI uri);

    public abstract void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener);

    public abstract void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener);

    public abstract void reportTrackSession(Context context);

    public abstract void sendAdRevenue(Context context, Map<String, Object> map);

    @Deprecated
    public abstract void sendDeepLinkData(Activity activity);

    public abstract void sendPushNotificationData(Activity activity);

    public abstract void setAdditionalData(HashMap<String, Object> hashMap);

    public abstract void setAndroidIdData(String str);

    public abstract void setAppId(String str);

    public abstract void setAppInviteOneLink(String str);

    public abstract void setCollectAndroidID(boolean z);

    public abstract void setCollectIMEI(boolean z);

    public abstract void setCollectOaid(boolean z);

    public abstract void setConsumeAFDeepLinks(boolean z);

    public abstract void setCurrencyCode(String str);

    public abstract void setCustomerIdAndTrack(String str, Context context);

    public abstract void setCustomerUserId(String str);

    public abstract void setDebugLog(boolean z);

    public abstract void setDeviceTrackingDisabled(boolean z);

    public abstract void setExtension(String str);

    public abstract void setHost(String str, String str2);

    @Deprecated
    public abstract void setHostName(String str);

    public abstract void setImeiData(String str);

    public abstract void setIsUpdate(boolean z);

    public abstract void setLogLevel(AFLogger.LogLevel logLevel);

    public abstract void setMinTimeBetweenSessions(int i);

    public abstract void setOaidData(String str);

    public abstract void setOneLinkCustomDomain(String... strArr);

    public abstract void setOutOfStore(String str);

    public abstract void setPhoneNumber(String str);

    @Deprecated
    public abstract void setPluginDeepLinkData(Intent intent);

    public abstract void setPreinstallAttribution(String str, String str2, String str3);

    public abstract void setResolveDeepLinkURLs(String... strArr);

    public abstract void setSharingFilter(String... strArr);

    public abstract void setSharingFilterForAllPartners();

    public abstract void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr);

    public abstract void setUserEmails(String... strArr);

    public abstract void startTracking(Context context);

    public abstract void startTracking(Context context, String str);

    @Deprecated
    public abstract void startTracking(Context context, String str, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener);

    public abstract void startTracking(Context context, String str, AppsFlyerRequestListener appsFlyerRequestListener);

    public abstract void stopTracking(boolean z, Context context);

    @Deprecated
    public abstract void trackAppLaunch(Context context, String str);

    public abstract void trackEvent(Context context, String str, Map<String, Object> map);

    @Deprecated
    public abstract void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener);

    public abstract void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener);

    public abstract void trackLocation(Context context, double d2, double d3);

    public abstract void unregisterConversionListener();

    public abstract void updateServerUninstallToken(Context context, String str);

    public abstract void validateAndTrackInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map);

    public abstract void waitForCustomerUserId(boolean z);
}
