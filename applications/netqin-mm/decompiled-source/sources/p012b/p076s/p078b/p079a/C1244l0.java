package p012b.p076s.p078b.p079a;

import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.l0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/l0.class */
public final class C1244l0 {

    /* renamed from: c */
    public static final C1244l0 f4939c = new C1244l0(0, 0);

    /* renamed from: d */
    public static final C1244l0 f4940d = new C1244l0(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: e */
    public static final C1244l0 f4941e = new C1244l0(Long.MAX_VALUE, 0);

    /* renamed from: f */
    public static final C1244l0 f4942f = new C1244l0(0, Long.MAX_VALUE);

    /* renamed from: g */
    public static final C1244l0 f4943g = f4939c;

    /* renamed from: a */
    public final long f4944a;

    /* renamed from: b */
    public final long f4945b;

    public C1244l0(long j, long j2) {
        boolean z = true;
        C1160a.m34520a(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        C1160a.m34520a(z);
        this.f4944a = j;
        this.f4945b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1244l0.class != obj.getClass()) {
            return false;
        }
        C1244l0 l0Var = (C1244l0) obj;
        if (!(this.f4944a == l0Var.f4944a && this.f4945b == l0Var.f4945b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f4944a) * 31) + ((int) this.f4945b);
    }
}
