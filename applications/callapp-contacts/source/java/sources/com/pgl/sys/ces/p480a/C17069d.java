package com.pgl.sys.ces.p480a;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
/* renamed from: com.pgl.sys.ces.a.d */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/d.class */
public final class C17069d {

    /* renamed from: a */
    public static int f60590a;

    /* renamed from: b */
    public static int f60591b;

    /* renamed from: c */
    public static int f60592c;

    /* renamed from: d */
    private static int f60593d;

    /* renamed from: e */
    private static int f60594e;

    /* renamed from: f */
    private static int f60595f;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00dc -> B:22:0x0084). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00e0 -> B:17:0x00a2). Please submit an issue!!! */
    /* renamed from: a */
    public static String m5922a(Context context) {
        int height;
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealSize(point);
                f60590a = point.x;
                height = point.y;
            } else if (Build.VERSION.SDK_INT >= 13) {
                defaultDisplay.getSize(point);
                f60590a = point.x;
                height = point.y;
            } else {
                f60590a = defaultDisplay.getWidth();
                height = defaultDisplay.getHeight();
            }
            f60591b = height;
        } catch (Throwable th) {
        }
        if (context != null) {
            try {
                new DisplayMetrics();
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                f60593d = (int) displayMetrics.density;
                f60592c = displayMetrics.densityDpi;
            } catch (Throwable th2) {
            }
        }
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            f60594e = (int) displayMetrics2.xdpi;
            f60595f = (int) displayMetrics2.ydpi;
        } catch (Throwable th3) {
        }
        return f60592c + "[<!>]" + f60590a + "*" + f60591b + "[<!>]";
    }
}
