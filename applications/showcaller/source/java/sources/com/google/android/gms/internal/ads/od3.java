package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/od3.class */
public final class od3 extends qd3 {

    /* renamed from: d */
    private final byte[] f27506d;

    /* renamed from: e */
    private final int f27507e;

    /* renamed from: f */
    private int f27508f;

    public od3(byte[] bArr, int i, int i2) {
        super(null);
        Objects.requireNonNull(bArr, "buffer");
        int length = bArr.length;
        if (((length - i2) | i2) >= 0) {
            this.f27506d = bArr;
            this.f27508f = 0;
            this.f27507e = i2;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
    }

    /* renamed from: E */
    public final void m12693E(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.f27506d, this.f27508f, i2);
            this.f27508f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgfg(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f27508f), Integer.valueOf(this.f27507e), Integer.valueOf(i2)), e);
        }
    }

    /* renamed from: F */
    public final void m12692F(String str) {
        int i = this.f27508f;
        try {
            int m11946B = qd3.m11946B(str.length() * 3);
            int m11946B2 = qd3.m11946B(str.length());
            if (m11946B2 != m11946B) {
                mo11926r(fh3.m15192g(str));
                byte[] bArr = this.f27506d;
                int i2 = this.f27508f;
                this.f27508f = fh3.m15191h(str, bArr, i2, this.f27507e - i2);
                return;
            }
            int i3 = i + m11946B2;
            this.f27508f = i3;
            int m15191h = fh3.m15191h(str, this.f27506d, i3, this.f27507e - i3);
            this.f27508f = i;
            mo11926r((m15191h - i) - m11946B2);
            this.f27508f = m15191h;
        } catch (zzgjc e) {
            this.f27508f = i;
            m11939e(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgfg(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: g */
    public final void mo11937g(int i, int i2) {
        mo11926r((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: h */
    public final void mo11936h(int i, int i2) {
        mo11926r(i << 3);
        mo11927q(i2);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: i */
    public final void mo11935i(int i, int i2) {
        mo11926r(i << 3);
        mo11926r(i2);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: j */
    public final void mo11934j(int i, int i2) {
        mo11926r((i << 3) | 5);
        mo11925s(i2);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: k */
    public final void mo11933k(int i, long j) {
        mo11926r(i << 3);
        mo11924t(j);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: l */
    public final void mo11932l(int i, long j) {
        mo11926r((i << 3) | 1);
        mo11923u(j);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: m */
    public final void mo11931m(int i, boolean z) {
        mo11926r(i << 3);
        mo11928p(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: n */
    public final void mo11930n(int i, String str) {
        mo11926r((i << 3) | 2);
        m12692F(str);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: o */
    public final void mo11929o(int i, zzgex zzgexVar) {
        mo11926r((i << 3) | 2);
        mo11926r(zzgexVar.zzc());
        zzgexVar.zzk(this);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: p */
    public final void mo11928p(byte b) {
        try {
            byte[] bArr = this.f27506d;
            int i = this.f27508f;
            this.f27508f = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgfg(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f27508f), Integer.valueOf(this.f27507e), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: q */
    public final void mo11927q(int i) {
        if (i >= 0) {
            mo11926r(i);
        } else {
            mo11924t(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: r */
    public final void mo11926r(int i) {
        boolean z;
        int i2 = i;
        z = qd3.f28438b;
        if (z) {
            int i3 = vc3.f31136a;
            i2 = i;
        }
        while ((i2 & (-128)) != 0) {
            try {
                byte[] bArr = this.f27506d;
                int i4 = this.f27508f;
                this.f27508f = i4 + 1;
                bArr[i4] = (byte) ((i2 & 127) | 128);
                i2 >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgfg(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f27508f), Integer.valueOf(this.f27507e), 1), e);
            }
        }
        byte[] bArr2 = this.f27506d;
        int i5 = this.f27508f;
        this.f27508f = i5 + 1;
        bArr2[i5] = (byte) i2;
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: s */
    public final void mo11925s(int i) {
        try {
            byte[] bArr = this.f27506d;
            int i2 = this.f27508f;
            int i3 = i2 + 1;
            this.f27508f = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.f27508f = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.f27508f = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f27508f = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgfg(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f27508f), Integer.valueOf(this.f27507e), 1), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: t */
    public final void mo11924t(long j) {
        boolean z;
        char c = j;
        z = qd3.f28438b;
        if (z) {
            c = j;
            char c2 = j;
            if (this.f27507e - this.f27508f >= 10) {
                while ((c2 & 65408) != 0) {
                    byte[] bArr = this.f27506d;
                    int i = this.f27508f;
                    this.f27508f = i + 1;
                    bh3.m16339x(bArr, i, (byte) ((c2 & 127) | 128));
                    c2 >>>= 7;
                }
                byte[] bArr2 = this.f27506d;
                int i2 = this.f27508f;
                this.f27508f = i2 + 1;
                bh3.m16339x(bArr2, i2, (byte) c2);
                return;
            }
        }
        while ((c & 65408) != 0) {
            try {
                byte[] bArr3 = this.f27506d;
                int i3 = this.f27508f;
                this.f27508f = i3 + 1;
                bArr3[i3] = (byte) ((c & 127) | 128);
                c >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgfg(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f27508f), Integer.valueOf(this.f27507e), 1), e);
            }
        }
        byte[] bArr4 = this.f27506d;
        int i4 = this.f27508f;
        this.f27508f = i4 + 1;
        bArr4[i4] = (byte) c;
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: u */
    public final void mo11923u(long j) {
        try {
            byte[] bArr = this.f27506d;
            int i = this.f27508f;
            int i2 = i + 1;
            this.f27508f = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            this.f27508f = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i3 + 1;
            this.f27508f = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i4 + 1;
            this.f27508f = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i5 + 1;
            this.f27508f = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.f27508f = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.f27508f = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f27508f = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgfg(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f27508f), Integer.valueOf(this.f27507e), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: v */
    public final void mo11922v(byte[] bArr, int i, int i2) {
        m12693E(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.ads.qd3
    /* renamed from: w */
    public final int mo11921w() {
        return this.f27507e - this.f27508f;
    }
}
