package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvc.class */
public final class zzfvc<V, X extends Throwable> extends zzfve<V, X, zzfvx<? super X, ? extends V>, zzfxa<? extends V>> {
    public zzfvc(zzfxa<? extends V> zzfxaVar, Class<X> cls, zzfvx<? super X, ? extends V> zzfvxVar) {
        super(zzfxaVar, cls, zzfvxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final /* bridge */ /* synthetic */ Object zza(Object obj, Throwable th) throws Exception {
        zzfvx zzfvxVar = (zzfvx) obj;
        zzfxa zza = zzfvxVar.zza(th);
        zzfqg.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzfvxVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final /* synthetic */ void zzb(Object obj) {
        zzu((zzfxa) obj);
    }
}
