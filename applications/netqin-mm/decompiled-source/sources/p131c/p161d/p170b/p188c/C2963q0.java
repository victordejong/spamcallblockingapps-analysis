package p131c.p161d.p170b.p188c;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.q0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/q0.class */
public final class C2963q0 {

    /* renamed from: c */
    public static final C2963q0 f10670c = new C2963q0(0, 0);

    /* renamed from: d */
    public static final C2963q0 f10671d = f10670c;

    /* renamed from: a */
    public final long f10672a;

    /* renamed from: b */
    public final long f10673b;

    static {
        new C2963q0(Long.MAX_VALUE, Long.MAX_VALUE);
        new C2963q0(Long.MAX_VALUE, 0L);
        new C2963q0(0L, Long.MAX_VALUE);
    }

    public C2963q0(long j, long j2) {
        boolean z = true;
        C2877e.m28734a(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        C2877e.m28734a(z);
        this.f10672a = j;
        this.f10673b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2963q0.class != obj.getClass()) {
            return false;
        }
        C2963q0 q0Var = (C2963q0) obj;
        if (!(this.f10672a == q0Var.f10672a && this.f10673b == q0Var.f10673b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f10672a) * 31) + ((int) this.f10673b);
    }
}
