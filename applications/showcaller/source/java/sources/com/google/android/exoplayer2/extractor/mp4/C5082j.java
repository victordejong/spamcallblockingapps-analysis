package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.j */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/j.class */
public final class C5082j {

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/j$a.class */
    public static class C5083a {

        /* renamed from: a */
        private final UUID f15880a;

        /* renamed from: b */
        private final int f15881b;

        /* renamed from: c */
        private final byte[] f15882c;

        public C5083a(UUID uuid, int i, byte[] bArr) {
            this.f15880a = uuid;
            this.f15881b = i;
            this.f15882c = bArr;
        }
    }

    /* renamed from: a */
    public static byte[] m20603a(UUID uuid, byte[] bArr) {
        return m20602b(uuid, null, bArr);
    }

    /* renamed from: b */
    public static byte[] m20602b(UUID uuid, UUID[] uuidArr, byte[] bArr) {
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
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    /* renamed from: c */
    private static C5083a m20601c(byte[] bArr) {
        C5536v c5536v = new C5536v(bArr);
        if (c5536v.m18675d() < 32) {
            return null;
        }
        c5536v.m18680M(0);
        if (c5536v.m18668k() != c5536v.m18678a() + 4 || c5536v.m18668k() != 1886614376) {
            return null;
        }
        int m20718c = AbstractC5062c.m20718c(c5536v.m18668k());
        if (m20718c > 1) {
            C5526o.m18742f("PsshAtomUtil", "Unsupported pssh version: " + m20718c);
            return null;
        }
        UUID uuid = new UUID(c5536v.m18660s(), c5536v.m18660s());
        if (m20718c == 1) {
            c5536v.m18679N(c5536v.m18689D() * 16);
        }
        int m18689D = c5536v.m18689D();
        if (m18689D != c5536v.m18678a()) {
            return null;
        }
        byte[] bArr2 = new byte[m18689D];
        c5536v.m18671h(bArr2, 0, m18689D);
        return new C5083a(uuid, m20718c, bArr2);
    }

    /* renamed from: d */
    public static UUID m20600d(byte[] bArr) {
        C5083a m20601c = m20601c(bArr);
        if (m20601c == null) {
            return null;
        }
        return m20601c.f15880a;
    }
}
