package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckv.class */
public abstract class zzckv {
    private final Executor executor;
    private final boolean zzdbd;
    public final zzazo zzegt;
    private final zzdsj zzgmc;
    private final String zzdat = zzadf.zzddh.get();
    public final Map<String, String> zzgls = new HashMap();

    public zzckv(Executor executor, zzazo zzazoVar, zzdsj zzdsjVar) {
        this.executor = executor;
        this.zzegt = zzazoVar;
        this.zzdbd = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() ? ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrn)).booleanValue() : ((double) zzwr.zzqu().nextFloat()) <= zzadf.zzddg.get().doubleValue();
        this.zzgmc = zzdsjVar;
    }

    public abstract void zzaqw();

    public final void zzo(Map<String, String> map) {
        String zzp = zzp(map);
        if (this.zzdbd) {
            this.executor.execute(new Runnable(this, zzp) { // from class: com.google.android.gms.internal.ads.zzcky
                private final String zzdjf;
                private final zzckv zzgmf;

                {
                    this.zzgmf = this;
                    this.zzdjf = zzp;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzckv zzckvVar = this.zzgmf;
                    zzckvVar.zzegt.zzel(this.zzdjf);
                }
            });
        }
        zzd.zzeb(zzp);
    }

    public final String zzp(Map<String, String> map) {
        return this.zzgmc.zzr(map);
    }
}
