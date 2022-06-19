package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zr3.class */
public final class zr3 {

    /* renamed from: a */
    private final byte[] f33385a;

    /* renamed from: b */
    private final int f33386b;

    /* renamed from: c */
    private int f33387c;

    /* renamed from: d */
    private int f33388d;

    public zr3(byte[] bArr) {
        this.f33385a = bArr;
        this.f33386b = bArr.length;
    }

    /* renamed from: a */
    public final boolean m8202a() {
        byte b = this.f33385a[this.f33387c];
        int i = this.f33388d;
        m8200c(1);
        return 1 == (((b & 255) >> i) & 1);
    }

    /* renamed from: b */
    public final int m8201b(int i) {
        int i2 = this.f33387c;
        int min = Math.min(i, 8 - this.f33388d);
        int i3 = i2 + 1;
        int i4 = ((this.f33385a[i2] & 255) >> this.f33388d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f33385a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m8200c(i);
        return ((-1) >>> (32 - i)) & i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0067, code lost:
        if (r6 == 0) goto L13;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8200c(int r6) {
        /*
            r5 = this;
            r0 = r6
            r1 = 8
            int r0 = r0 / r1
            r7 = r0
            r0 = r5
            int r0 = r0.f33387c
            r1 = r7
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = r8
            r0.f33387c = r1
            r0 = r5
            int r0 = r0.f33388d
            r1 = r6
            r2 = r7
            r3 = 8
            int r2 = r2 * r3
            int r1 = r1 - r2
            int r0 = r0 + r1
            r9 = r0
            r0 = r5
            r1 = r9
            r0.f33388d = r1
            r0 = r8
            r7 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            r1 = 7
            if (r0 <= r1) goto L44
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
            r0 = r5
            r1 = r7
            r0.f33387c = r1
            r0 = r9
            r1 = 8
            int r0 = r0 - r1
            r6 = r0
            r0 = r5
            r1 = r6
            r0.f33388d = r1
        L44:
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r7
            if (r0 < 0) goto L6d
            r0 = r5
            int r0 = r0.f33386b
            r8 = r0
            r0 = r7
            r1 = r8
            if (r0 < r1) goto L6a
            r0 = r10
            r11 = r0
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L6d
            r0 = r10
            r11 = r0
            r0 = r6
            if (r0 != 0) goto L6d
        L6a:
            r0 = 1
            r11 = r0
        L6d:
            r0 = r11
            com.google.android.gms.internal.ads.C7173y8.m8895d(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zr3.m8200c(int):void");
    }

    /* renamed from: d */
    public final int m8199d() {
        return (this.f33387c * 8) + this.f33388d;
    }
}
