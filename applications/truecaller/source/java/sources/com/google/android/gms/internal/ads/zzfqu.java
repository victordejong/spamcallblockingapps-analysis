package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqu.class */
public final class zzfqu<V, X extends Throwable> extends zzfqv<V, X, zzfln<? super X, ? extends V>, V> {
    public zzfqu(zzfsm<? extends V> zzfsmVar, Class<X> cls, zzfln<? super X, ? extends V> zzflnVar) {
        super(zzfsmVar, cls, zzflnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfqv
    public final void zza(V v) {
        zzp(v);
    }

    @Override // com.google.android.gms.internal.ads.zzfqv
    public final /* bridge */ /* synthetic */ Object zzb(Object obj, Throwable th) throws Exception {
        return ((zzfln) obj).apply(th);
    }
}
