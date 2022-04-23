package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.p;
import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/j.class */
public final class j {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final UUID f3366a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3367b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f3368c;

        public a(UUID uuid, int i, byte[] bArr) {
            this.f3366a = uuid;
            this.f3367b = i;
            this.f3368c = bArr;
        }
    }

    private j() {
    }

    public static UUID a(byte[] bArr) {
        a b2 = b(bArr);
        if (b2 == null) {
            return null;
        }
        return b2.f3366a;
    }

    public static byte[] a(UUID uuid, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(1886614376);
        allocate.putInt(0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (!(bArr == null || bArr.length == 0)) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    private static a b(byte[] bArr) {
        p pVar = new p(bArr);
        if (pVar.f4168c < 32) {
            return null;
        }
        pVar.c(0);
        if (pVar.i() != pVar.b() + 4 || pVar.i() != 1886614376) {
            return null;
        }
        int a2 = androidx.media2.exoplayer.external.extractor.mp4.a.a(pVar.i());
        if (a2 > 1) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unsupported pssh version: ");
            sb.append(a2);
            androidx.media2.exoplayer.external.util.j.a("PsshAtomUtil", sb.toString());
            return null;
        }
        UUID uuid = new UUID(pVar.k(), pVar.k());
        if (a2 == 1) {
            pVar.d(pVar.n() * 16);
        }
        int n = pVar.n();
        if (n != pVar.b()) {
            return null;
        }
        byte[] bArr2 = new byte[n];
        pVar.a(bArr2, 0, n);
        return new a(uuid, a2, bArr2);
    }
}
