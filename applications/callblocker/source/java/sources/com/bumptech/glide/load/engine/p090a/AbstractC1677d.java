package com.bumptech.glide.load.engine.p090a;

import com.bumptech.glide.load.engine.p090a.AbstractC1691m;
import com.bumptech.glide.p077h.C1457j;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.engine.a.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/d.class */
abstract class AbstractC1677d<T extends AbstractC1691m> {

    /* renamed from: a */
    private final Queue<T> f5121a = C1457j.m16981a(20);

    /* renamed from: a */
    public void m16584a(T t) {
        if (this.f5121a.size() < 20) {
            this.f5121a.offer(t);
        }
    }

    /* renamed from: b */
    abstract T mo16511b();

    /* renamed from: c */
    public T m16583c() {
        T poll = this.f5121a.poll();
        T t = poll;
        if (poll == null) {
            t = mo16511b();
        }
        return t;
    }
}
