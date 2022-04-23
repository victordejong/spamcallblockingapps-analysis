package com.bumptech.glide.load.b.a;

import com.bumptech.glide.load.b.a.h;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/b.class */
abstract class b<T extends h> {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<T> f3490a = com.bumptech.glide.i.h.a(20);

    protected abstract T a();

    public final void a(T t) {
        if (this.f3490a.size() < 20) {
            this.f3490a.offer(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        T poll = this.f3490a.poll();
        T t = poll;
        if (poll == null) {
            t = a();
        }
        return t;
    }
}
