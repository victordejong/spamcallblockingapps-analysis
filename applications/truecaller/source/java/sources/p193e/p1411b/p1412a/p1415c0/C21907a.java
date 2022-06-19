package p193e.p1411b.p1412a.p1415c0;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.c0.a */
/* loaded from: classes-dex2jar.jar:e/b/a/c0/a.class */
public class C21907a<T> {

    /* renamed from: a */
    public final C21913e f60803a;

    /* renamed from: b */
    public final T f60804b;

    /* renamed from: c */
    public T f60805c;

    /* renamed from: d */
    public final Interpolator f60806d;

    /* renamed from: e */
    public final float f60807e;

    /* renamed from: f */
    public Float f60808f;

    /* renamed from: g */
    public float f60809g;

    /* renamed from: h */
    public float f60810h;

    /* renamed from: i */
    public int f60811i;

    /* renamed from: j */
    public int f60812j;

    /* renamed from: k */
    public float f60813k;

    /* renamed from: l */
    public float f60814l;

    /* renamed from: m */
    public PointF f60815m;

    /* renamed from: n */
    public PointF f60816n;

    public C21907a(C21913e c21913e, T t, T t2, Interpolator interpolator, float f, Float f2) {
        this.f60809g = -3987645.8f;
        this.f60810h = -3987645.8f;
        this.f60811i = 784923401;
        this.f60812j = 784923401;
        this.f60813k = Float.MIN_VALUE;
        this.f60814l = Float.MIN_VALUE;
        this.f60815m = null;
        this.f60816n = null;
        this.f60803a = c21913e;
        this.f60804b = t;
        this.f60805c = t2;
        this.f60806d = interpolator;
        this.f60807e = f;
        this.f60808f = f2;
    }

    public C21907a(T t) {
        this.f60809g = -3987645.8f;
        this.f60810h = -3987645.8f;
        this.f60811i = 784923401;
        this.f60812j = 784923401;
        this.f60813k = Float.MIN_VALUE;
        this.f60814l = Float.MIN_VALUE;
        this.f60815m = null;
        this.f60816n = null;
        this.f60803a = null;
        this.f60804b = t;
        this.f60805c = t;
        this.f60806d = null;
        this.f60807e = Float.MIN_VALUE;
        this.f60808f = Float.valueOf(Float.MAX_VALUE);
    }

    /* renamed from: a */
    public boolean m8914a(float f) {
        return f >= m8912c() && f < m8913b();
    }

    /* renamed from: b */
    public float m8913b() {
        if (this.f60803a == null) {
            return 1.0f;
        }
        if (this.f60814l == Float.MIN_VALUE) {
            if (this.f60808f == null) {
                this.f60814l = 1.0f;
            } else {
                this.f60814l = ((this.f60808f.floatValue() - this.f60807e) / this.f60803a.m8906b()) + m8912c();
            }
        }
        return this.f60814l;
    }

    /* renamed from: c */
    public float m8912c() {
        C21913e c21913e = this.f60803a;
        if (c21913e == null) {
            return 0.0f;
        }
        if (this.f60813k == Float.MIN_VALUE) {
            this.f60813k = (this.f60807e - c21913e.f60834k) / c21913e.m8906b();
        }
        return this.f60813k;
    }

    /* renamed from: d */
    public boolean m8911d() {
        return this.f60806d == null;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Keyframe{startValue=");
        m8728C.append(this.f60804b);
        m8728C.append(", endValue=");
        m8728C.append(this.f60805c);
        m8728C.append(", startFrame=");
        m8728C.append(this.f60807e);
        m8728C.append(", endFrame=");
        m8728C.append(this.f60808f);
        m8728C.append(", interpolator=");
        m8728C.append(this.f60806d);
        m8728C.append('}');
        return m8728C.toString();
    }
}
