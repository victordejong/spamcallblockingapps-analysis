package p131c.p161d.p170b.p188c.p210w0.p215v;

import java.util.UUID;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.w0.v.j */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/j.class */
public final class C3107j {

    /* renamed from: c.d.b.c.w0.v.j$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/j$a.class */
    public static class C3108a {

        /* renamed from: a */
        public final UUID f11329a;

        public C3108a(UUID uuid, int i, byte[] bArr) {
            this.f11329a = uuid;
        }
    }

    /* renamed from: a */
    public static C3108a m27807a(byte[] bArr) {
        C2904v vVar = new C2904v(bArr);
        if (vVar.m28541d() < 32) {
            return null;
        }
        vVar.m28538e(0);
        if (vVar.m28535g() != vVar.m28552a() + 4 || vVar.m28535g() != 1886614376) {
            return null;
        }
        int c = AbstractC3087c.m27919c(vVar.m28535g());
        if (c > 1) {
            C2894o.m28594d("PsshAtomUtil", "Unsupported pssh version: " + c);
            return null;
        }
        UUID uuid = new UUID(vVar.m28528n(), vVar.m28528n());
        if (c == 1) {
            vVar.m28536f(vVar.m28520v() * 16);
        }
        int v = vVar.m28520v();
        if (v != vVar.m28552a()) {
            return null;
        }
        byte[] bArr2 = new byte[v];
        vVar.m28546a(bArr2, 0, v);
        return new C3108a(uuid, c, bArr2);
    }

    /* renamed from: b */
    public static UUID m27806b(byte[] bArr) {
        C3108a a = m27807a(bArr);
        if (a == null) {
            return null;
        }
        return a.f11329a;
    }
}
