package com.razorpay;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.WallpaperManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.media.RingtoneManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.http.SslCertificate;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import com.amazon.device.ads.DtbConstants;
import com.mopub.mobileads.resource.DrawableConstants;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.Constants;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/BaseUtils.class */
public class BaseUtils {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static String PERMISSION_DISABLED = "permission disabled";
    public static String ipAddress;
    private static boolean sWebViewDebuggingEnabled = g$_H$.f9452a.booleanValue();
    private static boolean isCompatibleWithGooglePay = true;
    private static boolean isGpayCardsUpiRegistered = false;

    public static String MD5Hash(String str) {
        try {
            String bigInteger = new BigInteger(1, MessageDigest.getInstance("MD5").digest(str.getBytes())).toString(16);
            while (bigInteger.length() < 32) {
                bigInteger = DtbConstants.NETWORK_TYPE_UNKNOWN + bigInteger;
            }
            return bigInteger;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static String buildSerial() {
        return Build.SERIAL;
    }

    public static void checkForLatestVersion(Context context, int i) {
        if (!n$_B$.a().isSDKUpdateAlertEnabled() || !isMerchantAppDebuggable(context) || i >= n$_B$.a().getLatestSDKVersionCode()) {
            return;
        }
        Toast.makeText(context, n$_B$.a().getUpdateSDKMsg(), 1).show();
    }

    public static boolean checkGpayCardsUpiRegistered(Activity activity, String str) {
        if (str == null) {
            return isGpayCardsUpiRegistered;
        }
        try {
            String string = new JSONObject(str).getString("code");
            boolean z = true;
            if (string.hashCode() == -1534821982 && string.equals("google_pay")) {
                z = false;
            }
            if (!z) {
                return isGpayCardsUpiRegistered;
            }
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean checkUpiRegisteredApp(Context context, String str) {
        str.hashCode();
        if (!str.equals(BaseConstants.GOOGLE_PAY_PKG)) {
            return true;
        }
        return isCompatibleWithGooglePay;
    }

    public static String constructBasicAuth(String str) {
        return Base64.encodeToString((str + StringConstant.COLON).getBytes(StringConstant.UTF8), 2);
    }

    public static PublicKey constructPublicKey(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str.getBytes(), 0)));
        } catch (Exception e) {
            return null;
        }
    }

