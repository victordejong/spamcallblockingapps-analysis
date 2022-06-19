package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziy.class */
final class zziy extends zzjb {
    private final int zzc;

    public zziy(byte[] bArr, int i, int i2) {
        super(bArr);
        zzjd.zzn(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb, com.google.android.gms.internal.measurement.zzjd
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(C0082b.m8757e(40, "Index > length: ", i, ", ", i2));
            }
            throw new ArrayIndexOutOfBoundsException(C0082b.m8758d(22, "Index < 0: ", i));
        }
        return ((zzjb) this).zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjb, com.google.android.gms.internal.measurement.zzjd
    public final byte zzb(int i) {
        return ((zzjb) this).zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjb, com.google.android.gms.internal.measurement.zzjd
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzjb
    public final int zzd() {
        return 0;
    }
}
