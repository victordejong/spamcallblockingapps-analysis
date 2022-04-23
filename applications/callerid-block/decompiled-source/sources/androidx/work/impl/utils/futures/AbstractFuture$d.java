package androidx.work.impl.utils.futures;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$d.class */
public final class AbstractFuture$d {

    /* renamed from: d */
    static final AbstractFuture$d f3135d = new AbstractFuture$d(null, null);

    /* renamed from: a */
    final Runnable f3136a;

    /* renamed from: b */
    final Executor f3137b;

    /* renamed from: c */
    AbstractFuture$d f3138c;

    AbstractFuture$d(Runnable runnable, Executor executor) {
        this.f3136a = runnable;
        this.f3137b = executor;
    }
}
