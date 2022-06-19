package p000;

import android.os.Build;
import android.widget.EdgeEffect;
/* renamed from: dc */
/* loaded from: classes-dex2jar.jar:dc.class */
public final class C1287dc {
    /* renamed from: a */
    public static void m2705a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }
}
