package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpw.class */
final class dpw implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    private int f27088a;

    /* renamed from: b  reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f27089b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ dpu f27090c;

    private dpw(dpu dpuVar) {
        List list;
        this.f27090c = dpuVar;
        list = dpuVar.f27084b;
        this.f27088a = list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dpw(dpu dpuVar, dpt dptVar) {
        this(dpuVar);
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f27089b == null) {
            map = this.f27090c.f;
            this.f27089b = map.entrySet().iterator();
        }
        return this.f27089b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f27088a;
        if (i > 0) {
            list = this.f27090c.f27084b;
            if (i <= list.size()) {
                return true;
            }
        }
        return a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (a().hasNext()) {
            return (Map.Entry) a().next();
        }
        list = this.f27090c.f27084b;
        int i = this.f27088a - 1;
        this.f27088a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
