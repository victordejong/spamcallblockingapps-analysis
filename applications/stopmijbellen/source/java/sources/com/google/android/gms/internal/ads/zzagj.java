package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagj.class */
public final class zzagj {
    private final Executor zza;

    public zzagj(Handler handler) {
        this.zza = new zzagh(this, handler);
    }

    public final void zza(zzags<?> zzagsVar, zzahb zzahbVar) {
        zzagsVar.zzm("post-error");
        zzagy zza = zzagy.zza(zzahbVar);
        Executor executor = this.zza;
        ((zzagh) executor).zza.post(new zzagi(zzagsVar, zza, null));
    }

    public final void zzb(zzags<?> zzagsVar, zzagy<?> zzagyVar, Runnable runnable) {
        zzagsVar.zzq();
        zzagsVar.zzm("post-response");
        Executor executor = this.zza;
        ((zzagh) executor).zza.post(new zzagi(zzagsVar, zzagyVar, runnable));
    }
}
