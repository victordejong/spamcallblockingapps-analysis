package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdym.class */
public final class zzdym<I, O> extends zzdyn<I, O, zzdyu<? super I, ? extends O>, zzdzw<? extends O>> {
    public zzdym(zzdzw<? extends I> zzdzwVar, zzdyu<? super I, ? extends O> zzdyuVar) {
        super(zzdzwVar, zzdyuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    final /* synthetic */ void setResult(Object obj) {
        setFuture((zzdzw) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    final /* synthetic */ Object zzd(Object obj, @NullableDecl Object obj2) throws Exception {
        zzdyu zzdyuVar = (zzdyu) obj;
        zzdzw<O> zzf = zzdyuVar.zzf(obj2);
        zzdwl.zza(zzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdyuVar);
        return zzf;
    }
}
