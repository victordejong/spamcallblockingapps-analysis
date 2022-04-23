package p131c.p161d.p170b.p188c;

import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.e0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/e0.class */
public final class C2788e0 {

    /* renamed from: a */
    public final AbstractC2737t.C2738a f10142a;

    /* renamed from: b */
    public final long f10143b;

    /* renamed from: c */
    public final long f10144c;

    /* renamed from: d */
    public final long f10145d;

    /* renamed from: e */
    public final long f10146e;

    /* renamed from: f */
    public final boolean f10147f;

    /* renamed from: g */
    public final boolean f10148g;

    public C2788e0(AbstractC2737t.C2738a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f10142a = aVar;
        this.f10143b = j;
        this.f10144c = j2;
        this.f10145d = j3;
        this.f10146e = j4;
        this.f10147f = z;
        this.f10148g = z2;
    }

    /* renamed from: a */
    public C2788e0 m29011a(long j) {
        return j == this.f10144c ? this : new C2788e0(this.f10142a, this.f10143b, j, this.f10145d, this.f10146e, this.f10147f, this.f10148g);
    }

    /* renamed from: b */
    public C2788e0 m29010b(long j) {
        return j == this.f10143b ? this : new C2788e0(this.f10142a, j, this.f10144c, this.f10145d, this.f10146e, this.f10147f, this.f10148g);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2788e0.class != obj.getClass()) {
            return false;
        }
        C2788e0 e0Var = (C2788e0) obj;
        if (!(this.f10143b == e0Var.f10143b && this.f10144c == e0Var.f10144c && this.f10145d == e0Var.f10145d && this.f10146e == e0Var.f10146e && this.f10147f == e0Var.f10147f && this.f10148g == e0Var.f10148g && C2885h0.m28669a(this.f10142a, e0Var.f10142a))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((527 + this.f10142a.hashCode()) * 31) + ((int) this.f10143b)) * 31) + ((int) this.f10144c)) * 31) + ((int) this.f10145d)) * 31) + ((int) this.f10146e)) * 31) + (this.f10147f ? 1 : 0)) * 31) + (this.f10148g ? 1 : 0);
    }
}
