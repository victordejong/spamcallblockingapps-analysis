package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgic.class */
public final class zzgic extends zzgik {
    public zzgic(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgik
    public final void zza() {
        if (!zzd()) {
            for (int i = 0; i < zze(); i++) {
                Map.Entry zzf = zzf(i);
                if (((zzgfq) zzf.getKey()).zzc()) {
                    zzf.setValue(Collections.unmodifiableList((List) zzf.getValue()));
                }
            }
            for (Map.Entry entry : zzg()) {
                if (((zzgfq) entry.getKey()).zzc()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
