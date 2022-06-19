package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnw.class */
public final class zzdnw {
    public static <T extends zzbdu & zzaki & zzbfa & zzbfd & zzbfm & zzbfl & zzbfo> zzaif<T> zza(zzcqr zzcqrVar, zzdss zzdssVar) {
        return new zzaif(zzdssVar, zzcqrVar) { // from class: com.google.android.gms.internal.ads.zzdnv
            private final zzdss zzhlk;
            private final zzcqr zzhll;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhlk = zzdssVar;
                this.zzhll = zzcqrVar;
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzbfd, com.google.android.gms.internal.ads.zzbdu] */
            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, Map map) {
                zzdss zzdssVar2 = this.zzhlk;
                zzcqr zzcqrVar2 = this.zzhll;
                ?? r0 = (zzbdu) obj;
                String str = (String) map.get("u");
                if (str == null) {
                    zzd.zzex("URL missing from click GMSG.");
                    return;
                }
                String zza = zzahm.zza(r0, str);
                if (!r0.zzacp().zzhjz) {
                    zzdssVar2.zzel(zza);
                    return;
                }
                long currentTimeMillis = zzr.zzky().currentTimeMillis();
                String str2 = ((zzbfa) r0).zzadn().zzbvs;
                zzr.zzkr();
                zzcqrVar2.zza(new zzcrc(currentTimeMillis, str2, zza, zzj.zzba(((zzbfd) r0).getContext()) ? zzcqs.zzgru : zzcqs.zzgrt));
            }
        };
    }

    public static <T extends zzbdu & zzbfa & zzbfd & zzbfl> zzaif<T> zzb(zzcqr zzcqrVar, zzdss zzdssVar) {
        return new zzaif(zzdssVar, zzcqrVar) { // from class: com.google.android.gms.internal.ads.zzdny
            private final zzdss zzhlk;
            private final zzcqr zzhll;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhlk = zzdssVar;
                this.zzhll = zzcqrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, Map map) {
                zzdss zzdssVar2 = this.zzhlk;
                zzcqr zzcqrVar2 = this.zzhll;
                zzbdu zzbduVar = (zzbdu) obj;
                String str = (String) map.get("u");
                if (str == null) {
                    zzd.zzex("URL missing from httpTrack GMSG.");
                } else if (!zzbduVar.zzacp().zzhjz) {
                    zzdssVar2.zzel(str);
                } else {
                    zzcqrVar2.zza(new zzcrc(zzr.zzky().currentTimeMillis(), ((zzbfa) zzbduVar).zzadn().zzbvs, str, zzcqs.zzgru));
                }
            }
        };
    }
}
