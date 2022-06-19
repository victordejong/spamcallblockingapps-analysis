package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxp.class */
final class zzdxp extends zzdyb<F, T> {
    private final /* synthetic */ zzdxm zzhye;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdxp(zzdxm zzdxmVar, ListIterator listIterator) {
        super(listIterator);
        this.zzhye = zzdxmVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdxy
    public final T zzae(F f) {
        return this.zzhye.zzhyc.apply(f);
    }
}
