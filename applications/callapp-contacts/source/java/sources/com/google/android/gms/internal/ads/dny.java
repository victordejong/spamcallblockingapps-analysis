package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dny.class */
public final class dny<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    private Iterator<Map.Entry<K, Object>> f47301a;

    public dny(Iterator<Map.Entry<K, Object>> it2) {
        this.f47301a = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f47301a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f47301a.next();
        return next.getValue() instanceof dnt ? new dnv(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f47301a.remove();
    }
}
