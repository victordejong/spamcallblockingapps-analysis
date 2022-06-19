package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddl.class */
final class ddl<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    private Iterator<Map.Entry<K, Object>> f14117a;

    public ddl(Iterator<Map.Entry<K, Object>> it) {
        this.f14117a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14117a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f14117a.next();
        ddi ddiVar = next;
        if (next.getValue() instanceof ddg) {
            ddiVar = new ddi(next);
        }
        return ddiVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f14117a.remove();
    }
}
