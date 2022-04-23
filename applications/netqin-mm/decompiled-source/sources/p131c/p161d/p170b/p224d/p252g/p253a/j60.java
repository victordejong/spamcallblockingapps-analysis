package p131c.p161d.p170b.p224d.p252g.p253a;
/* renamed from: c.d.b.d.g.a.j60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j60.class */
public final class j60 {
    /* renamed from: a */
    public static long m26799a(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    /* renamed from: a */
    public static long m26798a(byte[] bArr, int i, int i2) {
        return (m26799a(bArr, i) >> i2) & 67108863;
    }

    /* renamed from: a */
    public static void m26797a(byte[] bArr, long j, int i) {
        int i2 = 0;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & j);
            i2++;
            j >>= 8;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r35v0 */
    /* JADX WARN: Type inference failed for: r35v1, types: [long] */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r37v0 */
    /* JADX WARN: Type inference failed for: r37v1, types: [long] */
    /* JADX WARN: Type inference failed for: r37v7 */
    /* JADX WARN: Type inference failed for: r40v0 */
    /* JADX WARN: Type inference failed for: r40v1, types: [long] */
    /* JADX WARN: Type inference failed for: r40v6 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m26796a(byte[] r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 921
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.j60.m26796a(byte[], byte[]):byte[]");
    }
}
