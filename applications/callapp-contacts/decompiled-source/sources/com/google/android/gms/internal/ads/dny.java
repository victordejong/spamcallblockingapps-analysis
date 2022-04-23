package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dny.class */
public final class dny<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a  reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f27015a;

    public dny(Iterator<Map.Entry<K, Object>> it2) {
        this.f27015a = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27015a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f27015a.next();
        return next.getValue() instanceof dnt ? new dnv(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f27015a.remove();
    }
}
