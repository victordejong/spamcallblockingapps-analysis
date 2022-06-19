package com.google.android.gms.internal.mlkit_language_id;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzdq.class */
public final class zzdq extends zzdx {
    private final int zzc;
    private final int zzd;

    public zzdq(byte[] bArr, int i, int i2) {
        super(bArr);
        zzdn.zzb(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdx, com.google.android.gms.internal.mlkit_language_id.zzdn
    public final byte zza(int i) {
        int zza = zza();
        if (((zza - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(C22128a.m8683N1(40, "Index > length: ", i, ", ", zza));
            }
            throw new ArrayIndexOutOfBoundsException(C22128a.m8690L1(22, "Index < 0: ", i));
        }
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdx, com.google.android.gms.internal.mlkit_language_id.zzdn
    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdx, com.google.android.gms.internal.mlkit_language_id.zzdn
    public final byte zzb(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdx
    public final int zze() {
        return this.zzc;
    }
}
