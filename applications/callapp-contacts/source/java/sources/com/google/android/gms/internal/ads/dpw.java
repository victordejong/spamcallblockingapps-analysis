package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpw.class */
final class dpw implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f47398a;

    /* renamed from: b */
    private Iterator<Map.Entry<K, V>> f47399b;

    /* renamed from: c */
    private final /* synthetic */ dpu f47400c;

    private dpw(dpu dpuVar) {
        List list;
        this.f47400c = dpuVar;
        list = dpuVar.f47391b;
        this.f47398a = list.size();
    }

    public /* synthetic */ dpw(dpu dpuVar, dpt dptVar) {
        this(dpuVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m16036a() {
        Map map;
        if (this.f47399b == null) {
            map = this.f47400c.f47395f;
            this.f47399b = map.entrySet().iterator();
        }
        return this.f47399b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f47398a;
        if (i > 0) {
            list = this.f47400c.f47391b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m16036a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m16036a().hasNext()) {
            return (Map.Entry) m16036a().next();
        }
        list = this.f47400c.f47391b;
        int i = this.f47398a - 1;
        this.f47398a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
