package io.objectbox.p502b;

import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.Cursor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: io.objectbox.b.e */
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/e.class */
public final class C17952e extends ThreadPoolExecutor {

    /* renamed from: a */
    private final BoxStore f62737a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.objectbox.b.e$a */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/b/e$a.class */
    public static final class ThreadFactoryC17953a implements ThreadFactory {

        /* renamed from: a */
        private static final AtomicInteger f62738a = new AtomicInteger();

        /* renamed from: b */
        private final ThreadGroup f62739b;

        /* renamed from: c */
        private final String f62740c = "ObjectBox-" + f62738a.incrementAndGet() + "-Thread-";

        /* renamed from: d */
        private final AtomicInteger f62741d = new AtomicInteger();

        ThreadFactoryC17953a() {
            SecurityManager securityManager = System.getSecurityManager();
            this.f62739b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f62739b, runnable, this.f62740c + this.f62741d.incrementAndGet());
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            return thread;
        }
    }

    public C17952e(BoxStore boxStore) {
        super(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryC17953a());
        this.f62737a = boxStore;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        for (C17944a<?> c17944a : this.f62737a.f62681e.values()) {
            Cursor<?> cursor = c17944a.f62710d.get();
            if (cursor != null) {
                cursor.close();
                cursor.getTx().close();
                c17944a.f62710d.remove();
            }
        }
    }
}
