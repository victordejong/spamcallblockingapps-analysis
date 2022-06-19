package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdli.class */
public final class zzdli extends zzdkb<zzdlk> implements zzdlk {
    public zzdli(Set<zzdlw<zzdlk>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zza(final String str, final String str2) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdlf
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdlk) obj).zza(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zzb(final String str) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdld
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdlk) obj).zzb(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zzc(final String str) {
        zzo(new zzdka() { // from class: com.google.android.gms.internal.ads.zzdle
            @Override // com.google.android.gms.internal.ads.zzdka
            public final void zza(Object obj) {
                ((zzdlk) obj).zzc(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zzd() {
        zzo(zzdlg.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdlk
    public final void zze() {
        zzo(zzdlh.zza);
    }
}
