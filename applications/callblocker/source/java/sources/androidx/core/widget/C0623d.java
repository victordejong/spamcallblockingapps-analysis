package androidx.core.widget;

import android.os.Build;
import android.widget.EdgeEffect;
/* renamed from: androidx.core.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/d.class */
public final class C0623d {
    /* renamed from: a */
    public static void m20159a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }
}
