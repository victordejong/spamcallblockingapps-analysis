package com.bumptech.glide.load.engine;

import com.bumptech.glide.request.AbstractC0869f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$b.class */
class j$b implements Runnable {

    /* renamed from: b */
    private final AbstractC0869f f3605b;

    /* renamed from: c */
    final /* synthetic */ j f3606c;

    j$b(j jVar, AbstractC0869f fVar) {
        this.f3606c = jVar;
        this.f3605b = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f3605b.m10645f()) {
            synchronized (this.f3606c) {
                if (this.f3606c.b.m11095j(this.f3605b)) {
                    this.f3606c.w.b();
                    this.f3606c.f(this.f3605b);
                    this.f3606c.r(this.f3605b);
                }
                this.f3606c.h();
            }
        }
    }
}
