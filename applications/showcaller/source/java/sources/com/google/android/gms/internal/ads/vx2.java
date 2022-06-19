package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vx2.class */
final class vx2 extends yx2 {

    /* renamed from: a */
    final /* synthetic */ Comparator f31400a;

    public vx2(Comparator comparator) {
        this.f31400a = comparator;
    }

    @Override // com.google.android.gms.internal.ads.yx2
    /* renamed from: a */
    public final <K, V> Map<K, Collection<V>> mo8667a() {
        return new TreeMap(this.f31400a);
    }
}
