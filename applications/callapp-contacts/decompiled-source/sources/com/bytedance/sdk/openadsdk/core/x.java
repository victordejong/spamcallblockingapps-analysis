package com.bytedance.sdk.openadsdk.core;

import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.h;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/x.class */
public class x {
    private static boolean a(View view) {
        return view != null && view.isShown();
    }

    private static boolean a(View view, int i) {
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

    public static boolean a(View view, int i, int i2) {
        try {
            return b(view, i, i2) == 0;
        } catch (Throwable th) {
            return false;
        }
    }

    private static int b(View view, int i, int i2) throws Throwable {
        return !h.a() ? 4 : !a(view) ? 1 : !b(view, i2) ? 6 : !a(view, i) ? 3 : 0;
    }

    private static boolean b(View view, int i) {
        return view.getWidth() >= c(view, i) && view.getHeight() >= d(view, i);
    }

    private static int c(View view, int i) {
        if (i == 3) {
            return (int) (ag.c(view.getContext().getApplicationContext()) * 0.7d);
        }
        return 20;
    }

    private static int d(View view, int i) {
        if (i == 3) {
            return ag.d(view.getContext().getApplicationContext()) / 2;
        }
        return 20;
    }
}
