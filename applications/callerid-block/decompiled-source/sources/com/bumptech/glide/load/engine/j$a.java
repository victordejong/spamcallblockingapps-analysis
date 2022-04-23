package com.bumptech.glide.load.engine;

import com.bumptech.glide.request.AbstractC0869f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$a.class */
class j$a implements Runnable {

    /* renamed from: b */
    private final AbstractC0869f f3603b;

    /* renamed from: c */
    final /* synthetic */ j f3604c;

    j$a(j jVar, AbstractC0869f fVar) {
        this.f3604c = jVar;
        this.f3603b = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f3603b.m10645f()) {
            synchronized (this.f3604c) {
                if (this.f3604c.b.m11095j(this.f3603b)) {
                    this.f3604c.e(this.f3603b);
                }
                this.f3604c.h();
            }
        }
    }
}
