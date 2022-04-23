package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/j.class */
final class j {

    /* renamed from: a  reason: collision with root package name */
    int f3112a;

    /* renamed from: b  reason: collision with root package name */
    int f3113b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f3114c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3115d;

    public j(byte[] bArr) {
        this.f3114c = bArr;
        this.f3115d = bArr.length;
    }

    private void b() {
        int i;
        int i2 = this.f3112a;
        a.b(i2 >= 0 && (i2 < (i = this.f3115d) || (i2 == i && this.f3113b == 0)));
    }

    public final int a(int i) {
        int i2 = this.f3112a;
        int min = Math.min(i, 8 - this.f3113b);
        int i3 = i2 + 1;
        int i4 = ((this.f3114c[i2] & 255) >> this.f3113b) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f3114c[i3] & 255) << min;
            min += 8;
            i3++;
        }
        b(i);
        return i4 & ((-1) >>> (32 - i));
    }

    public final boolean a() {
        boolean z = (((this.f3114c[this.f3112a] & 255) >> this.f3113b) & 1) == 1;
        b(1);
        return z;
    }

    public final void b(int i) {
        int i2 = i / 8;
        int i3 = this.f3112a + i2;
        this.f3112a = i3;
        int i4 = this.f3113b + (i - (i2 * 8));
        this.f3113b = i4;
        if (i4 > 7) {
            this.f3112a = i3 + 1;
            this.f3113b = i4 - 8;
        }
        b();
    }
}
