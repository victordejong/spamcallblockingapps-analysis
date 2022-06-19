package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctk.class */
public final class zzctk implements zzbpr<Object> {
    public final /* synthetic */ zzctl zza;

    public zzctk(zzctl zzctlVar) {
        this.zza = zzctlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map<String, String> map) {
        Executor executor;
        if (!zzctl.zzg(this.zza, map)) {
            return;
        }
        executor = this.zza.zzc;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzctj
            private final zzctk zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzctq zzctqVar;
                zzctqVar = this.zza.zza.zzd;
                zzctqVar.zzi();
            }
        });
    }
}
