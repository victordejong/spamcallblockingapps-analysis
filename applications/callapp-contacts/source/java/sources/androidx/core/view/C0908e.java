package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
/* renamed from: androidx.core.view.e */
/* loaded from: classes-dex2jar.jar:androidx/core/view/e.class */
public final class C0908e {
    private C0908e() {
    }

    /* renamed from: a */
    public static int m44195a(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : i & (-8388609);
    }

    /* renamed from: a */
    public static void m44194a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i, i2, i3, rect, rect2, i4);
        } else {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }
}
