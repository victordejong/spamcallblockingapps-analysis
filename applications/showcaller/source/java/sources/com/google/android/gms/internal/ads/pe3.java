package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pe3.class */
public final class pe3<F, T> extends AbstractList<T> {

    /* renamed from: d */
    private final List<F> f27952d;

    /* renamed from: e */
    private final oe3<F, T> f27953e;

    public pe3(List<F> list, oe3<F, T> oe3Var) {
        this.f27952d = list;
        this.f27953e = oe3Var;
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        zzazx zzb = zzazx.zzb(((Integer) this.f27952d.get(i)).intValue());
        zzazx zzazxVar = zzb;
        if (zzb == null) {
            zzazxVar = zzazx.AD_FORMAT_TYPE_UNSPECIFIED;
        }
        return (T) zzazxVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27952d.size();
    }
}
