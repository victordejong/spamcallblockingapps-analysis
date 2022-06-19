package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
import java.nio.ByteBuffer;
import java.util.UUID;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/j.class */
public final class C1629j {

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/j$a.class */
    public static final class C1630a {

        /* renamed from: a */
        final UUID f6453a;

        /* renamed from: b */
        private final int f6454b;

        /* renamed from: c */
        private final byte[] f6455c;

        public C1630a(UUID uuid, int i, byte[] bArr) {
            this.f6453a = uuid;
            this.f6454b = i;
            this.f6455c = bArr;
        }
    }

    private C1629j() {
    }

    /* renamed from: a */
    public static UUID m42519a(byte[] bArr) {
        C1630a m42518b = m42518b(bArr);
        if (m42518b == null) {
            return null;
        }
        return m42518b.f6453a;
    }

    /* renamed from: a */
    public static byte[] m42520a(UUID uuid, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(1886614376);
        allocate.putInt(0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    /* renamed from: b */
    private static C1630a m42518b(byte[] bArr) {
        C2018p c2018p = new C2018p(bArr);
        if (c2018p.f8133c < 32) {
            return null;
        }
        c2018p.m41533c(0);
        if (c2018p.m41524i() != c2018p.m41536b() + 4 || c2018p.m41524i() != 1886614376) {
            return null;
        }
        int m42593a = AbstractC1607a.m42593a(c2018p.m41524i());
        if (m42593a > 1) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unsupported pssh version: ");
            sb.append(m42593a);
            C2009j.m41584a("PsshAtomUtil", sb.toString());
            return null;
        }
        UUID uuid = new UUID(c2018p.m41522k(), c2018p.m41522k());
        if (m42593a == 1) {
            c2018p.m41531d(c2018p.m41519n() * 16);
        }
        int m41519n = c2018p.m41519n();
        if (m41519n != c2018p.m41536b()) {
            return null;
        }
        byte[] bArr2 = new byte[m41519n];
        c2018p.m41537a(bArr2, 0, m41519n);
        return new C1630a(uuid, m42593a, bArr2);
    }
}
