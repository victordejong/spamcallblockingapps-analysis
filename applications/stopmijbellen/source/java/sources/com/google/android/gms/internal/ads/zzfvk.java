package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvk.class */
public final class zzfvk<I, O> extends zzfvm<I, O, zzfvx<? super I, ? extends O>, zzfxa<? extends O>> {
    public zzfvk(zzfxa<? extends I> zzfxaVar, zzfvx<? super I, ? extends O> zzfvxVar) {
        super(zzfxaVar, zzfvxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final /* bridge */ /* synthetic */ Object zza(Object obj, Object obj2) throws Exception {
        zzfvx zzfvxVar = (zzfvx) obj;
        zzfxa<O> zza = zzfvxVar.zza(obj2);
        zzfqg.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzfvxVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final /* synthetic */ void zzb(Object obj) {
        zzu((zzfxa) obj);
    }
}
