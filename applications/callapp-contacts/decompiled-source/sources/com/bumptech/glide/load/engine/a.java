package com.bumptech.glide.load.engine;

import android.os.Process;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.p;
import com.bumptech.glide.load.f;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    final Map<f, b> f7432a;

    /* renamed from: b  reason: collision with root package name */
    final ReferenceQueue<p<?>> f7433b;

    /* renamed from: c  reason: collision with root package name */
    p.a f7434c;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f7435d;
    volatile AbstractC0145a e;
    private final boolean f;
    private final Executor g;

    /* renamed from: com.bumptech.glide.load.engine.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$a.class */
    interface AbstractC0145a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$b.class */
    public static final class b extends WeakReference<p<?>> {

        /* renamed from: a  reason: collision with root package name */
        final f f7439a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f7440b;

        /* renamed from: c  reason: collision with root package name */
        u<?> f7441c;

        b(f fVar, p<?> pVar, ReferenceQueue<? super p<?>> referenceQueue, boolean z) {
            super(pVar, referenceQueue);
            this.f7439a = (f) j.a(fVar, "Argument must not be null");
            this.f7441c = (!pVar.f7590a || !z) ? null : (u) j.a(pVar.f7591b, "Argument must not be null");
            this.f7440b = pVar.f7590a;
        }

        final void a() {
            this.f7441c = null;
            clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.bumptech.glide.load.engine.a.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(final Runnable runnable) {
                return new Thread(new Runnable() { // from class: com.bumptech.glide.load.engine.a.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Process.setThreadPriority(10);
                        runnable.run();
                    }
                }, "glide-active-resources");
            }
        }));
    }

    a(boolean z, Executor executor) {
        this.f7432a = new HashMap();
        this.f7433b = new ReferenceQueue<>();
        this.f = z;
        this.g = executor;
        executor.execute(new Runnable() { // from class: com.bumptech.glide.load.engine.a.2
            @Override // java.lang.Runnable
            public final void run() {
                a aVar = a.this;
                while (!aVar.f7435d) {
                    try {
                        aVar.a((b) aVar.f7433b.remove());
                        AbstractC0145a aVar2 = aVar.e;
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        });
    }

    final void a(b bVar) {
        synchronized (this) {
            this.f7432a.remove(bVar.f7439a);
            if (bVar.f7440b && bVar.f7441c != null) {
                this.f7434c.a(bVar.f7439a, new p<>(bVar.f7441c, true, false, bVar.f7439a, this.f7434c));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(f fVar) {
        synchronized (this) {
            b remove = this.f7432a.remove(fVar);
            if (remove != null) {
                remove.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(f fVar, p<?> pVar) {
        synchronized (this) {
            b put = this.f7432a.put(fVar, new b(fVar, pVar, this.f7433b, this.f));
            if (put != null) {
                put.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p<?> b(f fVar) {
        synchronized (this) {
            b bVar = this.f7432a.get(fVar);
            if (bVar == null) {
                return null;
            }
            p<?> pVar = (p) bVar.get();
            if (pVar == null) {
                a(bVar);
            }
            return pVar;
        }
    }
}
