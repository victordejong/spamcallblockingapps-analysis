package p033i.p034a.p046d.p049d;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: i.a.d.d.c */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/c.class */
public final class ThreadFactoryC0365c implements ThreadFactory {

    /* renamed from: f */
    private final String f887f;

    /* renamed from: g */
    private final AtomicInteger f888g = new AtomicInteger();

    public ThreadFactoryC0365c(String str) {
        this.f887f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setDaemon(true);
        newThread.setName(this.f887f + "-" + this.f888g.incrementAndGet());
        return newThread;
    }
}
