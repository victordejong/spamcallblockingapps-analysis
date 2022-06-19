package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.gq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gq.class */
final class C3973gq implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f18224a;

    /* renamed from: b */
    private boolean f18225b;

    /* renamed from: c */
    private Iterator<Map.Entry<K, V>> f18226c;

    /* renamed from: d */
    private final /* synthetic */ C3965gi f18227d;

    private C3973gq(C3965gi c3965gi) {
        this.f18227d = c3965gi;
        this.f18224a = -1;
    }

    public /* synthetic */ C3973gq(C3965gi c3965gi, C3964gh c3964gh) {
        this(c3965gi);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m5342a() {
        Map map;
        if (this.f18226c == null) {
            map = this.f18227d.f18209c;
            this.f18226c = map.entrySet().iterator();
        }
        return this.f18226c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        boolean z;
        Map map;
        int i = this.f18224a + 1;
        list = this.f18227d.f18208b;
        if (i >= list.size()) {
            map = this.f18227d.f18209c;
            if (map.isEmpty() || !m5342a().hasNext()) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Map.Entry entry;
        List list2;
        this.f18225b = true;
        int i = this.f18224a + 1;
        this.f18224a = i;
        list = this.f18227d.f18208b;
        if (i < list.size()) {
            list2 = this.f18227d.f18208b;
            entry = (Map.Entry) list2.get(this.f18224a);
        } else {
            entry = (Map.Entry) m5342a().next();
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (!this.f18225b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f18225b = false;
        this.f18227d.m5348f();
        int i = this.f18224a;
        list = this.f18227d.f18208b;
        if (i >= list.size()) {
            m5342a().remove();
            return;
        }
        C3965gi c3965gi = this.f18227d;
        int i2 = this.f18224a;
        this.f18224a = i2 - 1;
        c3965gi.m5353c(i2);
    }
}
