package com.facebook.appevents.f;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.view.View;
import android.view.Window;
import com.facebook.g;
import com.facebook.internal.b.b.a;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/b.class */
public class b {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [double] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double a(java.lang.String r3) {
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
            java.util.Locale r0 = com.facebook.internal.ae.e()     // Catch: ParseException -> 0x002d
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
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.f.b.a(java.lang.String):double");
    }

    public static View a(Activity activity) {
        if (a.a(b.class) || activity == null) {
            return null;
        }
        try {
            Window window = activity.getWindow();
            if (window == null) {
                return null;
            }
            return window.getDecorView().getRootView();
        } catch (Exception e) {
            return null;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }

    public static void a() {
    }

    public static void b() {
    }

    public static boolean c() {
        if (Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }

    public static String d() {
        Context i = g.i();
        try {
            return i.getPackageManager().getPackageInfo(i.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }
}
