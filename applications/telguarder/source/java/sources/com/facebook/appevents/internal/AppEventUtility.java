package com.facebook.appevents.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import com.facebook.FacebookSdk;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.MessengerShareContentUtility;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/internal/AppEventUtility.class */
public class AppEventUtility {
    private static final String regex = "[-+]*\\d+([\\,\\.]\\d+)*([\\.\\,]\\d+)?";

    public static void assertIsMainThread() {
    }

    public static void assertIsNotMainThread() {
    }

    public static String bytesToHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }

    public static String getAppVersion() {
        Context applicationContext = FacebookSdk.getApplicationContext();
        try {
            return applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    public static View getRootView(Activity activity) {
        if (!CrashShieldHandler.isObjectCrashing(AppEventUtility.class) && activity != null) {
            try {
                Window window = activity.getWindow();
                if (window != null) {
                    return window.getDecorView().getRootView();
                }
                return null;
            } catch (Exception e) {
                return null;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, AppEventUtility.class);
                return null;
            }
        }
        return null;
    }

    public static boolean isEmulator() {
        return Build.FINGERPRINT.startsWith(MessengerShareContentUtility.TEMPLATE_GENERIC_TYPE) || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith(MessengerShareContentUtility.TEMPLATE_GENERIC_TYPE) && Build.DEVICE.startsWith(MessengerShareContentUtility.TEMPLATE_GENERIC_TYPE)) || "google_sdk".equals(Build.PRODUCT);
    }

    private static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    public static double normalizePrice(String str) {
        char c;
        try {
            Matcher matcher = Pattern.compile(regex, 8).matcher(str);
            c = 0;
            if (matcher.find()) {
                c = NumberFormat.getNumberInstance(Utility.getCurrentLocale()).parse(matcher.group(0)).doubleValue();
            }
        } catch (ParseException e) {
            c = 0;
        }
        return c;
    }
}
