package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgx.class */
public final class zzdgx extends zzdkb<zzo> implements zzo {
    public zzdgx(Set<zzdlw<zzo>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        synchronized (this) {
            zzo(zzdgt.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
        synchronized (this) {
            zzo(zzdgs.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
        synchronized (this) {
            zzo(zzdgv.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
        synchronized (this) {
            zzo(zzdgu.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        synchronized (this) {
            zzo(zzdgw.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(final int i) {
        synchronized (this) {
            zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdgr
                @Override // com.google.android.gms.internal.ads.zzdka
                public final void zza(Object obj) {
                    ((zzo) obj).zzf(i);
                }
            });
        }
    }
}
