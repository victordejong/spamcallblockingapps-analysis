package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpv.class */
final class dpv extends dqb {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dpu f27087a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private dpv(dpu dpuVar) {
        super(dpuVar, null);
        this.f27087a = dpuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dpv(dpu dpuVar, dpt dptVar) {
        this(dpuVar);
    }

    @Override // com.google.android.gms.internal.ads.dqb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new dpw(this.f27087a, null);
    }
}
