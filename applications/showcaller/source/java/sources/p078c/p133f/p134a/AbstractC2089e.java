package p078c.p133f.p134a;

import android.view.animation.Interpolator;
/* renamed from: c.f.a.e */
/* loaded from: classes2-dex2jar.jar:c/f/a/e.class */
public abstract class AbstractC2089e implements Cloneable {

    /* renamed from: d */
    float f7214d;

    /* renamed from: e */
    Class f7215e;

    /* renamed from: f */
    private Interpolator f7216f = null;

    /* renamed from: g */
    boolean f7217g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.f.a.e$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/e$a.class */
    public static class C2090a extends AbstractC2089e {

        /* renamed from: h */
        float f7218h;

        C2090a(float f) {
            this.f7214d = f;
            this.f7215e = Float.TYPE;
        }

        C2090a(float f, float f2) {
            this.f7214d = f;
            this.f7218h = f2;
            this.f7215e = Float.TYPE;
            this.f7217g = true;
        }

        @Override // p078c.p133f.p134a.AbstractC2089e
        /* renamed from: d */
        public Object mo28062d() {
            return Float.valueOf(this.f7218h);
        }

        /* renamed from: j */
        public C2090a clone() {
            C2090a c2090a = new C2090a(m28068b(), this.f7218h);
            c2090a.m28064i(m28067c());
            return c2090a;
        }

        /* renamed from: l */
        public float m28060l() {
            return this.f7218h;
        }
    }

    /* renamed from: g */
    public static AbstractC2089e m28066g(float f) {
        return new C2090a(f);
    }

    /* renamed from: h */
    public static AbstractC2089e m28065h(float f, float f2) {
        return new C2090a(f, f2);
    }

    /* renamed from: a */
    public abstract AbstractC2089e clone();

    /* renamed from: b */
    public float m28068b() {
        return this.f7214d;
    }

    /* renamed from: c */
    public Interpolator m28067c() {
        return this.f7216f;
    }

    /* renamed from: d */
    public abstract Object mo28062d();

    /* renamed from: i */
    public void m28064i(Interpolator interpolator) {
        this.f7216f = interpolator;
    }
}
