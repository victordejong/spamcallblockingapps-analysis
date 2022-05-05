package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzin.class */
final class zzin<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: f */
    private Iterator<Map.Entry<K, Object>> f8535f;

    public zzin(Iterator<Map.Entry<K, Object>> it) {
        this.f8535f = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8535f.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f8535f.next();
        return next.getValue() instanceof zzim ? new zzio(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f8535f.remove();
    }
}
