package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeb.class */
final class zzeb extends zzee {
    private final int zzc;
    private final int zzd;

    public zzeb(byte[] bArr, int i, int i2) {
        super(bArr);
        zzb(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzee, com.google.android.gms.internal.measurement.zzdu
    public final byte zza(int i) {
        int zza = zza();
        if (((zza - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(zza);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.measurement.zzee, com.google.android.gms.internal.measurement.zzdu
    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzee, com.google.android.gms.internal.measurement.zzdu
    public final byte zzb(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.measurement.zzee
    protected final int zze() {
        return this.zzc;
    }
}
