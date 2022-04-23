package p012b.p076s.p078b.p079a.p086s0.p091v;

import java.nio.ByteBuffer;
import java.util.UUID;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.s0.v.j */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/j.class */
public final class C1414j {

    /* renamed from: b.s.b.a.s0.v.j$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/j$a.class */
    public static class C1415a {

        /* renamed from: a */
        public final UUID f5689a;

        public C1415a(UUID uuid, int i, byte[] bArr) {
            this.f5689a = uuid;
        }
    }

    /* renamed from: a */
    public static C1415a m33378a(byte[] bArr) {
        C1184p pVar = new C1184p(bArr);
        if (pVar.m34361d() < 32) {
            return null;
        }
        pVar.m34358e(0);
        if (pVar.m34357f() != pVar.m34372a() + 4 || pVar.m34357f() != 1886614376) {
            return null;
        }
        int c = AbstractC1392a.m33492c(pVar.m34357f());
        if (c > 1) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unsupported pssh version: ");
            sb.append(c);
            C1175j.m34414d("PsshAtomUtil", sb.toString());
            return null;
        }
        UUID uuid = new UUID(pVar.m34348n(), pVar.m34348n());
        if (c == 1) {
            pVar.m34356f(pVar.m34340v() * 16);
        }
        int v = pVar.m34340v();
        if (v != pVar.m34372a()) {
            return null;
        }
        byte[] bArr2 = new byte[v];
        pVar.m34366a(bArr2, 0, v);
        return new C1415a(uuid, c, bArr2);
    }

    /* renamed from: a */
    public static byte[] m33380a(UUID uuid, byte[] bArr) {
        return m33379a(uuid, null, bArr);
    }

    /* renamed from: a */
    public static byte[] m33379a(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        int i = length;
        if (uuidArr != null) {
            i = length + (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i);
        allocate.putInt(i);
        allocate.putInt(1886614376);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (!(bArr == null || bArr.length == 0)) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    /* renamed from: b */
    public static UUID m33377b(byte[] bArr) {
        C1415a a = m33378a(bArr);
        if (a == null) {
            return null;
        }
        return a.f5689a;
    }
}
