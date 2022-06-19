package com.bumptech.glide.load.engine.p119a;

import com.bumptech.glide.load.engine.p119a.AbstractC3725m;
import com.bumptech.glide.p116g.C3644k;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.engine.a.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/d.class */
abstract class AbstractC3711d<T extends AbstractC3725m> {

    /* renamed from: a */
    private final Queue<T> f13880a = C3644k.m37582a(20);

    /* renamed from: a */
    abstract T mo37441a();

    /* renamed from: a */
    public final void m37492a(T t) {
        if (this.f13880a.size() < 20) {
            this.f13880a.offer(t);
        }
    }

    /* renamed from: b */
    public final T m37491b() {
        T poll = this.f13880a.poll();
        T t = poll;
        if (poll == null) {
            t = mo37441a();
        }
        return t;
    }
}
