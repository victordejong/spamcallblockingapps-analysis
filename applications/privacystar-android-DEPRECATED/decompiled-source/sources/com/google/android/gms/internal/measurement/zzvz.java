package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvz.class */
final class zzvz<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzcac;

    public zzvz(Iterator<Map.Entry<K, Object>> it) {
        this.zzcac = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzcac.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzcac.next();
        return next.getValue() instanceof zzvw ? new zzvy(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzcac.remove();
    }
}
