package p081h.p203i.p204a.p294f.p297c;

import p081h.p203i.p204a.p294f.p313s.C9256b;
import p081h.p203i.p204a.p294f.p313s.C9258d;
/* renamed from: h.i.a.f.c.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/c/a.class */
public class C9179a extends C9256b {

    /* renamed from: a */
    public float f20907a;

    /* renamed from: b */
    public float f20908b;

    /* renamed from: c */
    public float f20909c;

    /* renamed from: d */
    public float f20910d;

    /* renamed from: e */
    public float f20911e;

    public C9179a(float f, float f2, float f3) {
        this.f20908b = f;
        this.f20907a = f2;
        this.f20910d = f3;
        if (f3 >= 0.0f) {
            this.f20911e = 0.0f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    /* renamed from: a */
    public float m15937a() {
        return this.f20910d;
    }

    /* renamed from: a */
    public void m15936a(float f) {
        this.f20909c = f;
    }

    @Override // p081h.p203i.p204a.p294f.p313s.C9256b
    /* renamed from: a */
    public void mo15597a(float f, float f2, C9258d dVar) {
        float f3 = this.f20909c;
        if (f3 == 0.0f) {
            dVar.m15579a(f, 0.0f);
            return;
        }
        float f4 = ((this.f20908b * 2.0f) + f3) / 2.0f;
        float f5 = f2 * this.f20907a;
        float f6 = (f / 2.0f) + this.f20911e;
        float f7 = (this.f20910d * f2) + ((1.0f - f2) * f4);
        if (f7 / f4 >= 1.0f) {
            dVar.m15579a(f, 0.0f);
            return;
        }
        float f8 = f4 + f5;
        float f9 = f7 + f5;
        float sqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f6 - sqrt;
        float f11 = f6 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f9));
        float f12 = 90.0f - degrees;
        float f13 = f10 - f5;
        dVar.m15579a(f13, 0.0f);
        float f14 = f5 * 2.0f;
        dVar.m15578a(f13, 0.0f, f10 + f5, f14, 270.0f, degrees);
        dVar.m15578a(f6 - f4, (-f4) - f7, f6 + f4, f4 - f7, 180.0f - f12, (f12 * 2.0f) - 180.0f);
        dVar.m15578a(f11 - f5, 0.0f, f11 + f5, f14, 270.0f - degrees, degrees);
        dVar.m15579a(f, 0.0f);
    }

    /* renamed from: b */
    public float m15935b() {
        return this.f20909c;
    }

    /* renamed from: b */
    public void m15934b(float f) {
        this.f20911e = f;
    }
}
