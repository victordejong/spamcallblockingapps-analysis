package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import java.util.UUID;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
/* renamed from: e.k.a.c.l0.t.w0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/w0.class */
public class C23865w0 extends AbstractC23849p0<UUID> implements AbstractC23766i {

    /* renamed from: d */
    public static final char[] f66015d = "0123456789abcdef".toCharArray();

    /* renamed from: c */
    public final Boolean f66016c;

    public C23865w0() {
        super(UUID.class);
        this.f66016c = null;
    }

    public C23865w0(Boolean bool) {
        super(UUID.class);
        this.f66016c = bool;
    }

    /* renamed from: p */
    public static final void m5991p(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 24);
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >> 16);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >> 8);
        bArr[i4 + 1] = (byte) i;
    }

    /* renamed from: q */
    public static void m5990q(int i, char[] cArr, int i2) {
        char[] cArr2 = f66015d;
        cArr[i2] = cArr2[(i >> 12) & 15];
        int i3 = i2 + 1;
        cArr[i3] = cArr2[(i >> 8) & 15];
        int i4 = i3 + 1;
        cArr[i4] = cArr2[(i >> 4) & 15];
        cArr[i4 + 1] = cArr2[i & 15];
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23890n<?> mo5992b(p193e.p1545k.p1546a.p1556c.AbstractC23425a0 r6, p193e.p1545k.p1546a.p1556c.AbstractC23462d r7) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r5
            java.lang.Class<T> r3 = r3.f65984a
            e.k.a.a.k$d r0 = r0.m6014l(r1, r2, r3)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L30
            r0 = r6
            e.k.a.a.k$c r0 = r0.f64499b
            r6 = r0
            r0 = r6
            e.k.a.a.k$c r1 = p193e.p1545k.p1546a.p1547a.AbstractC23311k.EnumC23314c.BINARY
            if (r0 != r1) goto L22
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r6 = r0
            goto L32
        L22:
            r0 = r6
            e.k.a.a.k$c r1 = p193e.p1545k.p1546a.p1547a.AbstractC23311k.EnumC23314c.STRING
            if (r0 != r1) goto L30
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r6 = r0
            goto L32
        L30:
            r0 = 0
            r6 = r0
        L32:
            r0 = r6
            r1 = r5
            java.lang.Boolean r1 = r1.f66016c
            boolean r0 = java.util.Objects.equals(r0, r1)
            if (r0 != 0) goto L46
            e.k.a.c.l0.t.w0 r0 = new e.k.a.c.l0.t.w0
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            return r0
        L46:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.C23865w0.mo5992b(e.k.a.c.a0, e.k.a.c.d):e.k.a.c.n");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        UUID uuid = (UUID) obj;
        return uuid.getLeastSignificantBits() == 0 && uuid.getMostSignificantBits() == 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        UUID uuid = (UUID) obj;
        Boolean bool = this.f66016c;
        if (bool != null ? bool.booleanValue() : !(abstractC23372g instanceof C23893a0) && abstractC23372g.mo5861d()) {
            byte[] bArr = new byte[16];
            long mostSignificantBits = uuid.getMostSignificantBits();
            long leastSignificantBits = uuid.getLeastSignificantBits();
            m5991p((int) (mostSignificantBits >> 32), bArr, 0);
            m5991p((int) mostSignificantBits, bArr, 4);
            m5991p((int) (leastSignificantBits >> 32), bArr, 8);
            m5991p((int) leastSignificantBits, bArr, 12);
            abstractC23372g.m7210W(bArr);
            return;
        }
        char[] cArr = new char[36];
        long mostSignificantBits2 = uuid.getMostSignificantBits();
        int i = (int) (mostSignificantBits2 >> 32);
        m5990q(i >> 16, cArr, 0);
        m5990q(i, cArr, 4);
        cArr[8] = (char) 45;
        int i2 = (int) mostSignificantBits2;
        m5990q(i2 >>> 16, cArr, 9);
        cArr[13] = (char) 45;
        m5990q(i2, cArr, 14);
        cArr[18] = (char) 45;
        long leastSignificantBits2 = uuid.getLeastSignificantBits();
        m5990q((int) (leastSignificantBits2 >>> 48), cArr, 19);
        cArr[23] = (char) 45;
        m5990q((int) (leastSignificantBits2 >>> 32), cArr, 24);
        int i3 = (int) leastSignificantBits2;
        m5990q(i3 >> 16, cArr, 28);
        m5990q(i3, cArr, 32);
        abstractC23372g.mo5866V1(cArr, 0, 36);
    }
}