    public static String decryptFile(String str) {
        try {
            CryptLib cryptLib = new CryptLib();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update("".getBytes(StringConstant.UTF8));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                stringBuffer.append(String.format("%02x", Byte.valueOf(digest[i])));
            }
            return cryptLib.m36131b(str, 32 > stringBuffer.toString().length() ? stringBuffer.toString() : stringBuffer.toString().substring(0, 32), "");
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, "error", "Unable to decrypt file");
            e.getMessage();
            return null;
        }
    }

    public static int dpToPixels(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    private static void enableJavaScriptInWebView(WebView webView) {
        webView.getSettings().setJavaScriptEnabled(true);
    }

    public static void fetchIP(final RzpJSONCallback rzpJSONCallback) {
        new Thread(new Runnable() { // from class: com.razorpay.l_$w$
            @Override // java.lang.Runnable
            public final void run() {
                HttpsURLConnection httpsURLConnection;
                Exception e;
                Throwable th;
                JSONObject responseJson;
                HttpsURLConnection httpsURLConnection2 = null;
                try {
                    try {
                        try {
                            httpsURLConnection = (HttpsURLConnection) new URL("https://approvals-api.getsimpl.com/my-ip").openConnection();
                        } catch (Exception e2) {
                            AnalyticsUtil.reportError(e2, AnalyticsConstants.WARNING, e2.getMessage());
                            return;
                        }
                    } catch (SocketTimeoutException e3) {
                        httpsURLConnection = null;
                    } catch (Exception e4) {
                        e = e4;
                        httpsURLConnection = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    httpsURLConnection.setRequestMethod("GET");
                    httpsURLConnection.setReadTimeout(DrawableConstants.CtaButton.WIDTH_DIPS);
                    httpsURLConnection.setConnectTimeout(250);
                    if (httpsURLConnection.getResponseCode() == 200) {
                        responseJson = BaseUtils.getResponseJson(httpsURLConnection);
                        RzpJSONCallback.this.onResponse(responseJson);
                    } else {
                        RzpJSONCallback.this.onResponse(new JSONObject().put("error", "error"));
                    }
                    httpsURLConnection.disconnect();
                } catch (SocketTimeoutException e5) {
                    HttpsURLConnection httpsURLConnection3 = httpsURLConnection;
                    HttpsURLConnection httpsURLConnection4 = httpsURLConnection;
                    HttpsURLConnection httpsURLConnection5 = httpsURLConnection;
                    RzpJSONCallback.this.onResponse(new JSONObject().put("error", "timeout"));
                    if (httpsURLConnection == null) {
                        return;
                    }
                    httpsURLConnection.disconnect();
                } catch (Exception e6) {
                    e = e6;
                    AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
                    if (httpsURLConnection == null) {
                        return;
                    }
                    httpsURLConnection.disconnect();
                } catch (Throwable th3) {
                    httpsURLConnection2 = httpsURLConnection;
                    th = th3;
                    if (httpsURLConnection2 != null) {
                        httpsURLConnection2.disconnect();
                    }
                    throw th;
                }
            }
        }).start();
    }

    public static HashMap<String, String> getAllPluginsFromManifest(Context context) {
        ApplicationInfo applicationInfo;
        ReflectiveOperationException e;
        ReflectiveOperationException e2;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e3) {
            AnalyticsUtil.reportError(e3, AnalyticsConstants.CRITICAL, e3.getMessage());
            return null;
        }
        if (applicationInfo.metaData == null) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str : applicationInfo.metaData.keySet()) {
            if (str.contains(BaseConstants.METADATA_PLUGIN_PREFIX) && applicationInfo.metaData.getString(str).equalsIgnoreCase("com.razorpay.RzpGpayMerged")) {
                try {
                    if (Class.forName(BaseConstants.GOOGLEPAY_CLASSNAME).newInstance() != null) {
                        hashMap.put(str, applicationInfo.metaData.getString(str));
                    }
                } catch (ClassNotFoundException e4) {
                    AnalyticsUtil.reportError(e4, "error", "GooglePay SDK is not included");
                } catch (IllegalAccessException e5) {
                    e2 = e5;
                    e2.printStackTrace();
                } catch (InstantiationException e6) {
                    e2 = e6;
                    e2.printStackTrace();
                }
            } else if (str.contains(BaseConstants.METADATA_PLUGIN_PREFIX) && applicationInfo.metaData.getString(str).equalsIgnoreCase("com.razorpay.RzpGooglePay")) {
                try {
                    if (Class.forName(BaseConstants.GOOGLEPAY_CLASSNAME).newInstance() != null) {
                        hashMap.put(str, applicationInfo.metaData.getString(str));
                    }
                } catch (ClassNotFoundException e7) {
                    AnalyticsUtil.reportError(e7, "error", "GooglePay SDK is not included");
                } catch (IllegalAccessException e8) {
                    e = e8;
                    e.printStackTrace();
                } catch (InstantiationException e9) {
                    e = e9;
                    e.printStackTrace();
                }
            } else if (str.contains(BaseConstants.METADATA_PLUGIN_PREFIX) && applicationInfo.metaData.getString(str) != null) {
                hashMap.put(str, applicationInfo.metaData.getString(str));
            }
            AnalyticsUtil.reportError(e3, AnalyticsConstants.CRITICAL, e3.getMessage());
            return null;
        }
        return hashMap;
    }

    public static String getAndroidId(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), AnalyticsConstants.ANDROID_ID);
    }

    public static String getAppBuildType(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0 ? BaseConstants.DEVELOPMENT : BaseConstants.PRODUCTION;
    }

    public static String getAppNameOfPackageName(String str, Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            int i = applicationInfo.labelRes;
            return i == 0 ? applicationInfo.nonLocalizedLabel.toString() : packageManager.getResourcesForApplication(applicationInfo).getString(i);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getLocalizedMessage());
            e.printStackTrace();
            throw e;
        }
    }

    public static String getAppNameOfResolveInfo(ResolveInfo resolveInfo, Context context) {
        return getAppNameOfPackageName(resolveInfo.activityInfo.packageName, context);
    }

    public static String getBase64FromOtherAppsResource(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            return getBase64FromResource(packageManager.getResourcesForApplication(applicationInfo), applicationInfo.icon);
        } catch (PackageManager.NameNotFoundException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getLocalizedMessage());
            e.printStackTrace();
            return null;
        }
    }

    public static String getBase64FromResource(Resources resources, int i) {
        Bitmap decodeResource = BitmapFactory.decodeResource(resources, i);
        Bitmap bitmap = decodeResource;
        if (decodeResource == null) {
            Drawable drawable = resources.getDrawable(i);
            bitmap = decodeResource;
            if (drawable != null) {
                if (drawable instanceof BitmapDrawable) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } else {
                    bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmap);
                    drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    drawable.draw(canvas);
                }
            }
        }
        if (bitmap != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            StringBuilder m8728C = C22128a.m8728C("data:image/png;base64,");
            m8728C.append(Base64.encodeToString(byteArray, 2));
            return m8728C.toString();
        }
        return null;
    }

    public static String getCarrierOperatorName(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        return telephonyManager != null ? telephonyManager.getNetworkOperatorName() : PERMISSION_DISABLED;
    }

    public static String getCellularNetworkProviderName(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService(context, AnalyticsConstants.PHONE);
        return telephonyManager != null ? telephonyManager.getNetworkOperatorName() : "unknown";
    }

    public static String getCellularNetworkType(Context context) {
        try {
            switch (((TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE)).getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return AnalyticsConstants.NETWORK_2G;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return AnalyticsConstants.NETWORK_3G;
                case 13:
                    return AnalyticsConstants.NETWORK_4G;
                default:
                    return AnalyticsConstants.NOT_AVAILABLE;
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getLocalizedMessage());
            return AnalyticsConstants.NOT_AVAILABLE;
        }
    }

    public static NetworkType getDataNetworkType(Context context) {
        ConnectivityManager connectivityManager;
        if (hasPermission(context, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) getSystemService(context, "connectivity")) != null) {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo != null && networkInfo.isConnected()) {
                return NetworkType.WIFI;
            }
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(7);
            if (networkInfo2 != null && networkInfo2.isConnected()) {
                return NetworkType.BLUETOOTH;
            }
            NetworkInfo networkInfo3 = connectivityManager.getNetworkInfo(0);
            if (networkInfo3 != null && networkInfo3.isConnected()) {
                return NetworkType.CELLULAR;
            }
        }
        return NetworkType.UNKNOWN;
    }

    public static Map<String, String> getDeviceAttributes(Context context) {
        HashMap hashMap = new HashMap();
        if (context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
            hashMap.put("device_id", BaseConfig.getAdvertisingId(context));
            if (Build.VERSION.SDK_INT <= 28) {
                hashMap.put("sim_serial_number", telephonyManager != null ? telephonyManager.getSimSerialNumber() : AnalyticsConstants.NULL);
            } else {
                hashMap.put("sim_serial_number", PERMISSION_DISABLED);
                hashMap.put("build_unique_id", UUID.randomUUID().toString());
            }
        } else {
            hashMap.put("device_id", PERMISSION_DISABLED);
            hashMap.put("sim_serial_number", PERMISSION_DISABLED);
        }
        hashMap.put(AnalyticsConstants.DEVICE_MANUFACTURER, Build.MANUFACTURER);
        hashMap.put(AnalyticsConstants.DEVICE_MODEL, Build.MODEL);
        return hashMap;
    }

    public static void getDeviceParamValues(Context context, RzpJSONCallback rzpJSONCallback) {
        JSONObject jSONObject = new JSONObject();
        try {
            fetchIP(new c__C_());
            AdvertisingIdUtil.getId(context, new E$_6$(jSONObject, context, rzpJSONCallback));
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
        }
    }

    public static int getDisplayHeight(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static String getDisplayResolution(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return String.format(Locale.ENGLISH, "%dx%dx%d", Integer.valueOf(displayMetrics.widthPixels), Integer.valueOf(displayMetrics.heightPixels), Integer.valueOf(displayMetrics.densityDpi));
    }

    public static int getDisplayWidth(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static String getFileFromInternal(Activity activity, String str, String str2) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(activity.openFileInput(getVersionedAssetName(getLocalVersion(activity, str2).toString(), str)), StringConstant.UTF8));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return decryptFile(sb.toString());
            }
            sb.append(readLine);
        }
    }

    public static JSONObject getJSONFromIntentData(Intent intent) {
        Bundle extras;
        JSONObject jSONObject = new JSONObject();
        if (intent != null && (extras = intent.getExtras()) != null) {
            for (String str : extras.keySet()) {
                try {
                    jSONObject.put(str, extras.get(str));
                } catch (JSONException e) {
                    AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getLocalizedMessage());
                }
            }
        }
        return jSONObject;
    }

    public static Object getJsonValue(String str, JSONObject jSONObject, Object obj) {
        Object jsonValue = getJsonValue(str.split("\\."), jSONObject, 0);
        return jsonValue != null ? jsonValue : obj;
    }

    private static Object getJsonValue(String[] strArr, Object obj, int i) {
        Object opt;
        while (i != strArr.length) {
            String str = strArr[i];
            if (obj instanceof JSONObject) {
                opt = ((JSONObject) obj).opt(str);
            } else if (!(obj instanceof JSONArray)) {
                return null;
            } else {
                JSONArray jSONArray = (JSONArray) obj;
                if (!TextUtils.isDigitsOnly(str)) {
                    return null;
                }
                opt = jSONArray.opt(Integer.parseInt(str));
            }
            obj = opt;
            i++;
        }
        return obj;
    }

    public static String getKeyId(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                return bundle.getString(BaseConstants.METADATA_KEY);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
            return null;
        }
    }

    public static List<ResolveInfo> getListOfAppsWhichHandleDeepLink(Context context, String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse(str));
        return context.getPackageManager().queryIntentActivities(intent, 131072);
    }

    public static String getLocalVersion(Activity activity, String str) {
        String m36078a = C2735h.m36078a(activity, str);
        String str2 = m36078a;
        if (m36078a == null) {
            str2 = getVersionFromJsonString("{\n  \"hash\" : \"MD5\",\n  \"magic_hash\": \"MD5\"\n}\n", str);
        }
        return str2;
    }

    public static String getLocale() {
        return Locale.getDefault().getLanguage() + StringConstant.DASH + Locale.getDefault().getCountry();
    }

    public static HashMap<String, String> getMapFromJSONObject(JSONObject jSONObject) {
        HashMap<String, String> hashMap = new HashMap<>();
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
        }
        return hashMap;
    }

    public static int getNetworkType(Context context) {
        NetworkType dataNetworkType = getDataNetworkType(context);
        if (dataNetworkType == NetworkType.WIFI) {
            return 0;
        }
        if (dataNetworkType == NetworkType.BLUETOOTH) {
            return 1;
        }
        if (dataNetworkType != NetworkType.CELLULAR) {
            return -1;
        }
        String cellularNetworkType = getCellularNetworkType(context);
        if (cellularNetworkType.equalsIgnoreCase(AnalyticsConstants.NETWORK_2G)) {
            return 2;
        }
        if (cellularNetworkType.equalsIgnoreCase(AnalyticsConstants.NETWORK_3G)) {
            return 3;
        }
        return cellularNetworkType.equalsIgnoreCase(AnalyticsConstants.NETWORK_4G) ? 4 : -1;
    }

    public static String getPaymentCancelledResponse(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", "BAD_REQUEST_ERROR");
            jSONObject.put("description", "Payment processing cancelled by user");
            jSONObject.put("source", "customer");
            jSONObject.put("step", "payment_authentication");
            jSONObject.put("reason", "payment_cancelled");
            if (str != null && !str.isEmpty()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("payment_id", str);
                jSONObject.put("metadata", jSONObject2);
            }
            return new JSONObject().put("error", jSONObject).toString();
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getLocalizedMessage());
            return null;
        }
    }

    public static String getRandomString() {
        return new BigInteger((int) Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, new SecureRandom()).toString(32);
    }

    public static JSONObject getResponseJson(HttpsURLConnection httpsURLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return new JSONObject(sb.toString());
            }
            sb.append(readLine);
        }
    }

    public static HashSet<String> getSetOfPackageNamesSupportingUpi(Context context) {
        List<ResolveInfo> listOfAppsWhichHandleDeepLink = getListOfAppsWhichHandleDeepLink(context, BaseConstants.UPI_URL_SCHEMA);
        HashSet<String> hashSet = new HashSet<>();
        if (listOfAppsWhichHandleDeepLink != null && listOfAppsWhichHandleDeepLink.size() > 0) {
            for (ResolveInfo resolveInfo : listOfAppsWhichHandleDeepLink) {
                try {
                    hashSet.add(resolveInfo.activityInfo.packageName);
                } catch (Exception e) {
                    AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getLocalizedMessage());
                }
            }
        }
        if (hashSet.size() > 0 && !checkUpiRegisteredApp(context, BaseConstants.GOOGLE_PAY_PKG)) {
            hashSet.remove(BaseConstants.GOOGLE_PAY_PKG);
        }
        if (hashSet.size() > 0 && !checkUpiRegisteredApp(context, "com.truecaller")) {
            hashSet.remove("com.truecaller");
        }
        return hashSet;
    }

    public static void getSignalStrength(Context context) {
        ((TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE)).listen(new PhoneStateListener() { // from class: com.razorpay.O_$B_
            @Override // android.telephony.PhoneStateListener
            public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
                super.onSignalStrengthsChanged(signalStrength);
                if (!signalStrength.isGsm()) {
                    signalStrength.getCdmaDbm();
                } else if (signalStrength.getGsmSignalStrength() != 99) {
                    signalStrength.getGsmSignalStrength();
                } else {
                    signalStrength.getGsmSignalStrength();
                }
            }
        }, 256);
    }

    public static <T> T getSystemService(Context context, String str) {
        return (T) context.getApplicationContext().getSystemService(str);
    }

    public static String getVersionFromJsonString(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (str2.equalsIgnoreCase("otpelf_version")) {
                return jSONObject.getString("hash");
            }
            if (!str2.equalsIgnoreCase("magic_version")) {
                return null;
            }
            return jSONObject.getString("magic_hash");
        } catch (Exception e) {
            return null;
        }
    }

    public static String getVersionedAssetName(String str, String str2) {
        return C22128a.m8725C2(str.replaceAll("\\.", StringConstant.DASH), StringConstant.DASH, str2);
    }

    public static CharSequence getWebViewUserAgent(Context context) {
        return AnalyticsUtil.returnUndefinedIfNull(new WebView(context).getSettings().getUserAgentString());
    }

    public static String getWifiSSID(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0 ? ((WifiManager) context.getApplicationContext().getSystemService(AnalyticsConstants.WIFI)).getConnectionInfo().getSSID() : PERMISSION_DISABLED;
    }

    public static Certificate getX509Certificate(SslCertificate sslCertificate) {
        byte[] byteArray = SslCertificate.saveState(sslCertificate).getByteArray("x509-certificate");
        if (byteArray == null) {
            return null;
        }
        try {
            return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(byteArray));
        } catch (CertificateException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getLocalizedMessage());
            return null;
        }
    }

    public static boolean hasFeature(Context context, String str) {
        return context.getPackageManager().hasSystemFeature(str);
    }

    public static boolean hasPermission(Context context, String str) {
        try {
            return context.checkCallingOrSelfPermission(str) == 0;
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
            return false;
        }
    }

    public static String installedApps(Context context) {
        StringBuilder sb = new StringBuilder();
        try {
            for (ApplicationInfo applicationInfo : context.getPackageManager().getInstalledApplications(0)) {
                if ((applicationInfo.flags & 1) == 0) {
                    if (sb.length() != 0) {
                        sb.append(",");
                    }
                    sb.append(applicationInfo.packageName);
                }
            }
            return sb.toString();
        } catch (Throwable th) {
            return "Apps not available";
        }
    }

    public static boolean isDeviceHaveCorrectTlsVersion() {
        try {
            String[] protocols = SSLContext.getDefault().getDefaultSSLParameters().getProtocols();
            if (protocols == null) {
                return false;
            }
            for (String str : protocols) {
                if (str.startsWith("TLS") && !str.equalsIgnoreCase("TLSv1")) {
                    return true;
                }
            }
            return false;
        } catch (NoSuchAlgorithmException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
            return false;
        }
    }

    public static boolean isMerchantAppDebuggable(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    private boolean isMocked(Context context, Location location) {
        return location.isFromMockProvider();
    }

    public static boolean isNetworkRoaming(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        if (telephonyManager != null) {
            return telephonyManager.isNetworkRoaming();
        }
        return false;
    }

    private static Boolean isUserRegisteredOnTruePay(Context context) {
        try {
            boolean z = true;
            if (context.getPackageManager().getComponentEnabledSetting(new ComponentName("com.truecaller", "com.truecaller.truepay.UserRegistered")) != 1) {
                z = false;
            }
            return Boolean.valueOf(z);
        } catch (Exception e) {
            e.printStackTrace();
            AnalyticsUtil.reportError(e, "error", e.getMessage());
            return Boolean.FALSE;
        }
    }

    public static ArrayList<String> jsonStringArrayToArrayList(JSONArray jSONArray) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    public static String makeErrorPayload(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", str);
            jSONObject2.put("description", str2);
            jSONObject.put("error", jSONObject2);
            return jSONObject.toString();
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
            return "{\"error\":{\"code\": \"BAD_REQUEST_ERROR\", \"description\": \"An unknown error occurred.\"}}";
        }
    }

    public static String makeUrlEncodedPayload(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            sb.append(String.format("%s=%s&", next, Uri.encode(jSONObject.getString(next))));
        }
        return sb.deleteCharAt(sb.length() - 1).toString();
    }

    public static String nanoTimeToSecondsString(long j, int i) {
        double round = round(j / 1.0E9d, i);
        StringBuilder sb = new StringBuilder();
        sb.append(round);
        return sb.toString();
    }

    public static double round(double d, int i) {
        if (i >= 0) {
            return new BigDecimal(d).setScale(i, RoundingMode.HALF_UP).doubleValue();
        }
        throw new IllegalArgumentException();
    }

    private static void setBaseWebViewSettings() {
        WebView.setWebContentsDebuggingEnabled(false);
    }

    public static void setCompatibleWithGooglePay(boolean z) {
        isCompatibleWithGooglePay = z;
    }

    public static void setIsGpayCardsUpiRegistered(boolean z) {
        isGpayCardsUpiRegistered = z;
    }

    public static void setWebViewSettings(Context context, WebView webView, boolean z) {
        setBaseWebViewSettings();
        enableJavaScriptInWebView(webView);
        CookieManager.getInstance().setAcceptCookie(true);
        webView.setTag("");
        WebSettings settings = webView.getSettings();
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setTextZoom(100);
        String path = context.getApplicationContext().getDir("database", 0).getPath();
        if (Build.VERSION.SDK_INT < 24) {
            settings.setGeolocationDatabasePath(path);
        }
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        if (z) {
            settings.setCacheMode(2);
        }
        settings.setSaveFormData(false);
        webView.addJavascriptInterface(new C2737j(context), "StorageBridge");
    }

    public static void setup() {
        AnalyticsUtil.reset();
    }

    public static void startActivityForResult(String str, String str2, Activity activity) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        if (str2 != null && str2.length() > 0) {
            intent.setPackage(str2);
        }
        if (str.startsWith(BaseConstants.CRED_URL_SCHEMA)) {
            activity.startActivityForResult(intent, 20);
        } else {
            activity.startActivityForResult(intent, 99);
        }
    }

    public static boolean storeFileInInternal(Activity activity, String str, String str2) {
        try {
            FileOutputStream openFileOutput = activity.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes());
            openFileOutput.close();
            return true;
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, "error", "Error in saving file: " + str);
            return false;
        }
    }

    public static void updateLocalVersion(Activity activity, String str, String str2) {
        C2735h.m36075b(activity, str, str2);
    }

    public String getAccounts(Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.GET_ACCOUNTS") == 0) {
            StringBuilder sb = new StringBuilder();
            for (Account account : ((AccountManager) context.getSystemService("account")).getAccounts()) {
                sb.append(account.name);
                sb.append(",");
            }
            return sb.toString();
        }
        return PERMISSION_DISABLED;
    }

    public String getAvailableMemory(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return String.valueOf(memoryInfo.availMem / 1048576) + "MB";
    }

    public String getBatteryLevel(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            return String.valueOf((registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1)) * 100.0f);
        }
        return "Unknown";
    }

    public String getDeviceUptime() {
        return String.valueOf(SystemClock.elapsedRealtime()) + "ms";
    }

    public String getParentAppVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            return "Permission Disabled";
        }
    }

    public String getRingtoneHash(Context context) {
        return MD5Hash(RingtoneManager.getRingtone(context, RingtoneManager.getActualDefaultRingtoneUri(context, 1)).getTitle(context));
    }

    public String getScreenBrightness(Context context) {
        return Settings.System.getString(context.getContentResolver(), "screen_brightness");
    }

    public String getScreenBrightnessMode(Context context) {
        return Settings.System.getString(context.getContentResolver(), "screen_brightness_mode");
    }

    public String getScreenOffTimeout(Context context) {
        return C22128a.m8543z2(Settings.System.getString(context.getContentResolver(), "screen_off_timeout"), "ms");
    }

    public String getSystemFontSize(Context context) {
        return String.valueOf(context.getResources().getConfiguration().fontScale);
    }

    public String getTotalInternalStorage() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return String.valueOf(statFs.getBlockCountLong() * statFs.getBlockSizeLong());
    }

    public String getWallpaperID(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
            int wallpaperId = wallpaperManager.getWallpaperId(1);
            return String.format(Locale.ENGLISH, "%d-%d", Integer.valueOf(wallpaperManager.getWallpaperId(2)), Integer.valueOf(wallpaperId));
        }
        return PERMISSION_DISABLED;
    }
}
