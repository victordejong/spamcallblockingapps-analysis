package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyq.class */
public final class zzcyq implements zzbtt {
    private final AtomicReference<zzyw> zzgyj = new AtomicReference<>();

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzb(zzvu zzvuVar) {
        zzdkd.zza(this.zzgyj, new zzdkc(zzvuVar) { // from class: com.google.android.gms.internal.ads.zzcyp
            private final zzvu zzgaa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgaa = zzvuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdkc
            public final void zzp(Object obj) {
                ((zzyw) obj).zza(this.zzgaa);
            }
        });
    }

    public final void zzc(zzyw zzywVar) {
        this.zzgyj.set(zzywVar);
    }
}
