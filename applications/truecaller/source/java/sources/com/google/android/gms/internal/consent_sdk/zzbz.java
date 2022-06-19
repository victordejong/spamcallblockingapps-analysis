package com.google.android.gms.internal.consent_sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.razorpay.AnalyticsConstants;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbz.class */
public final class zzbz {
    private static String zza;

    public static String zza(Context context) {
        String str;
        synchronized (zzbz.class) {
            try {
                if (zza == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, AnalyticsConstants.ANDROID_ID);
                    if (string == null || zza()) {
                        string = "emulator";
                    }
                    zza = zza(string);
                }
                str = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    private static String zza(String str) {
        for (int i = 0; i < 3; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format("%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException e) {
                return "";
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return "";
    }

    public static boolean zza() {
        String str = Build.FINGERPRINT;
        if (str.startsWith("generic") || str.startsWith("unknown")) {
            return true;
        }
        String str2 = Build.MODEL;
        if (str2.contains("google_sdk") || str2.contains("Emulator") || str2.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }
}
