package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.extractor.d.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/j.class */
final class C1528j {

    /* renamed from: a */
    int f5885a;

    /* renamed from: b */
    int f5886b;

    /* renamed from: c */
    private final byte[] f5887c;

    /* renamed from: d */
    private final int f5888d;

    public C1528j(byte[] bArr) {
        this.f5887c = bArr;
        this.f5888d = bArr.length;
    }

    /* renamed from: b */
    private void m42743b() {
        int i;
        int i2 = this.f5885a;
        C1993a.m41686b(i2 >= 0 && (i2 < (i = this.f5888d) || (i2 == i && this.f5886b == 0)));
    }

    /* renamed from: a */
    public final int m42744a(int i) {
        int i2 = this.f5885a;
        int min = Math.min(i, 8 - this.f5886b);
        int i3 = i2 + 1;
        int i4 = ((this.f5887c[i2] & 255) >> this.f5886b) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f5887c[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m42742b(i);
        return i4 & ((-1) >>> (32 - i));
    }

    /* renamed from: a */
    public final boolean m42745a() {
        boolean z = (((this.f5887c[this.f5885a] & 255) >> this.f5886b) & 1) == 1;
        m42742b(1);
        return z;
    }

    /* renamed from: b */
    public final void m42742b(int i) {
        int i2 = i / 8;
        int i3 = this.f5885a + i2;
        this.f5885a = i3;
        int i4 = this.f5886b + (i - (i2 * 8));
        this.f5886b = i4;
        if (i4 > 7) {
            this.f5885a = i3 + 1;
            this.f5886b = i4 - 8;
        }
        m42743b();
    }
}
