package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhw.class */
final class zzhw<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzuw;

    public zzhw(Iterator<Map.Entry<K, Object>> it) {
        this.zzuw = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzuw.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzuw.next();
        return next.getValue() instanceof zzhr ? new zzht(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzuw.remove();
    }
}
