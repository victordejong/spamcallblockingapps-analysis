package p131c.p135b.p136a.p148e.p153y;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.StrictMode;
import android.view.Display;
import android.view.WindowManager;
/* renamed from: c.b.a.e.y.g */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/g.class */
public class C2388g {
    /* renamed from: a */
    public static Point m29975a(Context context) {
        Point point = new Point();
        point.x = 480;
        point.y = 320;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            if (m29973b()) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
        }
        return point;
    }

    /* renamed from: a */
    public static void m29976a() {
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static boolean m29974a(String str, Context context) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: b */
    public static boolean m29973b() {
        return Build.VERSION.SDK_INT >= 17;
    }

    /* renamed from: c */
    public static boolean m29972c() {
        return Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: d */
    public static boolean m29971d() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: e */
    public static boolean m29970e() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: f */
    public static boolean m29969f() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: g */
    public static boolean m29968g() {
        return Build.VERSION.SDK_INT >= 29;
    }
}
