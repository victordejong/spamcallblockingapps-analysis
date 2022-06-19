package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.k7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/k7.class */
final class C2141k7 implements Iterator<Map.Entry> {

    /* renamed from: b */
    private int f9778b = -1;

    /* renamed from: c */
    private boolean f9779c;

    /* renamed from: d */
    private Iterator<Map.Entry> f9780d;

    /* renamed from: e */
    final /* synthetic */ C2150m7 f9781e;

    public /* synthetic */ C2141k7(C2150m7 c2150m7, f7 f7Var) {
        this.f9781e = c2150m7;
    }

    /* renamed from: b */
    private final Iterator<Map.Entry> m4272b() {
        Map map;
        if (this.f9780d == null) {
            map = this.f9781e.f9794d;
            this.f9780d = map.entrySet().iterator();
        }
        return this.f9780d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f9778b + 1;
        list = this.f9781e.f9793c;
        if (i >= list.size()) {
            map = this.f9781e.f9794d;
            if (map.isEmpty()) {
                z = false;
            } else if (!m4272b().hasNext()) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        Object obj;
        List list2;
        this.f9779c = true;
        int i = this.f9778b + 1;
        this.f9778b = i;
        list = this.f9781e.f9793c;
        if (i < list.size()) {
            list2 = this.f9781e.f9793c;
            obj = list2.get(this.f9778b);
        } else {
            obj = m4272b().next();
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f9779c) {
            this.f9779c = false;
            this.f9781e.m4247m();
            int i = this.f9778b;
            list = this.f9781e.f9793c;
            if (i >= list.size()) {
                m4272b().remove();
                return;
            }
            C2150m7 c2150m7 = this.f9781e;
            int i2 = this.f9778b;
            this.f9778b = i2 - 1;
            c2150m7.m4249k(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
