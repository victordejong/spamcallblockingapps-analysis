package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pn2.class */
final class pn2 {

    /* renamed from: a */
    private final sr2 f8141a = new sr2(8);

    /* renamed from: b */
    private int f8142b;

    /* renamed from: b */
    private final long m6186b(xm2 xm2Var) {
        int i = 0;
        xm2Var.m4891e(this.f8141a.f8551a, 0, 1, false);
        int i2 = this.f8141a.f8551a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        xm2Var.m4891e(this.f8141a.f8551a, 1, i4, false);
        while (i < i4) {
            i++;
            i5 = (this.f8141a.f8551a[i] & 255) + (i5 << 8);
        }
        this.f8142b += i4 + 1;
        return i5;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6187a(com.google.android.gms.internal.ads.xm2 r7) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.pn2.m6187a(com.google.android.gms.internal.ads.xm2):boolean");
    }
}
