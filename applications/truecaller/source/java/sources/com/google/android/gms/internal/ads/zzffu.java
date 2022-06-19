package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffu.class */
public final class zzffu {
    private final Executor zza;
    private final zzcgy zzb;

    public zzffu(Executor executor, zzcgy zzcgyVar) {
        this.zza = executor;
        this.zzb = zzcgyVar;
    }

    public final void zza(List<String> list) {
        for (String str : list) {
            zzb(str);
        }
    }

    public final void zzb(String str) {
        this.zza.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzfft
            private final zzffu zza;
            private final String zzb;

            {
                this.zza = this;
                this.zzb = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzc(this.zzb);
            }
        });
    }

    public final /* synthetic */ void zzc(String str) {
        this.zzb.zza(str);
    }
}
