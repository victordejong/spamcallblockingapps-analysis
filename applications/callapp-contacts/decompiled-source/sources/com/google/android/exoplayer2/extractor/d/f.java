package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.extractor.i;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/f.class */
final class f {

    /* renamed from: b  reason: collision with root package name */
    private static final long[] f20983b = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a  reason: collision with root package name */
    int f20984a;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f20985c = new byte[8];

    /* renamed from: d  reason: collision with root package name */
    private int f20986d;

    public static int a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f20983b;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(byte[] r7, int r8, boolean r9) {
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
            long[] r1 = com.google.android.exoplayer2.extractor.d.f.f20983b
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.d.f.a(byte[], int, boolean):long");
    }

    public final long a(i iVar, boolean z, boolean z2, int i) throws IOException {
        if (this.f20986d == 0) {
            if (!iVar.a(this.f20985c, 0, 1, z)) {
                return -1L;
            }
            int a2 = a(this.f20985c[0] & 255);
            this.f20984a = a2;
            if (a2 != -1) {
                this.f20986d = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i2 = this.f20984a;
        if (i2 > i) {
            this.f20986d = 0;
            return -2L;
        }
        if (i2 != 1) {
            iVar.b(this.f20985c, 1, i2 - 1);
        }
        this.f20986d = 0;
        return a(this.f20985c, this.f20984a, z2);
    }

    public final void a() {
        this.f20986d = 0;
        this.f20984a = 0;
    }
}
