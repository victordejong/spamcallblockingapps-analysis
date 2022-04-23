package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public int f21340a;

    /* renamed from: b  reason: collision with root package name */
    public int f21341b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f21342c;

    /* renamed from: d  reason: collision with root package name */
    private final int f21343d;

    public y(byte[] bArr) {
        this.f21342c = bArr;
        this.f21343d = bArr.length;
    }

    private void b() {
        int i;
        int i2 = this.f21340a;
        a.b(i2 >= 0 && (i2 < (i = this.f21343d) || (i2 == i && this.f21341b == 0)));
    }

    public final int a(int i) {
        int i2 = this.f21340a;
        int min = Math.min(i, 8 - this.f21341b);
        int i3 = i2 + 1;
        int i4 = ((this.f21342c[i2] & 255) >> this.f21341b) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f21342c[i3] & 255) << min;
            min += 8;
            i3++;
        }
        b(i);
        return i4 & ((-1) >>> (32 - i));
    }

    public final boolean a() {
        boolean z = (((this.f21342c[this.f21340a] & 255) >> this.f21341b) & 1) == 1;
        b(1);
        return z;
    }

    public final void b(int i) {
        int i2 = i / 8;
        int i3 = this.f21340a + i2;
        this.f21340a = i3;
        int i4 = this.f21341b + (i - (i2 * 8));
        this.f21341b = i4;
        if (i4 > 7) {
            this.f21340a = i3 + 1;
            this.f21341b = i4 - 8;
        }
        b();
    }
}
