package com.bumptech.glide.load.engine;

import com.bumptech.glide.p029o.C0848e;
import com.bumptech.glide.request.AbstractC0869f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$e.class */
final class j$e implements Iterable<j$d> {

    /* renamed from: b */
    private final List<j$d> f3609b;

    j$e() {
        this(new ArrayList(2));
    }

    j$e(List<j$d> list) {
        this.f3609b = list;
    }

    /* renamed from: p */
    private static j$d m11093p(AbstractC0869f abstractC0869f) {
        return new j$d(abstractC0869f, C0848e.m10778a());
    }

    /* renamed from: a */
    void m11096a(AbstractC0869f abstractC0869f, Executor executor) {
        this.f3609b.add(new j$d(abstractC0869f, executor));
    }

    void clear() {
        this.f3609b.clear();
    }

    boolean isEmpty() {
        return this.f3609b.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<j$d> iterator() {
        return this.f3609b.iterator();
    }

    /* renamed from: j */
    public boolean m11095j(AbstractC0869f abstractC0869f) {
        return this.f3609b.contains(m11093p(abstractC0869f));
    }

    /* renamed from: k */
    j$e m11094k() {
        return new j$e(new ArrayList(this.f3609b));
    }

    /* renamed from: r */
    void m11092r(AbstractC0869f abstractC0869f) {
        this.f3609b.remove(m11093p(abstractC0869f));
    }

    int size() {
        return this.f3609b.size();
    }
}
