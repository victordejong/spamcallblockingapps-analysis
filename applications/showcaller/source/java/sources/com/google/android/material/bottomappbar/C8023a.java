package com.google.android.material.bottomappbar;

import p078c.p084c.p085a.p096b.p108x.C1936f;
import p078c.p084c.p085a.p096b.p108x.C1954o;
/* renamed from: com.google.android.material.bottomappbar.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/a.class */
public class C8023a extends C1936f implements Cloneable {

    /* renamed from: d */
    private float f36198d;

    /* renamed from: e */
    private float f36199e;

    /* renamed from: f */
    private float f36200f;

    /* renamed from: g */
    private float f36201g;

    /* renamed from: h */
    private float f36202h = 0.0f;

    public C8023a(float f, float f2, float f3) {
        this.f36199e = f;
        this.f36198d = f2;
        m5508j(f3);
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1936f
    /* renamed from: b */
    public void mo5514b(float f, float f2, float f3, C1954o c1954o) {
        float f4 = this.f36200f;
        if (f4 == 0.0f) {
            c1954o.m28485m(f, 0.0f);
            return;
        }
        float f5 = ((this.f36199e * 2.0f) + f4) / 2.0f;
        float f6 = f3 * this.f36198d;
        float f7 = f2 + this.f36202h;
        float f8 = (this.f36201g * f3) + ((1.0f - f3) * f5);
        if (f8 / f5 >= 1.0f) {
            c1954o.m28485m(f, 0.0f);
            return;
        }
        float f9 = f5 + f6;
        float f10 = f8 + f6;
        float sqrt = (float) Math.sqrt((f9 * f9) - (f10 * f10));
        float f11 = f7 - sqrt;
        float f12 = f7 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f10));
        float f13 = 90.0f - degrees;
        c1954o.m28485m(f11, 0.0f);
        float f14 = f6 * 2.0f;
        c1954o.m28497a(f11 - f6, 0.0f, f11 + f6, f14, 270.0f, degrees);
        c1954o.m28497a(f7 - f5, (-f5) - f8, f7 + f5, f5 - f8, 180.0f - f13, (f13 * 2.0f) - 180.0f);
        c1954o.m28497a(f12 - f6, 0.0f, f12 + f6, f14, 270.0f - degrees, degrees);
        c1954o.m28485m(f, 0.0f);
    }

    /* renamed from: c */
    public float m5513c() {
        return this.f36201g;
    }

    /* renamed from: d */
    public float m5512d() {
        return this.f36199e;
    }

    /* renamed from: g */
    public float m5511g() {
        return this.f36198d;
    }

    /* renamed from: h */
    public float m5510h() {
        return this.f36200f;
    }

    /* renamed from: i */
    public float m5509i() {
        return this.f36202h;
    }

    /* renamed from: j */
    public void m5508j(float f) {
        if (f >= 0.0f) {
            this.f36201g = f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    /* renamed from: l */
    public void m5507l(float f) {
        this.f36199e = f;
    }

    /* renamed from: m */
    public void m5506m(float f) {
        this.f36198d = f;
    }

    /* renamed from: n */
    public void m5505n(float f) {
        this.f36200f = f;
    }

    /* renamed from: o */
    public void m5504o(float f) {
        this.f36202h = f;
    }
}
