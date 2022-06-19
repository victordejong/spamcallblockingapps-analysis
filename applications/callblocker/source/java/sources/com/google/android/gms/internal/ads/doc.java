package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/doc.class */
final class doc {

    /* renamed from: a */
    private final dsk f15017a = new dsk(8);

    /* renamed from: b */
    private int f15018b;

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: b */
    private final long m9008b(dng dngVar) {
        char c;
        dngVar.mo9055c(this.f15017a.f15569a, 0, 1);
        int i = this.f15017a.f15569a[0] & 255;
        if (i == 0) {
            c = 0;
        } else {
            int i2 = 0;
            int i3 = 128;
            while ((i & i3) == 0) {
                i3 >>= 1;
                i2++;
            }
            int i4 = (i3 ^ (-1)) & i;
            dngVar.mo9055c(this.f15017a.f15569a, 1, i2);
            for (int i5 = 0; i5 < i2; i5++) {
                i4 = (i4 << 8) + (this.f15017a.f15569a[i5 + 1] & 255);
            }
            this.f15018b += i2 + 1;
            c = i4;
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0111, code lost:
        r15 = false;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9009a(com.google.android.gms.internal.ads.dng r8) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.doc.m9009a(com.google.android.gms.internal.ads.dng):boolean");
    }
}
