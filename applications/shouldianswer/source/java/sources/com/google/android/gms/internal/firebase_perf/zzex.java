package com.google.android.gms.internal.firebase_perf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzex.class */
final class zzex<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzrr;

    public zzex(Iterator<Map.Entry<K, Object>> it) {
        this.zzrr = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzrr.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzrr.next();
        return next.getValue() instanceof zzes ? new zzeu(next, null) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzrr.remove();
    }
}
