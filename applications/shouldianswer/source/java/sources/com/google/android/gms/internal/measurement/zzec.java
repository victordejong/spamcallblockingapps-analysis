package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzec.class */
public final class zzec {
    private final zzen zza;
    private final byte[] zzb;

    private zzec(int i) {
        this.zzb = new byte[i];
        this.zza = zzen.zza(this.zzb);
    }

    public /* synthetic */ zzec(int i, zzdx zzdxVar) {
        this(i);
    }

    public final zzdu zza() {
        this.zza.zzb();
        return new zzee(this.zzb);
    }

    public final zzen zzb() {
        return this.zza;
    }
}
