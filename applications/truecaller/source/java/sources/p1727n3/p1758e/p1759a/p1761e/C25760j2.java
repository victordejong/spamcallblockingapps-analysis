package p1727n3.p1758e.p1759a.p1761e;

import p1727n3.p1758e.p1767b.AbstractC25931i1;
/* renamed from: n3.e.a.e.j2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/j2.class */
public class C25760j2 implements AbstractC25931i1 {

    /* renamed from: a */
    public float f72147a;

    /* renamed from: b */
    public final float f72148b;

    /* renamed from: c */
    public final float f72149c;

    /* renamed from: d */
    public float f72150d;

    public C25760j2(float f, float f2) {
        this.f72148b = f;
        this.f72149c = f2;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25931i1
    /* renamed from: a */
    public float mo2752a() {
        return this.f72147a;
    }

    /* renamed from: b */
    public void m2999b(float f) throws IllegalArgumentException {
        float f2;
        float f3 = this.f72148b;
        if (f <= f3) {
            float f4 = this.f72149c;
            if (f >= f4) {
                this.f72147a = f;
                if (f3 == f4) {
                    f2 = 0.0f;
                } else if (f == f3) {
                    f2 = 1.0f;
                } else if (f == f4) {
                    f2 = 0.0f;
                } else {
                    float f5 = 1.0f / f3;
                    float f6 = 1.0f / f4;
                    f2 = ((1.0f / f) - f6) / (f5 - f6);
                }
                this.f72150d = f2;
                return;
            }
        }
        throw new IllegalArgumentException("Requested zoomRatio " + f + " is not within valid range [" + this.f72149c + " , " + this.f72148b + "]");
    }
}
