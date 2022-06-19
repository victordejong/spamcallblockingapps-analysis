package p193e.p1577m.p1578a.p1596c;

import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.o0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/o0.class */
public final class C24652o0 {

    /* renamed from: e */
    public static final C24652o0 f69035e = new C24652o0(1.0f, 1.0f, false);

    /* renamed from: a */
    public final float f69036a;

    /* renamed from: b */
    public final float f69037b;

    /* renamed from: c */
    public final boolean f69038c;

    /* renamed from: d */
    public final int f69039d;

    public C24652o0(float f, float f2, boolean z) {
        C26232y.m2310r(f > 0.0f);
        C26232y.m2310r(f2 > 0.0f);
        this.f69036a = f;
        this.f69037b = f2;
        this.f69038c = z;
        this.f69039d = Math.round(f * 1000.0f);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24652o0.class != obj.getClass()) {
            return false;
        }
        C24652o0 c24652o0 = (C24652o0) obj;
        if (this.f69036a != c24652o0.f69036a || this.f69037b != c24652o0.f69037b || this.f69038c != c24652o0.f69038c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((Float.floatToRawIntBits(this.f69037b) + ((Float.floatToRawIntBits(this.f69036a) + 527) * 31)) * 31) + (this.f69038c ? 1 : 0);
    }
}
