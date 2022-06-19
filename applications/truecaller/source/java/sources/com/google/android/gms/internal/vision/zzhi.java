package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzhi.class */
public final class zzhi<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzya;

    public zzhi(Iterator<Map.Entry<K, Object>> it) {
        this.zzya = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzya.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzya.next();
        return next.getValue() instanceof zzhd ? new zzhf(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzya.remove();
    }
}
