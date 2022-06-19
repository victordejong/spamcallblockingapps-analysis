package androidx.media2.exoplayer.external.util;
/* renamed from: androidx.media2.exoplayer.external.util.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/q.class */
public final class C2019q {

    /* renamed from: a */
    private byte[] f8134a;

    /* renamed from: b */
    private int f8135b;

    /* renamed from: c */
    private int f8136c;

    /* renamed from: d */
    private int f8137d;

    public C2019q(byte[] bArr, int i, int i2) {
        m41512a(bArr, i, i2);
    }

    /* renamed from: d */
    private boolean m41506d(int i) {
        if (2 > i || i >= this.f8135b) {
            return false;
        }
        byte[] bArr = this.f8134a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: f */
    private void m41504f() {
        int i;
        int i2 = this.f8136c;
        C1993a.m41686b(i2 >= 0 && (i2 < (i = this.f8135b) || (i2 == i && this.f8137d == 0)));
    }

    /* renamed from: a */
    public final void m41514a() {
        int i = 1;
        int i2 = this.f8137d + 1;
        this.f8137d = i2;
        if (i2 == 8) {
            this.f8137d = 0;
            int i3 = this.f8136c;
            if (m41506d(i3 + 1)) {
                i = 2;
            }
            this.f8136c = i3 + i;
        }
        m41504f();
    }

    /* renamed from: a */
    public final void m41513a(int i) {
        int i2 = this.f8136c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f8136c = i4;
        int i5 = this.f8137d + (i - (i3 * 8));
        this.f8137d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f8136c = i4 + 1;
            this.f8137d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 > this.f8136c) {
                m41504f();
                return;
            }
            i6 = i7;
            if (m41506d(i7)) {
                this.f8136c++;
                i6 = i7 + 2;
            }
        }
    }

    /* renamed from: a */
    public final void m41512a(byte[] bArr, int i, int i2) {
        this.f8134a = bArr;
        this.f8136c = i;
        this.f8135b = i2;
        this.f8137d = 0;
        m41504f();
    }

    /* renamed from: b */
    public final boolean m41511b() {
        boolean z = (this.f8134a[this.f8136c] & (128 >> this.f8137d)) != 0;
        m41514a();
        return z;
    }

    /* renamed from: b */
    public final boolean m41510b(int i) {
        int i2 = this.f8136c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f8137d + i) - (i3 * 8);
        int i6 = i4;
        int i7 = i5;
        if (i5 > 7) {
            i6 = i4 + 1;
            i7 = i5 - 8;
        }
        int i8 = i6;
        int i9 = i2;
        while (true) {
            int i10 = i9 + 1;
            if (i10 > i8 || i8 >= this.f8135b) {
                break;
            }
            i9 = i10;
            if (m41506d(i10)) {
                i8++;
                i9 = i10 + 2;
            }
        }
        int i11 = this.f8135b;
        boolean z = true;
        if (i8 >= i11) {
            z = i8 == i11 && i7 == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final int m41508c(int i) {
        int i2;
        int i3;
        this.f8137d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f8137d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f8137d = i5;
            byte[] bArr = this.f8134a;
            int i6 = this.f8136c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!m41506d(i6 + 1)) {
                i3 = 1;
            }
            this.f8136c = i6 + i3;
        }
        byte[] bArr2 = this.f8134a;
        int i7 = this.f8136c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f8137d = 0;
            if (!m41506d(i7 + 1)) {
                i3 = 1;
            }
            this.f8136c = i7 + i3;
        }
        m41504f();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: c */
    public final boolean m41509c() {
        int i = this.f8136c;
        int i2 = this.f8137d;
        int i3 = 0;
        while (this.f8136c < this.f8135b && !m41511b()) {
            i3++;
        }
        boolean z = this.f8136c == this.f8135b;
        this.f8136c = i;
        this.f8137d = i2;
        return !z && m41510b((i3 * 2) + 1);
    }

    /* renamed from: d */
    public final int m41507d() {
        int m41505e = m41505e();
        return (m41505e % 2 == 0 ? -1 : 1) * ((m41505e + 1) / 2);
    }

    /* renamed from: e */
    public final int m41505e() {
        int i = 0;
        int i2 = 0;
        while (!m41511b()) {
            i2++;
        }
        if (i2 > 0) {
            i = m41508c(i2);
        }
        return ((1 << i2) - 1) + i;
    }
}
