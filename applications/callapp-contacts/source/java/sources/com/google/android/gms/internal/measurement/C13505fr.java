package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.fr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fr.class */
public final class C13505fr extends AbstractC13506fs {

    /* renamed from: b */
    private final byte[] f50724b;

    /* renamed from: c */
    private final int f50725c;

    /* renamed from: d */
    private int f50726d;

    public C13505fr(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) >= 0) {
            this.f50724b = bArr;
            this.f50726d = 0;
            this.f50725c = i2;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final int mo12850a() {
        return this.f50725c - this.f50726d;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12849a(byte b) throws IOException {
        try {
            byte[] bArr = this.f50724b;
            int i = this.f50726d;
            this.f50726d = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50726d), Integer.valueOf(this.f50725c), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12848a(int i) throws IOException {
        if (i >= 0) {
            mo12833b(i);
        } else {
            mo12841a(i);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12847a(int i, int i2) throws IOException {
        mo12833b((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12846a(int i, long j) throws IOException {
        mo12833b(i << 3);
        mo12841a(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12845a(int i, AbstractC13500fm abstractC13500fm) throws IOException {
        mo12833b((i << 3) | 2);
        mo12833b(abstractC13500fm.mo12866a());
        abstractC13500fm.mo12862a(this);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12843a(int i, String str) throws IOException {
        mo12833b((i << 3) | 2);
        int i2 = this.f50726d;
        try {
            int f = m12821f(str.length() * 3);
            int f2 = m12821f(str.length());
            if (f2 != f) {
                mo12833b(C13598jc.m12506a(str));
                byte[] bArr = this.f50724b;
                int i3 = this.f50726d;
                this.f50726d = C13598jc.m12505a(str, bArr, i3, this.f50725c - i3);
                return;
            }
            int i4 = i2 + f2;
            this.f50726d = i4;
            int m12505a = C13598jc.m12505a(str, this.f50724b, i4, this.f50725c - i4);
            this.f50726d = i2;
            mo12833b((m12505a - i2) - f2);
            this.f50726d = m12505a;
        } catch (C13597jb e) {
            this.f50726d = i2;
            m12836a(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgx(e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12842a(int i, boolean z) throws IOException {
        mo12833b(i << 3);
        mo12849a(z ? (byte) 1 : (byte) 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: a */
    public final void mo12841a(long j) throws IOException {
        boolean z;
        char c = j;
        z = AbstractC13506fs.f50728c;
        if (z) {
            c = j;
            char c2 = j;
            if (this.f50725c - this.f50726d >= 10) {
                while ((c2 & 65408) != 0) {
                    byte[] bArr = this.f50724b;
                    int i = this.f50726d;
                    this.f50726d = i + 1;
                    C13592ix.m12528a(bArr, i, (byte) ((c2 & 127) | 128));
                    c2 >>>= 7;
                }
                byte[] bArr2 = this.f50724b;
                int i2 = this.f50726d;
                this.f50726d = i2 + 1;
                C13592ix.m12528a(bArr2, i2, (byte) c2);
                return;
            }
        }
        while ((c & 65408) != 0) {
            try {
                byte[] bArr3 = this.f50724b;
                int i3 = this.f50726d;
                this.f50726d = i3 + 1;
                bArr3[i3] = (byte) ((c & 127) | 128);
                c >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50726d), Integer.valueOf(this.f50725c), 1), e);
            }
        }
        byte[] bArr4 = this.f50724b;
        int i4 = this.f50726d;
        this.f50726d = i4 + 1;
        bArr4[i4] = (byte) c;
    }

    /* renamed from: a */
    public final void m12851a(byte[] bArr, int i) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.f50724b, this.f50726d, i);
            this.f50726d += i;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50726d), Integer.valueOf(this.f50725c), Integer.valueOf(i)), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: b */
    public final void mo12833b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            try {
                byte[] bArr = this.f50724b;
                int i2 = this.f50726d;
                this.f50726d = i2 + 1;
                bArr[i2] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50726d), Integer.valueOf(this.f50725c), 1), e);
            }
        }
        byte[] bArr2 = this.f50724b;
        int i3 = this.f50726d;
        this.f50726d = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: b */
    public final void mo12832b(int i, int i2) throws IOException {
        mo12833b(i << 3);
        mo12848a(i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: b */
    public final void mo12831b(int i, long j) throws IOException {
        mo12833b((i << 3) | 1);
        mo12830b(j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: b */
    public final void mo12830b(long j) throws IOException {
        try {
            byte[] bArr = this.f50724b;
            int i = this.f50726d;
            int i2 = i + 1;
            this.f50726d = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            this.f50726d = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i3 + 1;
            this.f50726d = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i4 + 1;
            this.f50726d = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i5 + 1;
            this.f50726d = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.f50726d = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.f50726d = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f50726d = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50726d), Integer.valueOf(this.f50725c), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: b */
    public final void mo12829b(byte[] bArr, int i) throws IOException {
        m12851a(bArr, i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: c */
    public final void mo12827c(int i) throws IOException {
        try {
            byte[] bArr = this.f50724b;
            int i2 = this.f50726d;
            int i3 = i2 + 1;
            this.f50726d = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.f50726d = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.f50726d = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f50726d = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50726d), Integer.valueOf(this.f50725c), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: c */
    public final void mo12826c(int i, int i2) throws IOException {
        mo12833b(i << 3);
        mo12833b(i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13506fs
    /* renamed from: d */
    public final void mo12823d(int i, int i2) throws IOException {
        mo12833b((i << 3) | 5);
        mo12827c(i2);
    }
}
