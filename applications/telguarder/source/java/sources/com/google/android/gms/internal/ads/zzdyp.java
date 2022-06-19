package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyp.class */
public final class zzdyp<I, O> extends zzdyn<I, O, zzdvz<? super I, ? extends O>, O> {
    public zzdyp(zzdzw<? extends I> zzdzwVar, zzdvz<? super I, ? extends O> zzdvzVar) {
        super(zzdzwVar, zzdvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    final void setResult(@NullableDecl O o) {
        set(o);
    }

    @Override // com.google.android.gms.internal.ads.zzdyn
    @NullableDecl
    final /* synthetic */ Object zzd(Object obj, @NullableDecl Object obj2) throws Exception {
        return ((zzdvz) obj).apply(obj2);
    }
}
