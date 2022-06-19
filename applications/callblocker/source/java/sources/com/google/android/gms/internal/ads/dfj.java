package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfj.class */
public final class dfj extends dfp {

    /* renamed from: a */
    private final /* synthetic */ dfe f14211a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private dfj(dfe dfeVar) {
        super(dfeVar, null);
        this.f14211a = dfeVar;
    }

    public /* synthetic */ dfj(dfe dfeVar, dfh dfhVar) {
        this(dfeVar);
    }

    @Override // com.google.android.gms.internal.ads.dfp, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new dfg(this.f14211a, null);
    }
}
