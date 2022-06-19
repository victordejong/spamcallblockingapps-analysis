package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfq.class */
public final class zzdfq extends zzdkb<zzdfm> {
    public zzdfq(Set<zzdlw<zzdfm>> set) {
        super(set);
    }

    public final void zza(final Context context) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdfn
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdfm) obj).zzby(context);
            }
        });
    }

    public final void zzb(final Context context) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdfo
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdfm) obj).zzbA(context);
            }
        });
    }

    public final void zzc(final Context context) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdfp
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdfm) obj).zzbB(context);
            }
        });
    }
}
