package com.google.firebase.perf.internal;

import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.android.gms.internal.firebase-perf.zzbt;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzj.class */
public final class zzj implements Runnable {
    private final /* synthetic */ zzf zzcf;
    private final /* synthetic */ zzbj zzcu;
    private final /* synthetic */ zzbt zzcx;

    public zzj(zzf zzfVar, zzbt zzbtVar, zzbj zzbjVar) {
        this.zzcf = zzfVar;
        this.zzcx = zzbtVar;
        this.zzcu = zzbjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcf.zzb(this.zzcx, this.zzcu);
    }
}
