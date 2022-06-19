package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpv.class */
public final class dpv extends dqb {

    /* renamed from: a */
    private final /* synthetic */ dpu f47397a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private dpv(dpu dpuVar) {
        super(dpuVar, null);
        this.f47397a = dpuVar;
    }

    public /* synthetic */ dpv(dpu dpuVar, dpt dptVar) {
        this(dpuVar);
    }

    @Override // com.google.android.gms.internal.ads.dqb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new dpw(this.f47397a, null);
    }
}
