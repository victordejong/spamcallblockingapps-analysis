package p613k.p614d;

import android.view.animation.Interpolator;
/* renamed from: k.d.g */
/* loaded from: classes2-dex2jar.jar:k/d/g.class */
public abstract class AbstractC10453g implements Cloneable {

    /* renamed from: a */
    public boolean f38688a;

    /* renamed from: b */
    public boolean f38689b;

    /* renamed from: c */
    public float f38690c;

    /* renamed from: d */
    public Interpolator f38691d = null;

    /* renamed from: k.d.g$a */
    /* loaded from: classes2-dex2jar.jar:k/d/g$a.class */
    public static class C10454a extends AbstractC10453g {

        /* renamed from: e */
        public float f38692e;

        public C10454a(float f) {
            this.f38690c = f;
            Class cls = Float.TYPE;
        }

        public C10454a(float f, float f2) {
            this.f38690c = f;
            this.f38692e = f2;
            Class cls = Float.TYPE;
            this.f38688a = true;
        }

        @Override // p613k.p614d.AbstractC10453g
        /* renamed from: a */
        public void mo113a(Object obj) {
            if (obj != null && obj.getClass() == Float.class) {
                this.f38692e = ((Float) obj).floatValue();
                this.f38688a = true;
            }
        }

        @Override // p613k.p614d.AbstractC10453g
        public C10454a clone() {
            C10454a aVar = this.f38688a ? new C10454a(m118c(), this.f38692e) : new C10454a(m118c());
            aVar.m120a(m116e());
            aVar.f38689b = this.f38689b;
            return aVar;
        }

        @Override // p613k.p614d.AbstractC10453g
        /* renamed from: g */
        public Object mo112g() {
            return Float.valueOf(this.f38692e);
        }

        /* renamed from: k */
        public float m111k() {
            return this.f38692e;
        }
    }

    /* renamed from: a */
    public static AbstractC10453g m121a(float f, float f2) {
        return new C10454a(f, f2);
    }

    /* renamed from: c */
    public static AbstractC10453g m117c(float f) {
        return new C10454a(f);
    }

    /* renamed from: a */
    public void m120a(Interpolator interpolator) {
        this.f38691d = interpolator;
    }

    /* renamed from: a */
    public abstract void mo113a(Object obj);

    /* renamed from: a */
    public void m119a(boolean z) {
        this.f38689b = z;
    }

    /* renamed from: c */
    public float m118c() {
        return this.f38690c;
    }

    public abstract AbstractC10453g clone();

    /* renamed from: e */
    public Interpolator m116e() {
        return this.f38691d;
    }

    /* renamed from: g */
    public abstract Object mo112g();

    /* renamed from: h */
    public boolean m115h() {
        return this.f38688a;
    }

    /* renamed from: j */
    public boolean m114j() {
        return this.f38689b;
    }
}
