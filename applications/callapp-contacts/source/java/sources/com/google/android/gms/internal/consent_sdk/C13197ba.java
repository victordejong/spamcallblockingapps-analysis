package com.google.android.gms.internal.consent_sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.internal.consent_sdk.ba */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ba.class */
public final class C13197ba {

    /* renamed from: a */
    private static String f50376a;

    /* renamed from: a */
    public static String m13569a(Context context) {
        String str;
        synchronized (C13197ba.class) {
            try {
                if (f50376a == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
                    if (string == null || m13570a()) {
                        string = "emulator";
                    }
                    f50376a = m13568a(string);
                }
                str = f50376a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: a */
    private static String m13568a(String str) {
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

    /* renamed from: a */
    public static boolean m13570a() {
        if (Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }
}
