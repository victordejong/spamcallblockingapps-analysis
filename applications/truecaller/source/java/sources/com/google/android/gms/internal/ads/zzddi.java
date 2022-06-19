package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddi.class */
public final class zzddi extends zzdgm<zzo> implements zzo {
    public zzddi(Set<zzdih<zzo>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        synchronized (this) {
            zzk(zzddh.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
        synchronized (this) {
            zzk(zzddf.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
        synchronized (this) {
            zzk(zzddg.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        synchronized (this) {
            zzk(new zzdgl(i) { // from class: com.google.android.gms.internal.ads.zzddc
                private final int zza;

                {
                    this.zza = i;
                }

                @Override // com.google.android.gms.internal.ads.zzdgl
                public final void zza(Object obj) {
                    ((zzo) obj).zzbs(this.zza);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
        synchronized (this) {
            zzk(zzddd.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        synchronized (this) {
            zzk(zzdde.zza);
        }
    }
}
