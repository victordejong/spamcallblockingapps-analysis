package p078c.p084c.p085a.p096b.p097m;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import p020b.p062n.p063a.p064a.C1753a;
import p020b.p062n.p063a.p064a.C1754b;
import p020b.p062n.p063a.p064a.C1755c;
/* renamed from: c.c.a.b.m.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/a.class */
public class C1897a {

    /* renamed from: a */
    public static final TimeInterpolator f6813a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f6814b = new C1754b();

    /* renamed from: c */
    public static final TimeInterpolator f6815c = new C1753a();

    /* renamed from: d */
    public static final TimeInterpolator f6816d = new C1755c();

    /* renamed from: e */
    public static final TimeInterpolator f6817e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m28752a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: b */
    public static float m28751b(float f, float f2, float f3, float f4, float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : m28752a(f, f2, (f5 - f3) / (f4 - f3));
    }

    /* renamed from: c */
    public static int m28750c(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
