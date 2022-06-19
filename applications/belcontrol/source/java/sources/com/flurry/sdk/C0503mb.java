package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;
/* renamed from: com.flurry.sdk.mb */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/mb.class */
public final class C0503mb {
    /* renamed from: a */
    public static int m4504a(int i) {
        return Math.round(i / m4503b().density);
    }

    /* renamed from: a */
    public static boolean m4505a() {
        return ((KeyguardManager) C0462kg.m4652a().f3460a.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    /* renamed from: b */
    public static int m4502b(int i) {
        return Math.round(i * m4503b().density);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: b */
    public static DisplayMetrics m4503b() {
        DisplayMetrics displayMetrics;
        Display defaultDisplay = ((WindowManager) C0462kg.m4652a().f3460a.getSystemService("window")).getDefaultDisplay();
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
            displayMetrics = m4501c();
        }
        return displayMetrics;
    }

    /* renamed from: c */
    public static DisplayMetrics m4501c() {
        Display defaultDisplay = ((WindowManager) C0462kg.m4652a().f3460a.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: d */
    public static int m4500d() {
        Point m4499e = m4499e();
        int i = m4499e.x;
        int i2 = m4499e.y;
        return i == i2 ? 3 : i < i2 ? 1 : 2;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: e */
    public static Point m4499e() {
        Display defaultDisplay = ((WindowManager) C0462kg.m4652a().f3460a.getSystemService("window")).getDefaultDisplay();
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
            }
        } else {
            if (i < 13) {
                point.x = defaultDisplay.getWidth();
                point.y = defaultDisplay.getHeight();
            }
            defaultDisplay.getSize(point);
        }
        return point;
    }
}
