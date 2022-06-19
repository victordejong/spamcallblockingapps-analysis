package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfer.class */
public final class zzfer extends zzdgm<zzfet> implements zzfel<zzfem> {
    public zzfer(Set<zzdih<zzfet>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzfel
    public final void zza(zzfdy<zzfem, ?> zzfdyVar) {
        zzk(new zzdgl(zzfdyVar) { // from class: com.google.android.gms.internal.ads.zzfen
            private final zzfdy zza;

            {
                this.zza = zzfdyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                zzfdy zzfdyVar2 = this.zza;
                ((zzfet) obj).zzbE((zzfem) zzfdyVar2.zza(), zzfdyVar2.zzb());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfel
    public final void zzb(zzfdy<zzfem, ?> zzfdyVar) {
        zzk(new zzdgl(zzfdyVar) { // from class: com.google.android.gms.internal.ads.zzfeo
            private final zzfdy zza;

            {
                this.zza = zzfdyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                zzfdy zzfdyVar2 = this.zza;
                ((zzfet) obj).zzbF((zzfem) zzfdyVar2.zza(), zzfdyVar2.zzb());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfel
    public final void zzc(zzfdy<zzfem, ?> zzfdyVar, Throwable th) {
        zzk(new zzdgl(zzfdyVar, th) { // from class: com.google.android.gms.internal.ads.zzfep
            private final zzfdy zza;
            private final Throwable zzb;

            {
                this.zza = zzfdyVar;
                this.zzb = th;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                zzfdy zzfdyVar2 = this.zza;
                Throwable th2 = this.zzb;
                ((zzfet) obj).zzc((zzfem) zzfdyVar2.zza(), zzfdyVar2.zzb(), th2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfel
    public final void zzd(zzfdy<zzfem, ?> zzfdyVar) {
        zzk(new zzdgl(zzfdyVar) { // from class: com.google.android.gms.internal.ads.zzfeq
            private final zzfdy zza;

            {
                this.zza = zzfdyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                zzfdy zzfdyVar2 = this.zza;
                ((zzfet) obj).zzd((zzfem) zzfdyVar2.zza(), zzfdyVar2.zzb());
            }
        });
    }
}
