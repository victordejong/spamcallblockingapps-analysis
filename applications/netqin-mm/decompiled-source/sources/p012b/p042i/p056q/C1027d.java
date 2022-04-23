package p012b.p042i.p056q;

import android.os.Build;
import android.widget.EdgeEffect;
/* renamed from: b.i.q.d */
/* loaded from: classes-dex2jar.jar:b/i/q/d.class */
public final class C1027d {
    /* renamed from: a */
    public static void m35116a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }
}
