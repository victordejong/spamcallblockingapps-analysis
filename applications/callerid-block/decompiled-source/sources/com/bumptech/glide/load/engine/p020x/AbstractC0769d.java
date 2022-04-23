package com.bumptech.glide.load.engine.p020x;

import com.bumptech.glide.load.engine.p020x.AbstractC0774m;
import com.bumptech.glide.p029o.C0857k;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.engine.x.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/d.class */
abstract class AbstractC0769d<T extends AbstractC0774m> {

    /* renamed from: a */
    private final Queue<T> f3617a = C0857k.m10753e(20);

    AbstractC0769d() {
    }

    /* renamed from: a */
    abstract T m11069a();

    /* renamed from: b */
    T m11068b() {
        T poll = this.f3617a.poll();
        T t = poll;
        if (poll == null) {
            t = m11069a();
        }
        return t;
    }

    /* renamed from: c */
    public void m11067c(T t) {
        if (this.f3617a.size() < 20) {
            this.f3617a.offer(t);
        }
    }
}
