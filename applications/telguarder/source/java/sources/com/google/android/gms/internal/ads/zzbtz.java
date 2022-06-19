package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtz.class */
public final class zzbtz extends zzbwf<zzbua> implements zzbua {
    public zzbtz(Set<zzbya<zzbua>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnlVar) {
        zza(new zzbwh(zzdnlVar) { // from class: com.google.android.gms.internal.ads.zzbub
            private final zzdnl zzfzt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzt = zzdnlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbua) obj).zzb(this.zzfzt);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatqVar) {
        zza(new zzbwh(zzatqVar) { // from class: com.google.android.gms.internal.ads.zzbty
            private final zzatq zzfzs;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzs = zzatqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwh
            public final void zzo(Object obj) {
                ((zzbua) obj).zzd(this.zzfzs);
            }
        });
    }
}
