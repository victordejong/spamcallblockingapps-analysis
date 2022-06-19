package androidx.core.p023g;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
/* renamed from: androidx.core.g.c */
/* loaded from: classes-dex2jar.jar:androidx/core/g/c.class */
public final class C0533c {
    /* renamed from: a */
    public static int m6344a(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : i & (-8388609);
    }

    /* renamed from: a */
    public static void m6343a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i, i2, i3, rect, rect2, i4);
        } else {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }
}
