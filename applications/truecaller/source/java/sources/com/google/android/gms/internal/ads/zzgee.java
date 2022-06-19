package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgee.class */
public final class zzgee {
    private final byte[] zza = new byte[256];
    private int zzb;
    private int zzc;

    public zzgee(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.zza[i] = (byte) i;
        }
        byte b = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            byte[] bArr2 = this.zza;
            byte b2 = bArr2[i2];
            b = (b + b2 + bArr[i2 % bArr.length]) & 255;
            bArr2[i2] = bArr2[b];
            bArr2[b] = b2;
        }
        this.zzb = 0;
        this.zzc = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    public final void zza(byte[] bArr) {
        int i = this.zzb;
        byte b = this.zzc;
        for (int i2 = 0; i2 < 256; i2++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.zza;
            byte b2 = bArr2[i];
            b = (b + b2) & 255;
            bArr2[i] = bArr2[b];
            bArr2[b] = b2;
            bArr[i2] = (byte) (bArr2[(bArr2[i] + b2) & 255] ^ bArr[i2]);
        }
        this.zzb = i;
        this.zzc = b;
    }
}
