package com.facebook.appevents.p285f;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.view.View;
import android.view.Window;
import com.facebook.C10181g;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.facebook.appevents.f.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/b.class */
public class C10033b {
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* renamed from: a */
    public static double m23559a(String str) {
        char c;
        try {
            Matcher matcher = Pattern.compile("[-+]*\\d+([\\,\\.]\\d+)*([\\.\\,]\\d+)?", 8).matcher(str);
            c = 0;
            if (matcher.find()) {
                c = NumberFormat.getNumberInstance(C10213ae.m23194e()).parse(matcher.group(0)).doubleValue();
            }
        } catch (ParseException e) {
            c = 0;
        }
        return c;
    }

    /* renamed from: a */
    public static View m23560a(Activity activity) {
        if (!C10249a.m23108a(C10033b.class) && activity != null) {
            try {
                Window window = activity.getWindow();
                if (window != null) {
                    return window.getDecorView().getRootView();
                }
                return null;
            } catch (Exception e) {
                return null;
            } catch (Throwable th) {
                C10249a.m23106a(th, C10033b.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m23558a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static void m23561a() {
    }

    /* renamed from: b */
    public static void m23557b() {
    }

    /* renamed from: c */
    public static boolean m23556c() {
        if (Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }

    /* renamed from: d */
    public static String m23555d() {
        Context m23290i = C10181g.m23290i();
        try {
            return m23290i.getPackageManager().getPackageInfo(m23290i.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }
}
