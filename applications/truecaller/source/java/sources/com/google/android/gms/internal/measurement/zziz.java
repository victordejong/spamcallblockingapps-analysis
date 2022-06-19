package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zziz.class */
public final class zziz extends zzja {
    private final byte[] zzb;
    private int zzd;
    private int zze = Integer.MAX_VALUE;
    private int zzc = 0;

    public /* synthetic */ zziz(byte[] bArr, int i, int i2, boolean z, zziy zziyVar) {
        super(null);
        this.zzb = bArr;
    }

    public final int zza(int i) throws zzkh {
        int i2 = this.zze;
        this.zze = 0;
        int i3 = this.zzc + this.zzd;
        this.zzc = i3;
        if (i3 > 0) {
            this.zzd = i3;
            this.zzc = 0;
        } else {
            this.zzd = 0;
        }
        return i2;
    }
}
