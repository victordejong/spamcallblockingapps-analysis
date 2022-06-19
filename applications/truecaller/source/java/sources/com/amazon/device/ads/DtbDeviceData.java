package com.amazon.device.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import com.freshchat.consumer.sdk.beans.User;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceData.class */
public final class DtbDeviceData {
    private static final String DEFAULT_USER_AGENT = "Android";
    private static final String LOG_TAG = "DtbDeviceData";
    private static DtbDeviceData deviceDataInstance;
    private boolean bad_serial = false;
    private boolean bad_udid = false;
    private boolean bad_mac = false;
    private String sha1_mac = null;
    private String sha1_udid = null;
    private String sha1_serial = null;

    /* renamed from: ua */
    private String f1638ua = null;
    private String screenSize = null;
    private String orientation = null;
    private HashMap<String, Object> deviceParams = new HashMap<>();
    private HashMap<String, Object> optionalParams = new HashMap<>();
    private JSONObject deviceInfoJson = new JSONObject();

    private DtbDeviceData(Context context) {
        getMacAddress(context);
        getUdid(context);
        getSerial();
        getOrientation();
        getScreenSize();
        getDeviceInfoJson();
        getUserAgent();
        buildDeviceParams();
        buildOptionalParams();
    }

    private void buildDeviceParams() {
        this.deviceParams.put("dt", Constants.ANDROID_PLATFORM);
        this.deviceParams.put("app", "app");
        this.deviceParams.put("aud", "3p");
        String str = this.f1638ua;
        if (str != null) {
            this.deviceParams.put("ua", str);
        }
        this.deviceParams.put("sdkVer", DtbCommonUtils.getSDKVersion());
        JSONObject jSONObject = this.deviceInfoJson;
        if (jSONObject != null) {
            this.deviceParams.put("dinfo", jSONObject);
        }
    }

    private void buildOptionalParams() {
        String str = this.sha1_mac;
        if (str != null) {
            this.optionalParams.put("sha1_mac", str);
        }
        String str2 = this.sha1_udid;
        if (str2 != null) {
            this.optionalParams.put("sha1_udid", str2);
        }
        String str3 = this.sha1_serial;
        if (str3 != null) {
            this.optionalParams.put("sha1_serial", str3);
        }
        if (this.bad_mac) {
            this.optionalParams.put("badMac", "true");
        }
        if (this.bad_serial) {
            this.optionalParams.put("badSerial", "true");
        }
        if (this.bad_udid) {
            this.optionalParams.put("badUdid", "true");
        }
    }

