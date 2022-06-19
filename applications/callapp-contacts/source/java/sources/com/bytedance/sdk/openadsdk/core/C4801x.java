package com.bytedance.sdk.openadsdk.core;

import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5461h;
/* renamed from: com.bytedance.sdk.openadsdk.core.x */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/x.class */
public class C4801x {
    /* renamed from: a */
    private static boolean m33913a(View view) {
        return view != null && view.isShown();
    }

    /* renamed from: a */
    private static boolean m33912a(View view, int i) {
        if (view == null || view.getVisibility() != 0 || view.getParent() == null) {
            return false;
        }
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return false;
        }
        long height = rect.height();
        long width = rect.width();
        long height2 = view.getHeight() * view.getWidth();
        return height2 > 0 && (height * width) * 100 >= ((long) i) * height2;
    }

    /* renamed from: a */
    public static boolean m33911a(View view, int i, int i2) {
        try {
            return m33909b(view, i, i2) == 0;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: b */
    private static int m33909b(View view, int i, int i2) throws Throwable {
        return !C5461h.m32167a() ? 4 : !m33913a(view) ? 1 : !m33910b(view, i2) ? 6 : !m33912a(view, i) ? 3 : 0;
    }

    /* renamed from: b */
    private static boolean m33910b(View view, int i) {
        return view.getWidth() >= m33908c(view, i) && view.getHeight() >= m33907d(view, i);
    }

    /* renamed from: c */
    private static int m33908c(View view, int i) {
        if (i == 3) {
            return (int) (C5443ag.m32218c(view.getContext().getApplicationContext()) * 0.7d);
        }
        return 20;
    }

    /* renamed from: d */
    private static int m33907d(View view, int i) {
        if (i == 3) {
            return C5443ag.m32215d(view.getContext().getApplicationContext()) / 2;
        }
        return 20;
    }
}
