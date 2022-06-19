package com.facebook.p094a.p099d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.facebook.C2095j;
import com.facebook.internal.C2079x;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.facebook.a.d.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/b.class */
public class C1862b {
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* renamed from: a */
    public static double m16064a(String str) {
        char c;
        try {
            Matcher matcher = Pattern.compile("[-+]*\\d+([\\,\\.]\\d+)*([\\.\\,]\\d+)?", 8).matcher(str);
            c = 0;
            if (matcher.find()) {
                c = NumberFormat.getNumberInstance(C2079x.m15445c()).parse(matcher.group(0)).doubleValue();
            }
        } catch (ParseException e) {
            c = 0;
        }
        return c;
    }

    /* renamed from: a */
    public static String m16063a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static void m16065a() {
    }

    /* renamed from: b */
    public static void m16062b() {
    }

    /* renamed from: c */
    public static boolean m16061c() {
        return Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }

    /* renamed from: d */
    public static String m16060d() {
        String str;
        Context m15360h = C2095j.m15360h();
        try {
            str = m15360h.getPackageManager().getPackageInfo(m15360h.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str = "";
        }
        return str;
    }
}
