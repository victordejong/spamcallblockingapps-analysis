package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdux.class */
final class zzdux<T> implements zzbrt<Object> {
    public final /* synthetic */ zzduy zza;
    private final WeakReference<T> zzb;
    private final String zzc;
    private final zzbrt<T> zzd;

    public /* synthetic */ zzdux(zzduy zzduyVar, WeakReference weakReference, String str, zzbrt zzbrtVar, zzduw zzduwVar) {
        this.zza = zzduyVar;
        this.zzb = weakReference;
        this.zzc = str;
        this.zzd = zzbrtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        T t = this.zzb.get();
        if (t == null) {
            this.zza.zzk(this.zzc, this);
        } else {
            this.zzd.zza(t, map);
        }
    }
}
