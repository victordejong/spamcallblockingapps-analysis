package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqz.class */
public final class zzdqz implements zzfrz<zzcml> {
    public final /* synthetic */ String zza = "sendMessageToNativeJs";
    public final /* synthetic */ Map zzb;

    public zzdqz(zzdrh zzdrhVar, String str, Map map) {
        this.zzb = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzcml zzcmlVar) {
        zzcmlVar.zze(this.zza, this.zzb);
    }
}
