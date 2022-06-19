package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrg.class */
public final class zzdrg<T> implements zzbpr<Object> {
    public final /* synthetic */ zzdrh zza;
    private final WeakReference<T> zzb;
    private final String zzc;
    private final zzbpr<T> zzd;

    public /* synthetic */ zzdrg(zzdrh zzdrhVar, WeakReference weakReference, String str, zzbpr zzbprVar, zzdre zzdreVar) {
        this.zza = zzdrhVar;
        this.zzb = weakReference;
        this.zzc = str;
        this.zzd = zzbprVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final void zza(Object obj, Map<String, String> map) {
        T t = this.zzb.get();
        if (t == null) {
            this.zza.zzf(this.zzc, this);
        } else {
            this.zzd.zza(t, map);
        }
    }
}
