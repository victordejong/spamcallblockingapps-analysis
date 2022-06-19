package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoj.class */
public final class zzeoj implements zzery<zzeok> {
    private final zzfsn zza;
    private final zzdtk zzb;
    private final String zzc;
    private final zzfar zzd;

    public zzeoj(zzfsn zzfsnVar, zzdtk zzdtkVar, zzfar zzfarVar, String str) {
        this.zza = zzfsnVar;
        this.zzb = zzdtkVar;
        this.zzd = zzfarVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeok> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeoi
            private final zzeoj zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzeok zzb() throws Exception {
        return new zzeok(this.zzb.zzb(this.zzd.zzf, this.zzc), this.zzb.zzc());
    }
}
