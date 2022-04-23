package com.google.android.gms.internal.consent_sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ba.class */
public final class ba {

    /* renamed from: a  reason: collision with root package name */
    private static String f28745a;

    public static String a(Context context) {
        String str;
        synchronized (ba.class) {
            try {
                if (f28745a == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
                    if (string == null || a()) {
                        string = "emulator";
                    }
                    f28745a = a(string);
                }
                str = f28745a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    private static String a(String str) {
        for (int i = 0; i < 3; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(str.getBytes());
                return String.format("%032X", new BigInteger(1, instance.digest()));
            } catch (ArithmeticException e) {
                return "";
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return "";
    }

    public static boolean a() {
        if (Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }
}