    private String generateSha1Hash(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        messageDigest.update(str.getBytes());
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(Integer.toHexString((b & 255) | 256).substring(1));
        }
        return sb.toString();
    }

    public static DtbDeviceData getDeviceDataInstance() {
        if (AdRegistration.getContext() == null) {
            DtbLog.debugError("unable to initialize advertising info without setting app context");
            throw new IllegalArgumentException("unable to initialize advertising info without setting app context");
        }
        if (deviceDataInstance == null) {
            if (AdRegistration.getContext() == null) {
                DtbLog.debugError("Invalid intialization of Device Data. Context is null");
                throw new IllegalArgumentException("Invalid intialization of Device Data. Context is null");
            }
            deviceDataInstance = new DtbDeviceData(AdRegistration.getContext());
        }
        return deviceDataInstance;
    }

    private void getDeviceInfoJson() {
        String str = Build.MODEL;
        String str2 = Build.MANUFACTURER;
        String str3 = Build.VERSION.RELEASE;
        String str4 = Build.DEVICE;
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        String connectionType = getConnectionType();
        int screenPpi = getScreenPpi();
        TelephonyManager telephonyManager = (TelephonyManager) AdRegistration.getContext().getSystemService(AnalyticsConstants.PHONE);
        String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
        String f = Float.toString((!str2.equals("motorola") || !str.equals("MB502")) ? getDisplayMetrics().scaledDensity : 1.0f);
        try {
            placeProperty("Android", User.DEVICE_META_OS_NAME);
            placeProperty(str, "model");
            placeProperty(str2, "make");
            placeProperty(str4, "hwv");
            placeProperty(str3, "osVersion");
            placeProperty(country, ImpressionData.COUNTRY);
            placeProperty(networkOperatorName, AnalyticsConstants.CARRIER);
            placeProperty(language, "language");
            placeProperty(this.screenSize, "screenSize");
            placeProperty(f, "scalingFactor");
            placeProperty(Integer.toString(screenPpi), "ppi");
            placeProperty(this.orientation, "orientation");
            placeProperty(connectionType, "connectionType");
        } catch (UnsupportedEncodingException e) {
            DtbLog.error(LOG_TAG, "Unsupported encoding");
        } catch (JSONException e2) {
            DtbLog.error(LOG_TAG, "JSONException while producing deviceInfoJson");
        }
    }

    private DisplayMetrics getDisplayMetrics() {
        return AdRegistration.getContext().getResources().getDisplayMetrics();
    }

    private void getMacAddress(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(AnalyticsConstants.WIFI);
            WifiInfo connectionInfo = wifiManager != null ? wifiManager.getConnectionInfo() : null;
            String macAddress = connectionInfo == null ? null : connectionInfo.getMacAddress();
            if (macAddress != null && macAddress.length() != 0) {
                if (Pattern.compile("((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})").matcher(macAddress).find()) {
                    this.sha1_mac = DtbCommonUtils.getURLEncodedString(generateSha1Hash(macAddress));
                    return;
                }
                this.sha1_mac = null;
                this.bad_mac = true;
                return;
            }
            this.sha1_mac = null;
            this.bad_mac = true;
        } catch (ExceptionInInitializerError e) {
            String str = LOG_TAG;
            StringBuilder m8728C = C22128a.m8728C("Unable to get WIFI Manager: ");
            m8728C.append(e.getClass().getSimpleName());
            DtbLog.info(str, m8728C.toString());
            this.sha1_mac = null;
        } catch (SecurityException e2) {
            String str2 = LOG_TAG;
            StringBuilder m8728C2 = C22128a.m8728C("Unable to get WIFI Manager: ");
            m8728C2.append(e2.getClass().getSimpleName());
            DtbLog.info(str2, m8728C2.toString());
            this.sha1_mac = null;
        } catch (NoSuchAlgorithmException e3) {
            this.bad_mac = true;
        }
    }

    private void getOrientation() {
        this.orientation = DtbDeviceDataRetriever.getOrientation(AdRegistration.getContext());
    }

    private int getScreenPpi() {
        DisplayMetrics displayMetrics = getDisplayMetrics();
        return (int) (Math.sqrt(Math.pow(displayMetrics.heightPixels, 2.0d) + Math.pow(displayMetrics.widthPixels, 2.0d)) / Math.sqrt(Math.pow(displayMetrics.heightPixels / displayMetrics.ydpi, 2.0d) + Math.pow(displayMetrics.widthPixels / displayMetrics.xdpi, 2.0d)));
    }

    private void getScreenSize() {
        this.screenSize = DtbDeviceDataRetriever.getScreenSize(new DisplayMetrics(), this.orientation);
    }

    private void getSerial() {
        try {
            String str = (String) Build.class.getDeclaredField("SERIAL").get(Build.class);
            if (str != null && str.length() != 0 && !str.equalsIgnoreCase("unknown")) {
                this.sha1_serial = DtbCommonUtils.getURLEncodedString(generateSha1Hash(str));
                return;
            }
            this.bad_serial = true;
        } catch (NoSuchAlgorithmException e) {
            this.bad_serial = true;
        } catch (Exception e2) {
        }
    }

    private void getUdid(Context context) {
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), AnalyticsConstants.ANDROID_ID);
            if (string != null && string.length() != 0 && !string.equalsIgnoreCase("9774d56d682e549c")) {
                this.sha1_udid = DtbCommonUtils.getURLEncodedString(generateSha1Hash(string));
            }
            this.sha1_udid = null;
            this.bad_udid = true;
        } catch (NoSuchAlgorithmException e) {
            this.bad_udid = true;
        }
    }

    private void getUserAgent() {
        try {
            this.f1638ua = WebSettings.getDefaultUserAgent(AdRegistration.getContext());
        } catch (Exception e) {
            DtbLog.info("Unable to Get User Agent, Setting it to default");
            this.f1638ua = "Android";
        }
    }

    public String getConnectionType() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) AdRegistration.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return DtbConstants.NETWORK_TYPE_UNKNOWN;
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? type != 6 ? DtbConstants.NETWORK_TYPE_UNKNOWN : DtbConstants.NETWORK_TYPE_LTE : DtbConstants.NETWORK_TYPE_WIFI : Integer.toString(activeNetworkInfo.getSubtype());
    }

    public HashMap<String, Object> getDeviceParams() {
        if (!this.deviceParams.containsKey("ua") || (this.deviceParams.containsKey("ua") && this.deviceParams.get("ua").equals("Android"))) {
            getUserAgent();
            buildDeviceParams();
        }
        return this.deviceParams;
    }

    public HashMap<String, Object> getOptionalParams() {
        return this.optionalParams;
    }

    public JSONObject getParamsJson() {
        try {
            getOrientation();
            placeProperty(this.orientation, "orientation");
            getScreenSize();
            placeProperty(this.screenSize, "screenSize");
        } catch (Exception e) {
            DtbLog.error("Error:" + e);
        }
        return this.deviceInfoJson;
    }

    public JSONObject getParamsJsonGetSafe() {
        JSONObject jSONObject = new JSONObject();
        Iterator<String> keys = this.deviceInfoJson.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                Object obj = this.deviceInfoJson.get(next);
                if (obj instanceof String) {
                    jSONObject.put(next, URLEncoder.encode((String) obj, StringConstant.UTF8));
                }
            } catch (Exception e) {
                DtbLog.error("Error converting to JsonGetSafe");
            }
        }
        return jSONObject;
    }

    public String getUserAgentString() {
        return this.f1638ua;
    }

    public void placeProperty(String str, String str2) throws JSONException, UnsupportedEncodingException {
        if (str == null || str.isEmpty()) {
            return;
        }
        this.deviceInfoJson.put(str2, str);
    }
}
