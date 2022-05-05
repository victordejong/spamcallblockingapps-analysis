package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;
/* renamed from: com.flurry.sdk.ky */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ky.class */
public final class C3442ky {
    /* renamed from: a */
    public static int m32485a(int i) {
        return Math.round(i / m32486a().density);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static DisplayMetrics m32486a() {
        DisplayMetrics displayMetrics;
        Display defaultDisplay = ((WindowManager) C3331jb.m32681a().f5679a.getSystemService("window")).getDefaultDisplay();
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            if (i >= 14) {
                try {
                    displayMetrics = new DisplayMetrics();
                    Display.class.getMethod("getRealMetrics", new Class[0]).invoke(defaultDisplay, displayMetrics);
                } catch (Exception e) {
                }
            }
            displayMetrics = m32484b();
        }
        return displayMetrics;
    }

    /* renamed from: b */
    public static int m32483b(int i) {
        return Math.round(i * m32486a().density);
    }

    /* renamed from: b */
    public static DisplayMetrics m32484b() {
        Display defaultDisplay = ((WindowManager) C3331jb.m32681a().f5679a.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: c */
    public static int m32482c() {
        Point d = m32481d();
        int i = d.x;
        int i2 = d.y;
        return i == i2 ? 3 : i < i2 ? 1 : 2;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: d */
    public static Point m32481d() {
        Display defaultDisplay = ((WindowManager) C3331jb.m32681a().f5679a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            defaultDisplay.getRealSize(point);
        } else if (i >= 14) {
            try {
                Method method = Display.class.getMethod("getRawHeight", new Class[0]);
                point.x = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                point.y = ((Integer) method.invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Throwable th) {
                defaultDisplay.getSize(point);
            }
        } else if (i >= 13) {
            defaultDisplay.getSize(point);
        } else {
            point.x = defaultDisplay.getWidth();
            point.y = defaultDisplay.getHeight();
        }
        return point;
    }
}
