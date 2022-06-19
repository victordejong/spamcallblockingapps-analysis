package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.e5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/e5.class */
public final class C7350e5 extends AbstractC7364f5 {

    /* renamed from: d */
    private final byte[] f34414d;

    /* renamed from: e */
    private final int f34415e;

    /* renamed from: f */
    private int f34416f;

    public C7350e5(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) >= 0) {
            this.f34414d = bArr;
            this.f34416f = 0;
            this.f34415e = i2;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
    }

    /* renamed from: E */
    public final void m7556E(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, 0, this.f34414d, this.f34416f, i2);
            this.f34416f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34416f), Integer.valueOf(this.f34415e), Integer.valueOf(i2)), e);
        }
    }

    /* renamed from: F */
    public final void m7555F(String str) {
        int i = this.f34416f;
        try {
            int m7533A = AbstractC7364f5.m7533A(str.length() * 3);
            int m7533A2 = AbstractC7364f5.m7533A(str.length());
            if (m7533A2 != m7533A) {
                mo7512r(C7465m8.m7106c(str));
                byte[] bArr = this.f34414d;
                int i2 = this.f34416f;
                this.f34416f = C7465m8.m7105d(str, bArr, i2, this.f34415e - i2);
                return;
            }
            int i3 = i + m7533A2;
            this.f34416f = i3;
            int m7105d = C7465m8.m7105d(str, this.f34414d, i3, this.f34415e - i3);
            this.f34416f = i;
            mo7512r((m7105d - i) - m7533A2);
            this.f34416f = m7105d;
        } catch (zzkj e) {
            this.f34416f = i;
            m7526d(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgx(e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: g */
    public final void mo7523g(int i, int i2) {
        mo7512r((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: h */
    public final void mo7522h(int i, int i2) {
        mo7512r(i << 3);
        mo7513q(i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: i */
    public final void mo7521i(int i, int i2) {
        mo7512r(i << 3);
        mo7512r(i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: j */
    public final void mo7520j(int i, int i2) {
        mo7512r((i << 3) | 5);
        mo7511s(i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: k */
    public final void mo7519k(int i, long j) {
        mo7512r(i << 3);
        mo7510t(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: l */
    public final void mo7518l(int i, long j) {
        mo7512r((i << 3) | 1);
        mo7509u(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: m */
    public final void mo7517m(int i, boolean z) {
        mo7512r(i << 3);
        mo7514p(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: n */
    public final void mo7516n(int i, String str) {
        mo7512r((i << 3) | 2);
        m7555F(str);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: o */
    public final void mo7515o(int i, zzgr zzgrVar) {
        mo7512r((i << 3) | 2);
        mo7512r(zzgrVar.zzc());
        zzgrVar.zzf(this);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: p */
    public final void mo7514p(byte b) {
        try {
            byte[] bArr = this.f34414d;
            int i = this.f34416f;
            this.f34416f = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34416f), Integer.valueOf(this.f34415e), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: q */
    public final void mo7513q(int i) {
        if (i >= 0) {
            mo7512r(i);
        } else {
            mo7510t(i);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: r */
    public final void mo7512r(int i) {
        boolean z;
        int i2 = i;
        z = AbstractC7364f5.f34429b;
        if (z) {
            int i3 = C7517q4.f34639a;
            i2 = i;
        }
        while ((i2 & (-128)) != 0) {
            try {
                byte[] bArr = this.f34414d;
                int i4 = this.f34416f;
                this.f34416f = i4 + 1;
                bArr[i4] = (byte) ((i2 & 127) | 128);
                i2 >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34416f), Integer.valueOf(this.f34415e), 1), e);
            }
        }
        byte[] bArr2 = this.f34414d;
        int i5 = this.f34416f;
        this.f34416f = i5 + 1;
        bArr2[i5] = (byte) i2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: s */
    public final void mo7511s(int i) {
        try {
            byte[] bArr = this.f34414d;
            int i2 = this.f34416f;
            int i3 = i2 + 1;
            this.f34416f = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.f34416f = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.f34416f = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f34416f = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34416f), Integer.valueOf(this.f34415e), 1), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: t */
    public final void mo7510t(long j) {
        boolean z;
        char c = j;
        z = AbstractC7364f5.f34429b;
        if (z) {
            c = j;
            char c2 = j;
            if (this.f34415e - this.f34416f >= 10) {
                while ((c2 & 65408) != 0) {
                    byte[] bArr = this.f34414d;
                    int i = this.f34416f;
                    this.f34416f = i + 1;
                    C7409i8.m7303u(bArr, i, (byte) ((c2 & 127) | 128));
                    c2 >>>= 7;
                }
                byte[] bArr2 = this.f34414d;
                int i2 = this.f34416f;
                this.f34416f = i2 + 1;
                C7409i8.m7303u(bArr2, i2, (byte) c2);
                return;
            }
        }
        while ((c & 65408) != 0) {
            try {
                byte[] bArr3 = this.f34414d;
                int i3 = this.f34416f;
                this.f34416f = i3 + 1;
                bArr3[i3] = (byte) ((c & 127) | 128);
                c >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34416f), Integer.valueOf(this.f34415e), 1), e);
            }
        }
        byte[] bArr4 = this.f34414d;
        int i4 = this.f34416f;
        this.f34416f = i4 + 1;
        bArr4[i4] = (byte) c;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: u */
    public final void mo7509u(long j) {
        try {
            byte[] bArr = this.f34414d;
            int i = this.f34416f;
            int i2 = i + 1;
            this.f34416f = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            this.f34416f = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i3 + 1;
            this.f34416f = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i4 + 1;
            this.f34416f = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i5 + 1;
            this.f34416f = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.f34416f = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.f34416f = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f34416f = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34416f), Integer.valueOf(this.f34415e), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: v */
    public final void mo7508v(byte[] bArr, int i, int i2) {
        m7556E(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7364f5
    /* renamed from: w */
    public final int mo7507w() {
        return this.f34415e - this.f34416f;
    }
}
