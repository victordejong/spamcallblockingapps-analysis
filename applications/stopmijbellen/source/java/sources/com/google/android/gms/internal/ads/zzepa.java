package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepa.class */
public final class zzepa implements zzdhc {
    private final AtomicReference<zzbit> zza = new AtomicReference<>();

    public final void zza(zzbit zzbitVar) {
        this.zza.set(zzbitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdhc
    public final void zzg(final zzbfk zzbfkVar) {
        zzfaq.zza(this.zza, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeoz
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzbit) obj).zze(zzbfk.this);
            }
        });
    }
}
