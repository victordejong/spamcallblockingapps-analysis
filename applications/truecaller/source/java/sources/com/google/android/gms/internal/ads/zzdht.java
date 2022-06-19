package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdht.class */
public final class zzdht extends zzdgm<zzdhv> implements zzdhv {
    public zzdht(Set<zzdih<zzdhv>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zza(String str) {
        zzk(new zzdgl(str) { // from class: com.google.android.gms.internal.ads.zzdho
            private final String zza;

            {
                this.zza = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdhv) obj).zza(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzb(String str) {
        zzk(new zzdgl(str) { // from class: com.google.android.gms.internal.ads.zzdhp
            private final String zza;

            {
                this.zza = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdhv) obj).zzb(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzc(String str, String str2) {
        zzk(new zzdgl(str, str2) { // from class: com.google.android.gms.internal.ads.zzdhq
            private final String zza;
            private final String zzb;

            {
                this.zza = str;
                this.zzb = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdgl
            public final void zza(Object obj) {
                ((zzdhv) obj).zzc(this.zza, this.zzb);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zzd() {
        zzk(zzdhr.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdhv
    public final void zze() {
        zzk(zzdhs.zza);
    }
}
