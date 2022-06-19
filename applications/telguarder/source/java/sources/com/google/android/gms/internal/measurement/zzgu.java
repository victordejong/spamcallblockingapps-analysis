package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgu.class */
final class zzgu extends zzgv {
    private final byte[] zza;
    private int zzc;
    private int zzd = Integer.MAX_VALUE;
    private int zzb = 0;

    public /* synthetic */ zzgu(byte[] bArr, int i, int i2, boolean z, zzgt zzgtVar) {
        super(null);
        this.zza = bArr;
    }

    public final int zza(int i) throws zzic {
        int i2 = this.zzd;
        this.zzd = 0;
        int i3 = this.zzb + this.zzc;
        this.zzb = i3;
        if (i3 > 0) {
            this.zzc = i3;
            this.zzb = 0;
        } else {
            this.zzc = 0;
        }
        return i2;
    }
}
