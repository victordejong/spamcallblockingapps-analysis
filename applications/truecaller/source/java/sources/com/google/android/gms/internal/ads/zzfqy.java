package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqy.class */
public final class zzfqy<I, O> extends zzfra<I, O, zzfrk<? super I, ? extends O>, zzfsm<? extends O>> {
    public zzfqy(zzfsm<? extends I> zzfsmVar, zzfrk<? super I, ? extends O> zzfrkVar) {
        super(zzfsmVar, zzfrkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfra
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzr((zzfsm) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfra
    public final /* bridge */ /* synthetic */ Object zzb(Object obj, Object obj2) throws Exception {
        zzfrk zzfrkVar = (zzfrk) obj;
        zzfsm<O> zza = zzfrkVar.zza(obj2);
        zzflx.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzfrkVar);
        return zza;
    }
}
