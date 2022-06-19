package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.extractor.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/y.class */
public final class C11152y {

    /* renamed from: a */
    public int f36513a;

    /* renamed from: b */
    public int f36514b;

    /* renamed from: c */
    private final byte[] f36515c;

    /* renamed from: d */
    private final int f36516d;

    public C11152y(byte[] bArr) {
        this.f36515c = bArr;
        this.f36516d = bArr.length;
    }

    /* renamed from: b */
    private void m21384b() {
        int i;
        int i2 = this.f36513a;
        C11593a.m20019b(i2 >= 0 && (i2 < (i = this.f36516d) || (i2 == i && this.f36514b == 0)));
    }

    /* renamed from: a */
    public final int m21385a(int i) {
        int i2 = this.f36513a;
        int min = Math.min(i, 8 - this.f36514b);
        int i3 = i2 + 1;
        int i4 = ((this.f36515c[i2] & 255) >> this.f36514b) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f36515c[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m21383b(i);
        return i4 & ((-1) >>> (32 - i));
    }

    /* renamed from: a */
    public final boolean m21386a() {
        boolean z = (((this.f36515c[this.f36513a] & 255) >> this.f36514b) & 1) == 1;
        m21383b(1);
        return z;
    }

    /* renamed from: b */
    public final void m21383b(int i) {
        int i2 = i / 8;
        int i3 = this.f36513a + i2;
        this.f36513a = i3;
        int i4 = this.f36514b + (i - (i2 * 8));
        this.f36514b = i4;
        if (i4 > 7) {
            this.f36513a = i3 + 1;
            this.f36514b = i4 - 8;
        }
        m21384b();
    }
}
