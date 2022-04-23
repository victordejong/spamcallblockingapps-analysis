package com.google.a.d.a;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/google/a/d/a/i.class */
public final class i {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/a/d/a/i$a.class */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final Lock f3750a;

        /* renamed from: b  reason: collision with root package name */
        private final Condition f3751b;
        private int c;
        private boolean d;

        private a() {
            this.f3750a = new ReentrantLock();
            this.f3751b = this.f3750a.newCondition();
            this.c = 0;
            this.d = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(byte b2) {
            this();
        }

        private void a() {
            this.f3750a.lock();
            try {
                this.c--;
                if (isTerminated()) {
                    this.f3751b.signalAll();
                }
            } finally {
                this.f3750a.unlock();
            }
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) {
            boolean z;
            long nanos = timeUnit.toNanos(j);
            this.f3750a.lock();
            while (true) {
                try {
                    if (isTerminated()) {
                        this.f3750a.unlock();
                        z = true;
                        break;
                    } else if (nanos <= 0) {
                        this.f3750a.unlock();
                        z = false;
                        break;
                    } else {
                        nanos = this.f3751b.awaitNanos(nanos);
                    }
                } catch (Throwable th) {
                    this.f3750a.unlock();
                    throw th;
                }
            }
            return z;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f3750a.lock();
            try {
                if (isShutdown()) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.c++;
                try {
                    runnable.run();
                } finally {
                    a();
                }
            } finally {
                this.f3750a.unlock();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            this.f3750a.lock();
            try {
                return this.d;
            } finally {
                this.f3750a.unlock();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            boolean z;
            this.f3750a.lock();
            try {
                if (this.d) {
                    if (this.c == 0) {
                        z = true;
                        return z;
                    }
                }
                z = false;
                return z;
            } finally {
                this.f3750a.unlock();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f3750a.lock();
            try {
                this.d = true;
            } finally {
                this.f3750a.unlock();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }
    }
}
