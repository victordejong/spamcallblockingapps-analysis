package com.appnext.core;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.appnext.core.o */
/* loaded from: classes-dex2jar.jar:com/appnext/core/o.class */
public final class C0564o {

    /* renamed from: ef */
    private static int f1842ef = Runtime.getRuntime().availableProcessors();

    /* renamed from: eh */
    private static final TimeUnit f1843eh = TimeUnit.SECONDS;

    /* renamed from: ej */
    private static volatile C0564o f1844ej;

    /* renamed from: eg */
    private final BlockingQueue<Runnable> f1845eg = new LinkedBlockingQueue();

    /* renamed from: ei */
    private ThreadPoolExecutor f1846ei = (ThreadPoolExecutor) Executors.newCachedThreadPool();

    /* renamed from: az */
    public static C0564o m42343az() {
        if (f1844ej == null) {
            synchronized (C0557j.class) {
                try {
                    if (f1844ej == null) {
                        f1844ej = new C0564o();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1844ej;
    }

    /* renamed from: a */
    public final void m42344a(Runnable runnable) {
        if (runnable != null) {
            this.f1846ei.execute(runnable);
        }
    }
}
