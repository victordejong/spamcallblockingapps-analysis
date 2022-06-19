package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: n3.y.b.a.q0.v.i */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/i.class */
public final class C27247i {

    /* renamed from: a */
    public final byte[] f76446a;

    /* renamed from: b */
    public final int f76447b;

    /* renamed from: c */
    public int f76448c;

    /* renamed from: d */
    public int f76449d;

    public C27247i(byte[] bArr) {
        this.f76446a = bArr;
        this.f76447b = bArr.length;
    }

    /* renamed from: a */
    public boolean m655a() {
        boolean z = (((this.f76446a[this.f76448c] & 255) >> this.f76449d) & 1) == 1;
        m653c(1);
        return z;
    }

    /* renamed from: b */
    public int m654b(int i) {
        int i2 = this.f76448c;
        int min = Math.min(i, 8 - this.f76449d);
        int i3 = i2 + 1;
        int i4 = ((this.f76446a[i2] & 255) >> this.f76449d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f76446a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m653c(i);
        return i4 & ((-1) >>> (32 - i));
    }

    /* renamed from: c */
    public void m653c(int i) {
        boolean z;
        int i2 = i / 8;
        int i3 = this.f76448c + i2;
        this.f76448c = i3;
        int i4 = (i - (i2 * 8)) + this.f76449d;
        this.f76449d = i4;
        if (i4 > 7) {
            this.f76448c = i3 + 1;
            this.f76449d = i4 - 8;
        }
        int i5 = this.f76448c;
        if (i5 >= 0) {
            int i6 = this.f76447b;
            z = true;
            if (i5 >= i6) {
                if (i5 == i6 && this.f76449d == 0) {
                    z = true;
                }
            }
            MediaSessionCompat.m43184y(z);
        }
        z = false;
        MediaSessionCompat.m43184y(z);
    }
}
