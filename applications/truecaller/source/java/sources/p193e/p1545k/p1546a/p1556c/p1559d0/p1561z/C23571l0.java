package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import io.agora.rtc.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23366b;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23617c;
/* renamed from: e.k.a.c.d0.z.l0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/l0.class */
public class C23571l0 extends AbstractC23576o<UUID> {

    /* renamed from: e */
    public static final int[] f65384e;

    static {
        int i;
        int[] iArr = new int[Constants.ERR_WATERMARKR_INFO];
        f65384e = iArr;
        Arrays.fill(iArr, -1);
        int i2 = 0;
        while (true) {
            if (i2 < 10) {
                f65384e[i2 + 48] = i2;
                i2++;
            }
        }
        for (i = 0; i < 6; i++) {
            int[] iArr2 = f65384e;
            int i3 = i + 10;
            iArr2[i + 97] = i3;
            iArr2[i + 65] = i3;
        }
    }

    public C23571l0() {
        super(UUID.class);
    }

    /* renamed from: s0 */
    public static int m6573s0(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: t0 */
    public static long m6572t0(byte[] bArr, int i) {
        return ((m6573s0(bArr, i + 4) << 32) >>> 32) | (m6573s0(bArr, i) << 32);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) {
        return new UUID(0L, 0L);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23576o
    /* renamed from: m0 */
    public UUID mo6553m0(String str, AbstractC23632g abstractC23632g) throws IOException {
        UUID uuid;
        if (str.length() != 36) {
            if (str.length() != 24) {
                abstractC23632g.m6492N(this.f65309a, str, "UUID has to be represented by standard 36-char representation", new Object[0]);
                throw null;
            }
            C23344a c23344a = C23366b.f64606b;
            Objects.requireNonNull(c23344a);
            C23348c c23348c = new C23348c((C23346a) null, 500);
            c23344a.m7265d(str, c23348c);
            uuid = m6574r0(c23348c.m7247q(), abstractC23632g);
        } else if (str.charAt(8) != '-' || str.charAt(13) != '-' || str.charAt(18) != '-' || str.charAt(23) != '-') {
            abstractC23632g.m6492N(this.f65309a, str, "UUID has to be represented by standard 36-char representation", new Object[0]);
            throw null;
        } else {
            uuid = new UUID((m6570v0(str, 0, abstractC23632g) << 32) + ((m6569w0(str, 9, abstractC23632g) << 16) | m6569w0(str, 14, abstractC23632g)), ((m6570v0(str, 28, abstractC23632g) << 32) >>> 32) | ((m6569w0(str, 24, abstractC23632g) | (m6569w0(str, 19, abstractC23632g) << 16)) << 32));
        }
        return uuid;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23576o
    /* renamed from: n0 */
    public UUID mo6557n0(Object obj, AbstractC23632g abstractC23632g) throws IOException {
        if (obj instanceof byte[]) {
            return m6574r0((byte[]) obj, abstractC23632g);
        }
        super.mo6557n0(obj, abstractC23632g);
        throw null;
    }

    /* renamed from: q0 */
    public int m6575q0(String str, AbstractC23632g abstractC23632g, char c) throws C23733k {
        throw abstractC23632g.m6469i0(str, this.f65309a, String.format("Non-hex character '%c' (value 0x%s), not valid for UUID String", Character.valueOf(c), Integer.toHexString(c)));
    }

    /* renamed from: r0 */
    public final UUID m6574r0(byte[] bArr, AbstractC23632g abstractC23632g) throws C23733k {
        if (bArr.length == 16) {
            return new UUID(m6572t0(bArr, 0), m6572t0(bArr, 8));
        }
        throw new C23617c(abstractC23632g.f65505g, C22128a.m8697J2(C22128a.m8728C("Can only construct UUIDs from byte[16]; got "), bArr.length, " bytes"), bArr, this.f65309a);
    }

    /* renamed from: u0 */
    public int m6571u0(String str, int i, AbstractC23632g abstractC23632g) throws C23733k {
        int i2;
        int[] iArr = f65384e;
        char charAt = str.charAt(i);
        char charAt2 = str.charAt(i + 1);
        if (charAt > 127 || charAt2 > 127 || (i2 = (iArr[charAt] << 4) | iArr[charAt2]) < 0) {
            if (charAt > 127 || iArr[charAt] < 0) {
                m6575q0(str, abstractC23632g, charAt);
                throw null;
            }
            m6575q0(str, abstractC23632g, charAt2);
            throw null;
        }
        return i2;
    }

    /* renamed from: v0 */
    public int m6570v0(String str, int i, AbstractC23632g abstractC23632g) throws C23733k {
        return m6571u0(str, i + 6, abstractC23632g) + (m6571u0(str, i, abstractC23632g) << 24) + (m6571u0(str, i + 2, abstractC23632g) << 16) + (m6571u0(str, i + 4, abstractC23632g) << 8);
    }

    /* renamed from: w0 */
    public int m6569w0(String str, int i, AbstractC23632g abstractC23632g) throws C23733k {
        return m6571u0(str, i + 2, abstractC23632g) + (m6571u0(str, i, abstractC23632g) << 8);
    }
}
