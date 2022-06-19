package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzell.class */
public final class zzell implements zzddn {
    private final AtomicReference<zzbgw> zza = new AtomicReference<>();

    public final void zza(zzbgw zzbgwVar) {
        this.zza.set(zzbgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzddn
    public final void zzo(zzbdn zzbdnVar) {
        zzexc.zza(this.zza, new zzexb(zzbdnVar) { // from class: com.google.android.gms.internal.ads.zzelk
            private final zzbdn zza;

            {
                this.zza = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzbgw) obj).zze(this.zza);
            }
        });
    }
}
