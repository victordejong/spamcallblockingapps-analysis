package androidx.work.impl.utils.futures;

import java.util.concurrent.locks.LockSupport;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$h.class */
public final class AbstractFuture$h {

    /* renamed from: c */
    static final AbstractFuture$h f3141c = new AbstractFuture$h(false);

    /* renamed from: a */
    volatile Thread f3142a;

    /* renamed from: b */
    volatile AbstractFuture$h f3143b;

    AbstractFuture$h() {
        AbstractFuture.g.m11600e(this, Thread.currentThread());
    }

    AbstractFuture$h(boolean z) {
    }

    /* renamed from: a */
    void m11599a(AbstractFuture$h abstractFuture$h) {
        AbstractFuture.g.m11601d(this, abstractFuture$h);
    }

    /* renamed from: b */
    void m11598b() {
        Thread thread = this.f3142a;
        if (thread != null) {
            this.f3142a = null;
            LockSupport.unpark(thread);
        }
    }
}
