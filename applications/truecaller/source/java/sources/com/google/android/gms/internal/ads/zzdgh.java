package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgh.class */
public final class zzdgh extends zzdgm<zzdgj> implements zzdgj {
    public zzdgh(Set<zzdih<zzdgj>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzc(zzazu zzazuVar) {
        zzk(new zzdgl(zzazuVar) { // from class: com.google.android.gms.internal.ads.zzdgb
            private final zzazu zza;

            {
                this.zza = zzazuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdgj) obj).zzc(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzd(zzazu zzazuVar) {
        zzk(new zzdgl(zzazuVar) { // from class: com.google.android.gms.internal.ads.zzdgc
            private final zzazu zza;

            {
                this.zza = zzazuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdgj) obj).zzd(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zze(zzazu zzazuVar) {
        zzk(new zzdgl(zzazuVar) { // from class: com.google.android.gms.internal.ads.zzdgd
            private final zzazu zza;

            {
                this.zza = zzazuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdgj) obj).zze(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzn(boolean z) {
        zzk(new zzdgl(z) { // from class: com.google.android.gms.internal.ads.zzdge
            private final boolean zza;

            {
                this.zza = z;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdgj) obj).zzn(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzo(boolean z) {
        zzk(new zzdgl(z) { // from class: com.google.android.gms.internal.ads.zzdgf
            private final boolean zza;

            {
                this.zza = z;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdgj) obj).zzo(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzp() {
        zzk(zzdgg.zza);
    }
}
