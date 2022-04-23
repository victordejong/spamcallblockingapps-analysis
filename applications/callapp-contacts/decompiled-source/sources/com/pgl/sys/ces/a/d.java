package com.pgl.sys.ces.a;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static int f34954a;

    /* renamed from: b  reason: collision with root package name */
    public static int f34955b;

    /* renamed from: c  reason: collision with root package name */
    public static int f34956c;

    /* renamed from: d  reason: collision with root package name */
    private static int f34957d;
    private static int e;
    private static int f;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00dc -> B:22:0x0084). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00e0 -> B:17:0x00a2). Please submit an issue!!! */
    public static String a(Context context) {
        int height;
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            if (Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealSize(point);
                f34954a = point.x;
                height = point.y;
            } else if (Build.VERSION.SDK_INT >= 13) {
                defaultDisplay.getSize(point);
                f34954a = point.x;
                height = point.y;
            } else {
                f34954a = defaultDisplay.getWidth();
                height = defaultDisplay.getHeight();
            }
            f34955b = height;
        } catch (Throwable th) {
        }
        if (context != null) {
            try {
                new DisplayMetrics();
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                f34957d = (int) displayMetrics.density;
                f34956c = displayMetrics.densityDpi;
            } catch (Throwable th2) {
            }
        }
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            e = (int) displayMetrics2.xdpi;
            f = (int) displayMetrics2.ydpi;
        } catch (Throwable th3) {
        }
        return f34956c + "[<!>]" + f34954a + "*" + f34955b + "[<!>]";
    }
}
