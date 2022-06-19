package com.google.android.gms.internal.measurement;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzis.class */
public final class zzis extends zziv {
    private final int zzc;

    public zzis(byte[] bArr, int i, int i2) {
        super(bArr);
        zzix.zzj(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zzix
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(C22128a.m8683N1(40, "Index > length: ", i, ", ", i2));
            }
            throw new ArrayIndexOutOfBoundsException(C22128a.m8690L1(22, "Index < 0: ", i));
        }
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zzix
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zziv, com.google.android.gms.internal.measurement.zzix
    public final int zzd() {
        return this.zzc;
    }
}
