package androidx.core.p026h;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
/* renamed from: androidx.core.h.c */
/* loaded from: classes-dex2jar.jar:androidx/core/h/c.class */
public final class C0576c {
    /* renamed from: a */
    public static int m20421a(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : (-8388609) & i;
    }

    /* renamed from: a */
    public static void m20420a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i, i2, i3, rect, rect2, i4);
        } else {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }
}
