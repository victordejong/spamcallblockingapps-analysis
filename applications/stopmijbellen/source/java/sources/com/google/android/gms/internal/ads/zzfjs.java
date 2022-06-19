package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjs.class */
public final class zzfjs {
    private final Executor zza;
    private final zzcje zzb;

    public zzfjs(Executor executor, zzcje zzcjeVar) {
        this.zza = executor;
        this.zzb = zzcjeVar;
    }

    public final /* synthetic */ void zza(String str) {
        this.zzb.zza(str);
    }

    public final void zzb(final String str) {
        this.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfjr
            @Override // java.lang.Runnable
            public final void run() {
                zzfjs.this.zza(str);
            }
        });
    }

    public final void zzc(List<String> list) {
        for (String str : list) {
            zzb(str);
        }
    }
}
