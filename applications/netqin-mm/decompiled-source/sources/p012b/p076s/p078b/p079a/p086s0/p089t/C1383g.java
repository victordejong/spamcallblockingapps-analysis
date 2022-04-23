package p012b.p076s.p078b.p079a.p086s0.p089t;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.t.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/g.class */
public final class C1383g {

    /* renamed from: d */
    public static final long[] f5538d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    public final byte[] f5539a = new byte[8];

    /* renamed from: b */
    public int f5540b;

    /* renamed from: c */
    public int f5541c;

    /* renamed from: a */
    public static int m33515a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f5538d;
            if (i3 >= jArr.length) {
                i2 = -1;
                break;
            } else if ((jArr[i3] & i) != 0) {
                i2 = i3 + 1;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m33513a(byte[] r7, int r8, boolean r9) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 255(0xff, double:1.26E-321)
            long r0 = r0 & r1
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x001f
            r0 = r10
            long[] r1 = p012b.p076s.p078b.p079a.p086s0.p089t.C1383g.f5538d
            r2 = r8
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            r2 = -1
            long r1 = r1 ^ r2
            long r0 = r0 & r1
            r12 = r0
        L_0x001f:
            r0 = 1
            r14 = r0
        L_0x0022:
            r0 = r14
            r1 = r8
            if (r0 >= r1) goto L_0x003f
            r0 = r12
            r1 = 8
            long r0 = r0 << r1
            r1 = r7
            r2 = r14
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 255(0xff, double:1.26E-321)
            long r1 = r1 & r2
            long r0 = r0 | r1
            r12 = r0
            int r14 = r14 + 1
            goto L_0x0022
        L_0x003f:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p089t.C1383g.m33513a(byte[], int, boolean):long");
    }

    /* renamed from: a */
    public int m33516a() {
        return this.f5541c;
    }

    /* renamed from: a */
    public long m33514a(AbstractC1351h hVar, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.f5540b == 0) {
            if (!hVar.mo33618a(this.f5539a, 0, 1, z)) {
                return -1L;
            }
            int a = m33515a(this.f5539a[0] & 255);
            this.f5541c = a;
            if (a != -1) {
                this.f5540b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i2 = this.f5541c;
        if (i2 > i) {
            this.f5540b = 0;
            return -2L;
        }
        if (i2 != 1) {
            hVar.readFully(this.f5539a, 1, i2 - 1);
        }
        this.f5540b = 0;
        return m33513a(this.f5539a, this.f5541c, z2);
    }

    /* renamed from: b */
    public void m33512b() {
        this.f5540b = 0;
        this.f5541c = 0;
    }
}
