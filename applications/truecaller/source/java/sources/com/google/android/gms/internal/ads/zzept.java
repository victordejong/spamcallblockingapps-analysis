package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzept.class */
public final class zzept implements zzery<zzepu> {
    private final zzfsn zza;
    private final zzezy zzb;

    public zzept(zzfsn zzfsnVar, zzezy zzezyVar) {
        this.zza = zzfsnVar;
        this.zzb = zzezyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzepu> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeps
            private final zzept zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzepu zzb() throws Exception {
        return new zzepu(this.zzb);
    }
}
