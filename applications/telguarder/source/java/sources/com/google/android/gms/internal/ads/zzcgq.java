package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgq.class */
public final class zzcgq implements zzdzl<zzbeb> {
    private final /* synthetic */ String zzgjd;
    private final /* synthetic */ Map zzgje;

    public zzcgq(zzcgk zzcgkVar, String str, Map map) {
        this.zzgjd = str;
        this.zzgje = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzbeb zzbebVar) {
        zzbebVar.zza(this.zzgjd, this.zzgje);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
