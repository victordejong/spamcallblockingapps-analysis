package androidx.core.p026h;

import android.os.Build;
import android.view.ViewGroup;
/* renamed from: androidx.core.h.f */
/* loaded from: classes-dex2jar.jar:androidx/core/h/f.class */
public final class C0580f {
    /* renamed from: a */
    public static int m20410a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginStart() : marginLayoutParams.leftMargin;
    }

    /* renamed from: a */
    public static void m20409a(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginEnd(i);
        } else {
            marginLayoutParams.rightMargin = i;
        }
    }

    /* renamed from: b */
    public static int m20408b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginEnd() : marginLayoutParams.rightMargin;
    }
}
