package com.bumptech.glide.load.engine.a;

import com.bumptech.glide.g.k;
import com.bumptech.glide.load.engine.a.m;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/d.class */
abstract class d<T extends m> {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<T> f7448a = k.a(20);

    abstract T a();

    public final void a(T t) {
        if (this.f7448a.size() < 20) {
            this.f7448a.offer(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final T b() {
        T poll = this.f7448a.poll();
        T t = poll;
        if (poll == null) {
            t = a();
        }
        return t;
    }
}
