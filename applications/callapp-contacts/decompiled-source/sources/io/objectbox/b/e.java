package io.objectbox.b;

import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/e.class */
public final class e extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private final BoxStore f36194a;

    /* loaded from: classes5-dex2jar.jar:io/objectbox/b/e$a.class */
    static final class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private static final AtomicInteger f36195a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        private final ThreadGroup f36196b;

        /* renamed from: c  reason: collision with root package name */
        private final String f36197c = "ObjectBox-" + f36195a.incrementAndGet() + "-Thread-";

        /* renamed from: d  reason: collision with root package name */
        private final AtomicInteger f36198d = new AtomicInteger();

        a() {
            SecurityManager securityManager = System.getSecurityManager();
            this.f36196b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f36196b, runnable, this.f36197c + this.f36198d.incrementAndGet());
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            return thread;
        }
    }

    public e(BoxStore boxStore) {
        super(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new a());
        this.f36194a = boxStore;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        for (io.objectbox.a<?> aVar : this.f36194a.e.values()) {
            Cursor<?> cursor = aVar.f36188d.get();
            if (cursor != null) {
                cursor.close();
                cursor.getTx().close();
                aVar.f36188d.remove();
            }
        }
    }
}
