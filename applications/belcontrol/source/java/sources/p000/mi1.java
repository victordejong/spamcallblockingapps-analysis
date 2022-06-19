package p000;

import android.view.animation.Interpolator;
/* renamed from: mi1 */
/* loaded from: classes3-dex2jar.jar:mi1.class */
public abstract class mi1 implements Cloneable {

    /* renamed from: a */
    public float f7036a;

    /* renamed from: b */
    public Interpolator f7037b = null;

    /* renamed from: mi1$a */
    /* loaded from: classes3-dex2jar.jar:mi1$a.class */
    public static class C1481a extends mi1 {

        /* renamed from: c */
        public float f7038c;

        public C1481a(float f) {
            this.f7036a = f;
            Class cls = Float.TYPE;
        }

        public C1481a(float f, float f2) {
            this.f7036a = f;
            this.f7038c = f2;
            Class cls = Float.TYPE;
        }

        @Override // p000.mi1
        /* renamed from: f */
        public Object mo1234f() {
            return Float.valueOf(this.f7038c);
        }

        /* renamed from: j */
        public C1481a clone() {
            C1481a c1481a = new C1481a(m1240c(), this.f7038c);
            c1481a.m1236i(m1239d());
            return c1481a;
        }

        /* renamed from: k */
        public float m1232k() {
            return this.f7038c;
        }
    }

    /* renamed from: g */
    public static mi1 m1238g(float f) {
        return new C1481a(f);
    }

    /* renamed from: h */
    public static mi1 m1237h(float f, float f2) {
        return new C1481a(f, f2);
    }

    /* renamed from: b */
    public abstract mi1 clone();

    /* renamed from: c */
    public float m1240c() {
        return this.f7036a;
    }

    /* renamed from: d */
    public Interpolator m1239d() {
        return this.f7037b;
    }

    /* renamed from: f */
    public abstract Object mo1234f();

    /* renamed from: i */
    public void m1236i(Interpolator interpolator) {
        this.f7037b = interpolator;
    }
}
