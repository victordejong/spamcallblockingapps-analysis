package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkm.class */
final class zzkm implements Iterator<Map.Entry<K, V>> {

    /* renamed from: f */
    private int f8616f;

    /* renamed from: g */
    private boolean f8617g;

    /* renamed from: h */
    private Iterator<Map.Entry<K, V>> f8618h;

    /* renamed from: i */
    private final /* synthetic */ zzke f8619i;

    private zzkm(zzke zzkeVar) {
        this.f8619i = zzkeVar;
        this.f8616f = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzkm(zzke zzkeVar, zzkd zzkdVar) {
        this(zzkeVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m12136a() {
        Map map;
        if (this.f8618h == null) {
            map = this.f8619i.f8601h;
            this.f8618h = map.entrySet().iterator();
        }
        return this.f8618h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f8616f + 1;
        list = this.f8619i.f8600g;
        if (i < list.size()) {
            return true;
        }
        map = this.f8619i.f8601h;
        return !map.isEmpty() && m12136a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f8617g = true;
        int i = this.f8616f + 1;
        this.f8616f = i;
        list = this.f8619i.f8600g;
        if (i >= list.size()) {
            return (Map.Entry) m12136a().next();
        }
        list2 = this.f8619i.f8600g;
        return (Map.Entry) list2.get(this.f8616f);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f8617g) {
            this.f8617g = false;
            this.f8619i.m12142r();
            int i = this.f8616f;
            list = this.f8619i.f8600g;
            if (i < list.size()) {
                zzke zzkeVar = this.f8619i;
                int i2 = this.f8616f;
                this.f8616f = i2 - 1;
                zzkeVar.m12147m(i2);
                return;
            }
            m12136a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
