package com.google.firebase.perf.internal;

import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.android.gms.internal.firebase-perf.zzcp;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzh.class */
public final class zzh implements Runnable {
    private final /* synthetic */ zzf zzcf;
    private final /* synthetic */ zzbj zzcu;
    private final /* synthetic */ zzcp zzcv;

    public zzh(zzf zzfVar, zzcp zzcpVar, zzbj zzbjVar) {
        this.zzcf = zzfVar;
        this.zzcv = zzcpVar;
        this.zzcu = zzbjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcf.zzb(this.zzcv, this.zzcu);
    }
}
