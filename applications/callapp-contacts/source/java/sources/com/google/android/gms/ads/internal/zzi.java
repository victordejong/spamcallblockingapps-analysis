package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.cuy;
import com.google.android.gms.internal.ads.cwg;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzi.class */
public final class zzi implements cwg {
    private final /* synthetic */ zzf zzbpn;

    public zzi(zzf zzfVar) {
        this.zzbpn = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.cwg
    public final void zza(int i, long j) {
        cuy cuyVar;
        cuyVar = this.zzbpn.zzxh;
        cuyVar.m17193a(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.cwg
    public final void zza(int i, long j, String str) {
        cuy cuyVar;
        cuyVar = this.zzbpn.zzxh;
        cuyVar.m17184b(i, System.currentTimeMillis() - j, str);
    }
}
