package com.facebook.appevents.p038s;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.s.b */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/b.class */
public class C2334b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [double] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double m35128a(java.lang.String r3) {
        /*
            r0 = 0
            r4 = r0
            java.lang.String r0 = "[-+]*\\d+([\\,\\.]\\d+)*([\\.\\,]\\d+)?"
            r1 = 8
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0, r1)     // Catch: ParseException -> 0x002d
            r1 = r3
            java.util.regex.Matcher r0 = r0.matcher(r1)     // Catch: ParseException -> 0x002d
            r3 = r0
            r0 = r4
            r6 = r0
            r0 = r3
            boolean r0 = r0.find()     // Catch: ParseException -> 0x002d
            if (r0 == 0) goto L_0x002b
            r0 = r3
            r1 = 0
            java.lang.String r0 = r0.group(r1)     // Catch: ParseException -> 0x002d
            r3 = r0
            java.util.Locale r0 = com.facebook.internal.C2408g0.m34825c()     // Catch: ParseException -> 0x002d
            java.text.NumberFormat r0 = java.text.NumberFormat.getNumberInstance(r0)     // Catch: ParseException -> 0x002d
            r1 = r3
            java.lang.Number r0 = r0.parse(r1)     // Catch: ParseException -> 0x002d
            double r0 = r0.doubleValue()     // Catch: ParseException -> 0x002d
            r6 = r0
        L_0x002b:
            r0 = r6
            return r0
        L_0x002d:
            r3 = move-exception
            r0 = r4
            r6 = r0
            goto L_0x002b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p038s.C2334b.m35128a(java.lang.String):double");
    }

    /* renamed from: a */
    public static String m35127a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static void m35129a() {
    }

    /* renamed from: b */
    public static void m35126b() {
    }

    /* renamed from: c */
    public static String m35125c() {
        Context e = C6135n.m23746e();
        try {
            return e.getPackageManager().getPackageInfo(e.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            return "";
        }
    }

    /* renamed from: d */
    public static boolean m35124d() {
        return Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }
}
