package com.google.firebase.perf.internal;

import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.android.gms.internal.firebase-perf.zzca;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzg.class */
public final class zzg implements Runnable {
    private final /* synthetic */ zzf zzcf;
    private final /* synthetic */ zzca zzct;
    private final /* synthetic */ zzbj zzcu;

    public zzg(zzf zzfVar, zzca zzcaVar, zzbj zzbjVar) {
        this.zzcf = zzfVar;
        this.zzct = zzcaVar;
        this.zzcu = zzbjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcf.zzb(this.zzct, this.zzcu);
    }
}
