package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.StrictMode;
import android.view.Display;
import android.view.WindowManager;
/* renamed from: com.applovin.impl.sdk.utils.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/g.class */
public class C1492g {
    /* renamed from: a */
    public static Point m5075a(Context context) {
        Point point = new Point();
        point.x = 480;
        point.y = 320;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            if (m5073b()) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
        }
        StrictMode.setVmPolicy(vmPolicy);
        return point;
    }

    /* renamed from: a */
    public static void m5076a() {
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static boolean m5074a(String str, Context context) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    /* renamed from: b */
    public static boolean m5073b() {
        return true;
    }

    /* renamed from: c */
    public static boolean m5072c() {
        return true;
    }

    /* renamed from: d */
    public static boolean m5071d() {
        return true;
    }

    /* renamed from: e */
    public static boolean m5070e() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: f */
    public static boolean m5069f() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: g */
    public static boolean m5068g() {
        return Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: h */
    public static boolean m5067h() {
        return Build.VERSION.SDK_INT >= 29;
    }

    /* renamed from: i */
    public static boolean m5066i() {
        return Build.VERSION.SDK_INT >= 30;
    }
}
