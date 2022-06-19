package com.razorpay;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.freshchat.consumer.sdk.beans.User;
import com.google.android.gms.ads.AdError;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsProperty;
import com.tenor.android.core.constant.StringConstant;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/AnalyticsUtil.class */
public class AnalyticsUtil {
    public static String BUILD_TYPE;
    public static String KEY_TYPE;
    public static int MERCHANT_APP_BUILD = 0;
    public static CharSequence MERCHANT_APP_NAME;
    public static CharSequence MERCHANT_APP_NAMESPACE;
    public static CharSequence MERCHANT_APP_VERSION;
    private static boolean isAnalyticsInitialized = false;
    public static String libraryType;
    private static String localOrderId;
    private static String localPaymentId;
    private static String sdkType = "standealone";
    private static String sdkVersion;
    private static int sdkVersionCode;

    public static void addFilteredPropertiesFromPayload(JSONObject jSONObject) {
        D$$l_.m36122a(jSONObject);
    }

    public static void addProperty(String str, AnalyticsProperty analyticsProperty) {
        AnalyticsProperty.Scope scope = analyticsProperty.scope;
        if (scope == AnalyticsProperty.Scope.PAYMENT) {
            D$$l_.m36126a(str, analyticsProperty.value);
        } else if (scope != AnalyticsProperty.Scope.ORDER) {
        } else {
            D$$l_.m36117b(str, analyticsProperty.value);
        }
    }

