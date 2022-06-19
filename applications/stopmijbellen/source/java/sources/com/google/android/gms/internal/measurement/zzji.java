package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzji.class */
public final class zzji extends zzjk {
    private final byte[] zzb;
    private final int zzc;
    private int zzd;

    public zzji(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) >= 0) {
            this.zzb = bArr;
            this.zzd = 0;
            this.zzc = i2;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zza(int i, int i2) throws IOException {
        zzl((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzb(int i, int i2) throws IOException {
        zzl(i << 3);
        zzk(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzc(int i, int i2) throws IOException {
        zzl(i << 3);
        zzl(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzd(int i, int i2) throws IOException {
        zzl((i << 3) | 5);
        zzm(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zze(int i, long j) throws IOException {
        zzl(i << 3);
        zzn(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzf(int i, long j) throws IOException {
        zzl((i << 3) | 1);
        zzo(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzg(int i, boolean z) throws IOException {
        zzl(i << 3);
        zzj(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzh(int i, String str) throws IOException {
        zzl((i << 3) | 2);
        zzr(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzi(int i, zzjd zzjdVar) throws IOException {
        zzl((i << 3) | 2);
        zzl(zzjdVar.zzc());
        zzjdVar.zzf(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzj(byte b) throws IOException {
        try {
            byte[] bArr = this.zzb;
            int i = this.zzd;
            this.zzd = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzk(int i) throws IOException {
        if (i >= 0) {
            zzl(i);
        } else {
            zzn(i);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzl(int i) throws IOException {
        boolean z;
        int i2 = i;
        z = zzjk.zzc;
        if (z) {
            int i3 = zziq.zza;
            i2 = i;
        }
        while ((i2 & (-128)) != 0) {
            try {
                byte[] bArr = this.zzb;
                int i4 = this.zzd;
                this.zzd = i4 + 1;
                bArr[i4] = (byte) ((i2 & 127) | 128);
                i2 >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
            }
        }
        byte[] bArr2 = this.zzb;
        int i5 = this.zzd;
        this.zzd = i5 + 1;
        bArr2[i5] = (byte) i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzm(int i) throws IOException {
        try {
            byte[] bArr = this.zzb;
            int i2 = this.zzd;
            int i3 = i2 + 1;
            this.zzd = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.zzd = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.zzd = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.zzd = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzn(long j) throws IOException {
        boolean z;
        char c = j;
        z = zzjk.zzc;
        if (z) {
            c = j;
            char c2 = j;
            if (this.zzc - this.zzd >= 10) {
                while ((c2 & 65408) != 0) {
                    byte[] bArr = this.zzb;
                    int i = this.zzd;
                    this.zzd = i + 1;
                    zzmr.zzp(bArr, i, (byte) ((c2 & 127) | 128));
                    c2 >>>= 7;
                }
                byte[] bArr2 = this.zzb;
                int i2 = this.zzd;
                this.zzd = i2 + 1;
                zzmr.zzp(bArr2, i2, (byte) c2);
                return;
            }
        }
        while ((c & 65408) != 0) {
            try {
                byte[] bArr3 = this.zzb;
                int i3 = this.zzd;
                this.zzd = i3 + 1;
                bArr3[i3] = (byte) ((c & 127) | 128);
                c >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
            }
        }
        byte[] bArr4 = this.zzb;
        int i4 = this.zzd;
        this.zzd = i4 + 1;
        bArr4[i4] = (byte) c;
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzo(long j) throws IOException {
        try {
            byte[] bArr = this.zzb;
            int i = this.zzd;
            int i2 = i + 1;
            this.zzd = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            this.zzd = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i3 + 1;
            this.zzd = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i4 + 1;
            this.zzd = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i5 + 1;
            this.zzd = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.zzd = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.zzd = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.zzd = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    public final void zzp(byte[] bArr, int i, int i2) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.zzb, this.zzd, i2);
            this.zzd += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), Integer.valueOf(i2)), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final void zzq(byte[] bArr, int i, int i2) throws IOException {
        zzp(bArr, 0, i2);
    }

    public final void zzr(String str) throws IOException {
        int i = this.zzd;
        try {
            int zzw = zzjk.zzw(str.length() * 3);
            int zzw2 = zzjk.zzw(str.length());
            if (zzw2 != zzw) {
                zzl(zzmw.zzc(str));
                byte[] bArr = this.zzb;
                int i2 = this.zzd;
                this.zzd = zzmw.zzd(str, bArr, i2, this.zzc - i2);
                return;
            }
            int i3 = i + zzw2;
            this.zzd = i3;
            int zzd = zzmw.zzd(str, this.zzb, i3, this.zzc - i3);
            this.zzd = i;
            zzl((zzd - i) - zzw2);
            this.zzd = zzd;
        } catch (zzmv e) {
            this.zzd = i;
            zzD(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzjj(e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjk
    public final int zzs() {
        return this.zzc - this.zzd;
    }
}
