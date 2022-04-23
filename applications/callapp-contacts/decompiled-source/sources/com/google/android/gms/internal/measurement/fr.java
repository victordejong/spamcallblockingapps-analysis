package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fr.class */
public final class fr extends fs {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f29025b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29026c;

    /* renamed from: d  reason: collision with root package name */
    private int f29027d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fr(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) >= 0) {
            this.f29025b = bArr;
            this.f29027d = 0;
            this.f29026c = i2;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final int a() {
        return this.f29026c - this.f29027d;
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void a(byte b2) throws IOException {
        try {
            byte[] bArr = this.f29025b;
            int i = this.f29027d;
            this.f29027d = i + 1;
            bArr[i] = b2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29027d), Integer.valueOf(this.f29026c), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void a(int i) throws IOException {
        if (i >= 0) {
            b(i);
        } else {
            a(i);
        }
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void a(int i, int i2) throws IOException {
        b((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void a(int i, long j) throws IOException {
        b(i << 3);
        a(j);
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void a(int i, fm fmVar) throws IOException {
        b((i << 3) | 2);
        b(fmVar.a());
        fmVar.a(this);
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void a(int i, String str) throws IOException {
        b((i << 3) | 2);
        int i2 = this.f29027d;
        try {
            int f = f(str.length() * 3);
            int f2 = f(str.length());
            if (f2 == f) {
                int i3 = i2 + f2;
                this.f29027d = i3;
                int a2 = jc.a(str, this.f29025b, i3, this.f29026c - i3);
                this.f29027d = i2;
                b((a2 - i2) - f2);
                this.f29027d = a2;
                return;
            }
            b(jc.a(str));
            byte[] bArr = this.f29025b;
            int i4 = this.f29027d;
            this.f29027d = jc.a(str, bArr, i4, this.f29026c - i4);
        } catch (jb e) {
            this.f29027d = i2;
            a(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgx(e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void a(int i, boolean z) throws IOException {
        b(i << 3);
        a(z ? (byte) 1 : (byte) 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.measurement.fs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.fr.a(long):void");
    }

    public final void a(byte[] bArr, int i) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.f29025b, this.f29027d, i);
            this.f29027d += i;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29027d), Integer.valueOf(this.f29026c), Integer.valueOf(i)), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            try {
                byte[] bArr = this.f29025b;
                int i2 = this.f29027d;
                this.f29027d = i2 + 1;
                bArr[i2] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29027d), Integer.valueOf(this.f29026c), 1), e);
            }
        }
        byte[] bArr2 = this.f29025b;
        int i3 = this.f29027d;
        this.f29027d = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void b(int i, int i2) throws IOException {
        b(i << 3);
        a(i2);
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void b(int i, long j) throws IOException {
        b((i << 3) | 1);
        b(j);
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void b(long j) throws IOException {
        try {
            byte[] bArr = this.f29025b;
            int i = this.f29027d;
            int i2 = i + 1;
            this.f29027d = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            this.f29027d = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i3 + 1;
            this.f29027d = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i4 + 1;
            this.f29027d = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i5 + 1;
            this.f29027d = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.f29027d = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.f29027d = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f29027d = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29027d), Integer.valueOf(this.f29026c), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void b(byte[] bArr, int i) throws IOException {
        a(bArr, i);
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void c(int i) throws IOException {
        try {
            byte[] bArr = this.f29025b;
            int i2 = this.f29027d;
            int i3 = i2 + 1;
            this.f29027d = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.f29027d = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.f29027d = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f29027d = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgx(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29027d), Integer.valueOf(this.f29026c), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void c(int i, int i2) throws IOException {
        b(i << 3);
        b(i2);
    }

    @Override // com.google.android.gms.internal.measurement.fs
    public final void d(int i, int i2) throws IOException {
        b((i << 3) | 5);
        c(i2);
    }
}
