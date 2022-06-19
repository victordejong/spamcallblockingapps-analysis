package com.bumptech.glide.load.engine.p209x;

import com.bumptech.glide.load.engine.p209x.AbstractC4109m;
import com.bumptech.glide.p223p.C4383k;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.engine.x.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/d.class */
abstract class AbstractC4095d<T extends AbstractC4109m> {

    /* renamed from: a */
    private final Queue<T> f12917a = C4383k.m22713e(20);

    /* renamed from: a */
    abstract T mo23229a();

    /* renamed from: b */
    public T m23297b() {
        T poll = this.f12917a.poll();
        T t = poll;
        if (poll == null) {
            t = mo23229a();
        }
        return t;
    }

    /* renamed from: c */
    public void m23296c(T t) {
        if (this.f12917a.size() < 20) {
            this.f12917a.offer(t);
        }
    }
}
