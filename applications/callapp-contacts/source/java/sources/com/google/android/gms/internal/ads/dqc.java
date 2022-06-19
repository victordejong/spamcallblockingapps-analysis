package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqc.class */
final class dqc implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f47407a;

    /* renamed from: b */
    private boolean f47408b;

    /* renamed from: c */
    private Iterator<Map.Entry<K, V>> f47409c;

    /* renamed from: d */
    private final /* synthetic */ dpu f47410d;

    private dqc(dpu dpuVar) {
        this.f47410d = dpuVar;
        this.f47407a = -1;
    }

    public /* synthetic */ dqc(dpu dpuVar, dpt dptVar) {
        this(dpuVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m16032a() {
        Map map;
        if (this.f47409c == null) {
            map = this.f47410d.f47392c;
            this.f47409c = map.entrySet().iterator();
        }
        return this.f47409c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f47407a + 1;
        list = this.f47410d.f47391b;
        if (i >= list.size()) {
            map = this.f47410d.f47392c;
            return !map.isEmpty() && m16032a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f47408b = true;
        int i = this.f47407a + 1;
        this.f47407a = i;
        list = this.f47410d.f47391b;
        if (i < list.size()) {
            list2 = this.f47410d.f47391b;
            return (Map.Entry) list2.get(this.f47407a);
        }
        return (Map.Entry) m16032a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f47408b) {
            this.f47408b = false;
            this.f47410d.m16038f();
            int i = this.f47407a;
            list = this.f47410d.f47391b;
            if (i >= list.size()) {
                m16032a().remove();
                return;
            }
            dpu dpuVar = this.f47410d;
            int i2 = this.f47407a;
            this.f47407a = i2 - 1;
            dpuVar.m16043c(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
