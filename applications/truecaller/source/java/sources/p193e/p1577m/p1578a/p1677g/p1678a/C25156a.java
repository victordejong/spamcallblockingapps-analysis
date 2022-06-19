package p193e.p1577m.p1578a.p1677g.p1678a;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import p1727n3.p1863t.p1864a.p1865a.C26980a;
import p1727n3.p1863t.p1864a.p1865a.C26981b;
import p1727n3.p1863t.p1864a.p1865a.C26982c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.g.a.a */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a/a.class */
public class C25156a {

    /* renamed from: a */
    public static final TimeInterpolator f70397a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f70398b = new C26981b();

    /* renamed from: c */
    public static final TimeInterpolator f70399c = new C26980a();

    /* renamed from: d */
    public static final TimeInterpolator f70400d = new C26982c();

    /* renamed from: e */
    public static final TimeInterpolator f70401e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m4153a(float f, float f2, float f3) {
        return C22128a.m8646a(f2, f, f3, f);
    }

    /* renamed from: b */
    public static float m4152b(float f, float f2, float f3, float f4, float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : m4153a(f, f2, (f5 - f3) / (f4 - f3));
    }

    /* renamed from: c */
    public static int m4151c(int i, int i2, float f) {
        return Math.round(f * (i2 - i)) + i;
    }
}
