package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfil.class */
public final class zzfil {
    private final Executor zza;
    private final zzcje zzb;

    public zzfil(Executor executor, zzcje zzcjeVar) {
        this.zza = executor;
        this.zzb = zzcjeVar;
    }

    public final /* synthetic */ void zza(String str) {
        this.zzb.zza(str);
    }

    public final void zzb(final String str) {
        this.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfik
            @Override // java.lang.Runnable
            public final void run() {
                zzfil.this.zza(str);
            }
        });
    }
}
