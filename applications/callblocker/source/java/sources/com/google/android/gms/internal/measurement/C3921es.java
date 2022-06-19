package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.es */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/es.class */
final class C3921es<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    private Iterator<Map.Entry<K, Object>> f18134a;

    public C3921es(Iterator<Map.Entry<K, Object>> it) {
        this.f18134a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18134a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f18134a.next();
        C3918ep c3918ep = next;
        if (next.getValue() instanceof C3916en) {
            c3918ep = new C3918ep(next);
        }
        return c3918ep;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18134a.remove();
    }
}
