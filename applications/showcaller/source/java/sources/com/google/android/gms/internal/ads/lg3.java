package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lg3.class */
final class lg3 implements Iterator<Map.Entry> {

    /* renamed from: d */
    private int f26114d = -1;

    /* renamed from: e */
    private boolean f26115e;

    /* renamed from: f */
    private Iterator<Map.Entry> f26116f;

    /* renamed from: g */
    final /* synthetic */ og3 f26117g;

    public /* synthetic */ lg3(og3 og3Var, ng3 ng3Var) {
        this.f26117g = og3Var;
    }

    /* renamed from: a */
    private final Iterator<Map.Entry> m13520a() {
        Map map;
        if (this.f26116f == null) {
            map = this.f26117g.f27534f;
            this.f26116f = map.entrySet().iterator();
        }
        return this.f26116f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f26114d + 1;
        list = this.f26117g.f27533e;
        if (i >= list.size()) {
            map = this.f26117g.f27534f;
            if (map.isEmpty()) {
                z = false;
            } else if (!m13520a().hasNext()) {
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
        Map.Entry entry;
        List list2;
        this.f26115e = true;
        int i = this.f26114d + 1;
        this.f26114d = i;
        list = this.f26117g.f27533e;
        if (i < list.size()) {
            list2 = this.f26117g.f27533e;
            entry = (Map.Entry) list2.get(this.f26114d);
        } else {
            entry = m13520a().next();
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f26115e) {
            this.f26115e = false;
            this.f26117g.m12659m();
            int i = this.f26114d;
            list = this.f26117g.f27533e;
            if (i >= list.size()) {
                m13520a().remove();
                return;
            }
            og3 og3Var = this.f26117g;
            int i2 = this.f26114d;
            this.f26114d = i2 - 1;
            og3Var.m12661k(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
