package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkg.class */
final class zzkg implements Iterator<Map.Entry<K, V>> {

    /* renamed from: f */
    private int f8607f;

    /* renamed from: g */
    private Iterator<Map.Entry<K, V>> f8608g;

    /* renamed from: h */
    private final /* synthetic */ zzke f8609h;

    private zzkg(zzke zzkeVar) {
        List list;
        this.f8609h = zzkeVar;
        list = this.f8609h.f8600g;
        this.f8607f = list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzkg(zzke zzkeVar, zzkd zzkdVar) {
        this(zzkeVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m12140a() {
        Map map;
        if (this.f8608g == null) {
            map = this.f8609h.f8604k;
            this.f8608g = map.entrySet().iterator();
        }
        return this.f8608g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f8607f;
        if (i > 0) {
            list = this.f8609h.f8600g;
            if (i <= list.size()) {
                return true;
            }
        }
        return m12140a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m12140a().hasNext()) {
            return (Map.Entry) m12140a().next();
        }
        list = this.f8609h.f8600g;
        int i = this.f8607f - 1;
        this.f8607f = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
