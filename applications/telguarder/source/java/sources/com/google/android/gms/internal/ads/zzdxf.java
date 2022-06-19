package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxf.class */
public final class zzdxf<E> extends zzdwu<E> {
    private final zzdxd<E> zzhxs;

    public zzdxf(zzdxd<E> zzdxdVar, int i) {
        super(zzdxdVar.size(), i);
        this.zzhxs = zzdxdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwu
    protected final E get(int i) {
        return this.zzhxs.get(i);
    }
}
