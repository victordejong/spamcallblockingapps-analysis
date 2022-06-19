package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgm.class */
final class zzgm extends zzgp {
    private final int zzc;

    public zzgm(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgr.zzn(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzgp, com.google.android.gms.internal.measurement.zzgr
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) < 0) {
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
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return ((zzgp) this).zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgp, com.google.android.gms.internal.measurement.zzgr
    public final byte zzb(int i) {
        return ((zzgp) this).zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgp, com.google.android.gms.internal.measurement.zzgr
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzgp
    protected final int zzd() {
        return 0;
    }
}
