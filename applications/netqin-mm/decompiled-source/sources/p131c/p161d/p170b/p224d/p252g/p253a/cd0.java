package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzjy;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.cd0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/cd0.class */
public final class cd0 {

    /* renamed from: d */
    public static final long[] f12550d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    public final byte[] f12551a = new byte[8];

    /* renamed from: b */
    public int f12552b;

    /* renamed from: c */
    public int f12553c;

    /* renamed from: a */
    public static int m27098a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f12550d;
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
    public static long m27096a(byte[] r7, int r8, boolean r9) {
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
            long[] r1 = p131c.p161d.p170b.p224d.p252g.p253a.cd0.f12550d
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
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.cd0.m27096a(byte[], int, boolean):long");
    }

    /* renamed from: a */
    public final long m27097a(zzjy zzjyVar, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.f12552b == 0) {
            if (!zzjyVar.mo11885a(this.f12551a, 0, 1, z)) {
                return -1L;
            }
            int a = m27098a(this.f12551a[0] & 255);
            this.f12553c = a;
            if (a != -1) {
                this.f12552b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i2 = this.f12553c;
        if (i2 > i) {
            this.f12552b = 0;
            return -2L;
        }
        if (i2 != 1) {
            zzjyVar.readFully(this.f12551a, 1, i2 - 1);
        }
        this.f12552b = 0;
        return m27096a(this.f12551a, this.f12553c, z2);
    }

    /* renamed from: a */
    public final void m27099a() {
        this.f12552b = 0;
        this.f12553c = 0;
    }

    /* renamed from: b */
    public final int m27095b() {
        return this.f12553c;
    }
}
