package com.nineoldandroids.p064a;

import android.view.animation.Interpolator;
/* renamed from: com.nineoldandroids.a.f */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/f.class */
public abstract class AbstractC1409f implements Cloneable {

    /* renamed from: a */
    float f3895a;

    /* renamed from: b */
    Class f3896b;

    /* renamed from: d */
    private Interpolator f3898d = null;

    /* renamed from: c */
    boolean f3897c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.nineoldandroids.a.f$a */
    /* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/f$a.class */
    public static class C1410a extends AbstractC1409f {

        /* renamed from: d */
        float f3899d;

        C1410a(float f) {
            this.f3895a = f;
            this.f3896b = Float.TYPE;
        }

        C1410a(float f, float f2) {
            this.f3895a = f;
            this.f3899d = f2;
            this.f3896b = Float.TYPE;
            this.f3897c = true;
        }

        @Override // com.nineoldandroids.p064a.AbstractC1409f
        /* renamed from: a */
        public void mo3731a(Object obj) {
            if (obj == null || obj.getClass() != Float.class) {
                return;
            }
            this.f3899d = ((Float) obj).floatValue();
            this.f3897c = true;
        }

        @Override // com.nineoldandroids.p064a.AbstractC1409f
        /* renamed from: b */
        public Object mo3730b() {
            return Float.valueOf(this.f3899d);
        }

        /* renamed from: f */
        public float m3728f() {
            return this.f3899d;
        }

        /* renamed from: g */
        public C1410a mo3729e() {
            C1410a c1410a = new C1410a(m3733c(), this.f3899d);
            c1410a.m3734a(m3732d());
            return c1410a;
        }
    }

    /* renamed from: a */
    public static AbstractC1409f m3736a(float f) {
        return new C1410a(f);
    }

    /* renamed from: a */
    public static AbstractC1409f m3735a(float f, float f2) {
        return new C1410a(f, f2);
    }

    /* renamed from: a */
    public void m3734a(Interpolator interpolator) {
        this.f3898d = interpolator;
    }

    /* renamed from: a */
    public abstract void mo3731a(Object obj);

    /* renamed from: a */
    public boolean m3737a() {
        return this.f3897c;
    }

    /* renamed from: b */
    public abstract Object mo3730b();

    /* renamed from: c */
    public float m3733c() {
        return this.f3895a;
    }

    /* renamed from: d */
    public Interpolator m3732d() {
        return this.f3898d;
    }

    /* renamed from: e */
    public abstract AbstractC1409f clone();
}
