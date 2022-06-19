package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvd.class */
public final class zzfvd<V, X extends Throwable> extends zzfve<V, X, zzfpv<? super X, ? extends V>, V> {
    public zzfvd(zzfxa<? extends V> zzfxaVar, Class<X> cls, zzfpv<? super X, ? extends V> zzfpvVar) {
        super(zzfxaVar, cls, zzfpvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final /* synthetic */ Object zza(Object obj, Throwable th) throws Exception {
        return ((zzfpv) obj).apply(th);
    }

    @Override // com.google.android.gms.internal.ads.zzfve
    public final void zzb(V v) {
        zzs(v);
    }
}
