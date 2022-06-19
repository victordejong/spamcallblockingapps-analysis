package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwz.class */
public final class zzcwz implements zzbrt<Object> {
    public final /* synthetic */ zzcxa zza;

    public zzcwz(zzcxa zzcxaVar) {
        this.zza = zzcxaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        Executor executor;
        if (!zzcxa.zzg(this.zza, map)) {
            return;
        }
        executor = this.zza.zzc;
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwy
            @Override // java.lang.Runnable
            public final void run() {
                zzcxf zzcxfVar;
                zzcxfVar = zzcwz.this.zza.zzd;
                zzcxfVar.zzj();
            }
        });
    }
}
