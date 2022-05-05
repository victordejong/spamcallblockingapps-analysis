package com.google.android.gms.analytics;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzl.class */
public final class zzl implements Runnable {
    private final /* synthetic */ zzg zzss;
    private final /* synthetic */ zzk zzst;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzk zzkVar, zzg zzgVar) {
        this.zzst = zzkVar;
        this.zzss = zzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<zzn> list;
        this.zzss.zzz().zza(this.zzss);
        list = this.zzst.zzsn;
        for (zzn zznVar : list) {
            zznVar.zza(this.zzss);
        }
        zzk zzkVar = this.zzst;
        zzk.zzb(this.zzss);
    }
}
