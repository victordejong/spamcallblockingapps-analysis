package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrm.class */
final class zzdrm extends zzbwf<zzdrp> implements zzdrh<zzdrk> {
    public zzdrm(Set<zzbya<zzdrp>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zza(zzdqw<zzdrk, ?> zzdqwVar) {
        zza(new zzbwh(zzdqwVar) { // from class: com.google.android.gms.internal.ads.zzdrl
            private final zzdqw zzhrf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhrf = zzdqwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                zzdqw zzdqwVar2 = this.zzhrf;
                ((zzdrp) obj).zza((zzdrk) zzdqwVar2.zzaxh(), zzdqwVar2.zzaxi());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zza(zzdqw<zzdrk, ?> zzdqwVar, Throwable th) {
        zza(new zzbwh(zzdqwVar, th) { // from class: com.google.android.gms.internal.ads.zzdrn
            private final zzdqw zzhrf;
            private final Throwable zzhrg;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhrf = zzdqwVar;
                this.zzhrg = th;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                zzdqw zzdqwVar2 = this.zzhrf;
                ((zzdrp) obj).zza((zzdrk) zzdqwVar2.zzaxh(), zzdqwVar2.zzaxi(), this.zzhrg);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zzb(zzdqw<zzdrk, ?> zzdqwVar) {
        zza(new zzbwh(zzdqwVar) { // from class: com.google.android.gms.internal.ads.zzdro
            private final zzdqw zzhrf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhrf = zzdqwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                zzdqw zzdqwVar2 = this.zzhrf;
                ((zzdrp) obj).zzb((zzdrk) zzdqwVar2.zzaxh(), zzdqwVar2.zzaxi());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdrh
    public final void zzc(zzdqw<zzdrk, ?> zzdqwVar) {
        zza(new zzbwh(zzdqwVar) { // from class: com.google.android.gms.internal.ads.zzdrq
            private final zzdqw zzhrf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhrf = zzdqwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                zzdqw zzdqwVar2 = this.zzhrf;
                ((zzdrp) obj).zzc((zzdrk) zzdqwVar2.zzaxh(), zzdqwVar2.zzaxi());
            }
        });
    }
}
