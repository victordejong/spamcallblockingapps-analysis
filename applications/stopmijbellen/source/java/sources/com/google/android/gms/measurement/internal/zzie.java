package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzie.class */
public final class zzie implements Runnable {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzid zzb;
    public final /* synthetic */ zzid zzc;
    public final /* synthetic */ long zzd;
    public final /* synthetic */ zzik zze;

    public zzie(zzik zzikVar, Bundle bundle, zzid zzidVar, zzid zzidVar2, long j) {
        this.zze = zzikVar;
        this.zza = bundle;
        this.zzb = zzidVar;
        this.zzc = zzidVar2;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzik.zzu(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
