package com.criteo.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/criteo/utils/Utils.class */
public class Utils {
    public static final String CACHE_KEY_BANNER = "criteoBanner";
    public static final String CACHE_KEY_DFP_BANNER = "dfp_banner";
    public static final String CACHE_KEY_DFP_INTERSTITIAL = "dfp_interstitial";
    public static final String CACHE_KEY_INTERSTITIAL = "criteoInterstitial";
    public static final String CACHE_KEY_NATIVE = "criteoNative";
    public static final String URL = "https://play.google.com/store/apps/details?id=";

    public static String capitalize(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (char c : charArray) {
            if (!z || !Character.isLetter(c)) {
                if (Character.isWhitespace(c)) {
                    z = true;
                }
                sb.append(c);
            } else {
                sb.append(Character.toUpperCase(c));
                z = false;
            }
        }
        return sb.toString();
    }

    public static String getAppName(Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "Unknown");
    }

    public static String getBlockTimeStamp(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date(j));
    }

    public static Timestamp getBlockTimeStamp() {
        Calendar instance = Calendar.getInstance();
        instance.setTime(instance.getTime());
        instance.add(7, 1);
        return new Timestamp(instance.getTime().getTime());
    }

    public static Timestamp getCurrentTimeStamp() {
        Calendar instance = Calendar.getInstance();
        instance.setTime(instance.getTime());
        return new Timestamp(instance.getTime().getTime());
    }

    public static String getDeviceName() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return capitalize(str2);
        }
        return capitalize(str) + " " + str2;
    }

    public static String getNetworkClass(Context context) {
        NetworkInfo[] allNetworkInfo;
        boolean z = false;
        for (NetworkInfo networkInfo : ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo()) {
            z = z;
            if (networkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                z = z;
                if (networkInfo.isConnected()) {
                    z = true;
                }
            }
            if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE")) {
                networkInfo.isConnected();
            }
        }
        if (z) {
            return "WIFI";
        }
        switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return "Unknown";
        }
    }

    public static String getSdkVer(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getApplicationInfo().packageName, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }

    public static String loadJSONFromAsset(Context context) {
        try {
            InputStream open = context.getAssets().open("native_test_json.json");
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            return new String(bArr, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String loadJSONFromAsset(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            return new String(bArr, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void openUrl(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
