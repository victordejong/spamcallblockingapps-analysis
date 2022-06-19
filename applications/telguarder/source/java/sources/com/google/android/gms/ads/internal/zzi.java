package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzdsy;
import com.google.android.gms.internal.ads.zzdug;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzi.class */
public final class zzi implements zzdug {
    private final /* synthetic */ zzf zzbpd;

    public zzi(zzf zzfVar) {
        this.zzbpd = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j) {
        zzdsy zzdsyVar;
        zzdsyVar = this.zzbpd.zzxc;
        zzdsyVar.zzh(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j, String str) {
        zzdsy zzdsyVar;
        zzdsyVar = this.zzbpd.zzxc;
        zzdsyVar.zzb(i, System.currentTimeMillis() - j, str);
    }
}