    public static JSONObject getAnalyticsDataForCheckout(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "mobile_sdk");
            jSONObject.put("platform_version", sdkVersion);
            jSONObject.put(User.DEVICE_META_OS_NAME, Constants.ANDROID_PLATFORM);
            jSONObject.put(User.DEVICE_META_OS_VERSION_NAME, Build.VERSION.RELEASE);
            if (G_$8_.m36100a(context)) {
                jSONObject.put(AnalyticsConstants.DEVICE, "tablet");
            } else {
                jSONObject.put(AnalyticsConstants.DEVICE, "mobile");
            }
        } catch (Exception e) {
            reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
        }
        return jSONObject;
    }

    public static String getAppDetail() {
        if (isAnalyticsInitialized) {
            return ((Object) MERCHANT_APP_NAME) + StringConstant.DASH + ((Object) MERCHANT_APP_VERSION) + StringConstant.DASH + MERCHANT_APP_BUILD;
        }
        return null;
    }

    public static String getBuildType() {
        return BUILD_TYPE;
    }

    public static Map<String, Object> getErrorProperties(String str, String str2) {
        return C22128a.m8661V("error_level", str, "error_message", str2);
    }

    public static JSONObject getExtraAnalyticsPayload() {
        return D$$l_.m36109e();
    }

    public static String getKeyType() {
        return KEY_TYPE;
    }

    public static String getKeyType(String str) {
        if (isNullOrEmpty(str)) {
            return null;
        }
        String substring = str.substring(0, 8);
        if (substring.equals("rzp_live")) {
            return "live";
        }
        if (!substring.equals("rzp_test")) {
            return null;
        }
        return "test";
    }

    public static String getLocalOrderId() {
        if (localOrderId == null) {
            localOrderId = getUniqueId();
        }
        return localOrderId;
    }

    public static String getLocalPaymentId() {
        if (localPaymentId == null) {
            localPaymentId = getUniqueId();
        }
        return localPaymentId;
    }

    public static Map<String, Object> getPageLoadEndProperties(String str, long j) {
        HashMap m8667T = C22128a.m8667T("url", str);
        m8667T.put(AnalyticsConstants.PAGE_LOAD_TIME, Double.valueOf(j / 1.0E9d));
        return m8667T;
    }

    public static Map<String, Object> getPageLoadStartProperties(String str) {
        return C22128a.m8667T("url", str);
    }

    public static String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter((Writer) stringWriter, true));
        return stringWriter.getBuffer().toString();
    }

    public static String getUniqueId() {
        long currentTimeMillis = System.currentTimeMillis();
        long floor = (long) Math.floor(Math.random() * 1.4776336E7d);
        return tobase62((currentTimeMillis - 1388534400000L) * 1000000) + tobase62(floor);
    }

    private static void init(Context context, String str) {
        if (context != null) {
            if (str == null) {
                throw new RuntimeException("Merchant key not set");
            }
            D$$l_.m36128a(context, sdkType, sdkVersion);
            D$$l_.m36117b(AnalyticsConstants.MERCHANT_KEY, str);
            D$$l_.m36117b(AnalyticsConstants.MERCHANT_PACKAGE, context.getPackageName());
            d__B_.m36085a(context);
            isAnalyticsInitialized = true;
            return;
        }
        throw new RuntimeException("Context not set");
    }

    public static boolean isCheckoutUrl(String str) {
        return str.indexOf(n$_B$.a().getCheckoutEndpoint()) == 0;
    }

    public static boolean isNullOrEmpty(CharSequence charSequence) {
        return TextUtils.isEmpty(charSequence) || TextUtils.getTrimmedLength(charSequence) == 0;
    }

    public static void postData() {
        if (isAnalyticsInitialized) {
            D$$l_.m36130a();
        }
    }

    public static void refreshOrderSession() {
        localOrderId = getUniqueId();
        localPaymentId = getUniqueId();
        D$$l_.m36111d();
        D$$l_.m36114c();
    }

    public static void refreshPaymentSession() {
        localPaymentId = getUniqueId();
        D$$l_.m36114c();
    }

    public static void reportError(AbstractMethodError abstractMethodError, String str, String str2) {
        trackEvent(AnalyticsEvent.ERROR_LOGGED, getErrorProperties(str, str2));
        abstractMethodError.printStackTrace();
    }

    public static void reportError(Exception exc, String str, String str2) {
        trackEvent(AnalyticsEvent.ERROR_LOGGED, getErrorProperties(str, str2));
        exc.printStackTrace();
    }

    public static void reportUncaughtException(Throwable th) {
        trackEvent(AnalyticsEvent.ERROR_LOGGED, getErrorProperties(AnalyticsConstants.UNCAUGHT, getStackTrace(th)));
    }

    public static void reset() {
        isAnalyticsInitialized = false;
        localPaymentId = null;
        localOrderId = null;
        D$$l_.m36119b();
    }

    public static CharSequence returnUndefinedIfNull(CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (isNullOrEmpty(charSequence)) {
            charSequence2 = AdError.UNDEFINED_DOMAIN;
        }
        return charSequence2;
    }

    public static void saveEventsToPreferences(Context context) {
        D$$l_.m36129a(context);
    }

    public static void setAppDetails(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            MERCHANT_APP_NAME = returnUndefinedIfNull(packageInfo.applicationInfo.loadLabel(packageManager));
            MERCHANT_APP_VERSION = returnUndefinedIfNull(packageInfo.versionName);
            MERCHANT_APP_NAMESPACE = returnUndefinedIfNull(packageInfo.packageName);
            MERCHANT_APP_BUILD = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
        }
        BUILD_TYPE = BaseUtils.getAppBuildType(context);
        KEY_TYPE = getKeyType(str);
    }

    public static void setLocalOrderId(String str) {
        localOrderId = str;
    }

    public static void setup(Context context, String str, String str2, int i, String str3) {
        sdkType = str2;
        sdkVersionCode = i;
        sdkVersion = str3;
        setAppDetails(context, str);
        init(context, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static String tobase62(long j) {
        String str = "";
        String[] split = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split("");
        for (?? r5 = j; r5 > 0; r5 = (long) Math.floor(r5 / '>')) {
            str = String.valueOf(split[(int) (r5 % '>')]) + str;
        }
        return str;
    }

    public static void trackEvent(AnalyticsEvent analyticsEvent) {
        D$$l_.m36127a(analyticsEvent.getEventName());
    }

    public static void trackEvent(AnalyticsEvent analyticsEvent, Map<String, Object> map) {
        D$$l_.m36124a(analyticsEvent.getEventName(), map);
    }

    public static void trackEvent(AnalyticsEvent analyticsEvent, JSONObject jSONObject) {
        D$$l_.m36123a(analyticsEvent.getEventName(), jSONObject);
    }

    public static void trackPage(String str, String str2) {
        D$$l_.m36125a(str, str2);
    }

    public static void trackPageLoadEnd(String str, long j) {
        trackEvent(isCheckoutUrl(str) ? AnalyticsEvent.CHECKOUT_PAGE_LOAD_FINISH : AnalyticsEvent.PAGE_LOAD_FINISH, getPageLoadEndProperties(str, j));
    }

    public static void trackPageLoadStart(String str) {
        trackEvent(isCheckoutUrl(str) ? AnalyticsEvent.CHECKOUT_PAGE_LOAD_START : AnalyticsEvent.PAGE_LOAD_START, getPageLoadStartProperties(str));
    }
}
