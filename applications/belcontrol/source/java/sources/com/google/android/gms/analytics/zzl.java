package com.google.android.gms.analytics;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzl.class */
public final class zzl implements Runnable {
    private final /* synthetic */ zzg zzsw;
    private final /* synthetic */ zzk zzsx;

    public zzl(zzk zzkVar, zzg zzgVar) {
        this.zzsx = zzkVar;
        this.zzsw = zzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<zzn> list;
        this.zzsw.zzap().zza(this.zzsw);
        list = this.zzsx.zzsr;
        for (zzn zznVar : list) {
            zznVar.zza(this.zzsw);
        }
        zzk zzkVar = this.zzsx;
        zzk.zzb(this.zzsw);
    }
}
