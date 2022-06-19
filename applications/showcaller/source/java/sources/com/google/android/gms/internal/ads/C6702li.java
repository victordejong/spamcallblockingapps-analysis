package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.li */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/li.class */
public final class C6702li {

    /* renamed from: a */
    private final byte[] f26127a;

    /* renamed from: b */
    private final int f26128b;

    /* renamed from: c */
    private int f26129c;

    /* renamed from: d */
    private int f26130d = 0;

    public C6702li(byte[] bArr, int i, int i2) {
        this.f26127a = bArr;
        this.f26129c = i;
        this.f26128b = i2;
        m13506h();
    }

    /* renamed from: f */
    private final int m13508f() {
        int i = 0;
        int i2 = 0;
        while (!m13512b()) {
            i2++;
        }
        if (i2 > 0) {
            i = m13511c(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: g */
    private final boolean m13507g(int i) {
        if (i < 2 || i >= this.f26128b) {
            return false;
        }
        byte[] bArr = this.f26127a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: h */
    private final void m13506h() {
        boolean z;
        int i;
        int i2 = this.f26129c;
        if (i2 >= 0 && (i = this.f26130d) >= 0 && i < 8) {
            int i3 = this.f26128b;
            z = true;
            if (i2 >= i3) {
                if (i2 == i3 && i == 0) {
                    z = true;
                }
            }
            C6367ci.m16039d(z);
        }
        z = false;
        C6367ci.m16039d(z);
    }

    /* renamed from: a */
    public final void m13513a(int i) {
        int i2 = this.f26129c;
        int i3 = (i >> 3) + i2;
        this.f26129c = i3;
        int i4 = this.f26130d + (i & 7);
        this.f26130d = i4;
        int i5 = i2;
        if (i4 > 7) {
            this.f26129c = i3 + 1;
            this.f26130d = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 > this.f26129c) {
                m13506h();
                return;
            }
            i5 = i6;
            if (m13507g(i6)) {
                this.f26129c++;
                i5 = i6 + 2;
            }
        }
    }

    /* renamed from: b */
    public final boolean m13512b() {
        return m13511c(1) == 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* renamed from: c */
    public final int m13511c(int i) {
        int i2;
        boolean z;
        int i3 = 0;
        int i4 = 0;
        int i5 = i;
        while (true) {
            i2 = i5;
            if (i3 >= (i >> 3)) {
                break;
            }
            int i6 = m13507g(this.f26129c + 1) ? this.f26129c + 2 : this.f26129c + 1;
            int i7 = this.f26130d;
            if (i7 != 0) {
                byte[] bArr = this.f26127a;
                z = ((bArr[i6] & 255) >>> (8 - i7)) | ((bArr[this.f26129c] & 255) << i7);
            } else {
                z = this.f26127a[this.f26129c];
            }
            int i8 = z == true ? 1 : 0;
            Object[] objArr = z == true ? 1 : 0;
            int i9 = i2 - 8;
            i4 |= (255 & i8) << i9;
            this.f26129c = i6;
            i3++;
            i5 = i9;
        }
        int i10 = i4;
        if (i2 > 0) {
            int i11 = this.f26130d + i2;
            byte b = (byte) (255 >> (8 - i2));
            int i12 = m13507g(this.f26129c + 1) ? this.f26129c + 2 : this.f26129c + 1;
            if (i11 > 8) {
                byte[] bArr2 = this.f26127a;
                i10 = (b & (((255 & bArr2[i12]) >> (16 - i11)) | ((bArr2[this.f26129c] & 255) << (i11 - 8)))) | i4;
                this.f26129c = i12;
            } else {
                int i13 = (b & ((255 & this.f26127a[this.f26129c]) >> (8 - i11))) | i4;
                i10 = i13;
                if (i11 == 8) {
                    this.f26129c = i12;
                    i10 = i13;
                }
            }
            this.f26130d = i11 % 8;
        }
        m13506h();
        return i10;
    }

    /* renamed from: d */
    public final int m13510d() {
        return m13508f();
    }

    /* renamed from: e */
    public final int m13509e() {
        int m13508f = m13508f();
        return (m13508f % 2 == 0 ? -1 : 1) * ((m13508f + 1) / 2);
    }
}
