package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcj.class */
public final class zzdcj extends zzdgm<zzdbc> {
    public zzdcj(Set<zzdih<zzdbc>> set) {
        super(set);
    }

    public final void zza() {
        zzk(zzdcd.zza);
    }

    public final void zzb() {
        zzk(zzdce.zza);
    }

    public final void zzc() {
        zzk(zzdcf.zza);
    }

    public final void zzd() {
        zzk(zzdcg.zza);
    }

    public final void zze(zzcbz zzcbzVar, String str, String str2) {
        zzk(new zzdgl(zzcbzVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzdch
            private final zzcbz zza;
            private final String zzb;
            private final String zzc;

            {
                this.zza = zzcbzVar;
                this.zzb = str;
                this.zzc = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdbc) obj).zzk(this.zza, this.zzb, this.zzc);
            }
        });
    }

    public final void zzf() {
        zzk(zzdci.zza);
    }
}
