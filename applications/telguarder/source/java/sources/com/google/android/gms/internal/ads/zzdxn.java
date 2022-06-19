package com.google.android.gms.internal.ads;

import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxn.class */
final class zzdxn extends zzdyb<F, T> {
    private final /* synthetic */ zzdxk zzhyd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdxn(zzdxk zzdxkVar, ListIterator listIterator) {
        super(listIterator);
        this.zzhyd = zzdxkVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdxy
    public final T zzae(F f) {
        return this.zzhyd.zzhyc.apply(f);
    }
}
