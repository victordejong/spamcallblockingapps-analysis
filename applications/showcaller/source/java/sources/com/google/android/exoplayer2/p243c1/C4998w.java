package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.c1.w */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/w.class */
public final class C4998w {

    /* renamed from: a */
    private final byte[] f15529a;

    /* renamed from: b */
    private final int f15530b;

    /* renamed from: c */
    private int f15531c;

    /* renamed from: d */
    private int f15532d;

    public C4998w(byte[] bArr) {
        this.f15529a = bArr;
        this.f15530b = bArr.length;
    }

    /* renamed from: a */
    private void m20964a() {
        int i;
        int i2 = this.f15531c;
        C5508e.m18910f(i2 >= 0 && (i2 < (i = this.f15530b) || (i2 == i && this.f15532d == 0)));
    }

    /* renamed from: b */
    public int m20963b() {
        return (this.f15531c * 8) + this.f15532d;
    }

    /* renamed from: c */
    public boolean m20962c() {
        boolean z = (((this.f15529a[this.f15531c] & 255) >> this.f15532d) & 1) == 1;
        m20960e(1);
        return z;
    }

    /* renamed from: d */
    public int m20961d(int i) {
        int i2 = this.f15531c;
        int min = Math.min(i, 8 - this.f15532d);
        int i3 = i2 + 1;
        int i4 = ((this.f15529a[i2] & 255) >> this.f15532d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f15529a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m20960e(i);
        return i4 & ((-1) >>> (32 - i));
    }

    /* renamed from: e */
    public void m20960e(int i) {
        int i2 = i / 8;
        int i3 = this.f15531c + i2;
        this.f15531c = i3;
        int i4 = this.f15532d + (i - (i2 * 8));
        this.f15532d = i4;
        if (i4 > 7) {
            this.f15531c = i3 + 1;
            this.f15532d = i4 - 8;
        }
        m20964a();
    }
}
