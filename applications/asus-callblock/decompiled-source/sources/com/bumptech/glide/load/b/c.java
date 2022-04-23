package com.bumptech.glide.load.b;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import com.bumptech.glide.load.b.a;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.h;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c.class */
public final class c implements h.a, com.bumptech.glide.load.b.e, h.a {

    /* renamed from: a  reason: collision with root package name */
    public final Map<com.bumptech.glide.load.c, com.bumptech.glide.load.b.d> f3522a;

    /* renamed from: b  reason: collision with root package name */
    public final com.bumptech.glide.load.b.b.h f3523b;
    public final a c;
    public final Map<com.bumptech.glide.load.c, WeakReference<h<?>>> d;
    public final b e;
    private final g f;
    private final l g;
    private ReferenceQueue<h<?>> h;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final ExecutorService f3526a;

        /* renamed from: b  reason: collision with root package name */
        public final ExecutorService f3527b;
        public final com.bumptech.glide.load.b.e c;

        public a(ExecutorService executorService, ExecutorService executorService2, com.bumptech.glide.load.b.e eVar) {
            this.f3526a = executorService;
            this.f3527b = executorService2;
            this.c = eVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c$b.class */
    public static final class b implements a.AbstractC0096a {

        /* renamed from: a  reason: collision with root package name */
        private final a.AbstractC0098a f3534a;

        /* renamed from: b  reason: collision with root package name */
        private volatile com.bumptech.glide.load.b.b.a f3535b;

        public b(a.AbstractC0098a aVar) {
            this.f3534a = aVar;
        }

        @Override // com.bumptech.glide.load.b.a.AbstractC0096a
        public final com.bumptech.glide.load.b.b.a a() {
            if (this.f3535b == null) {
                synchronized (this) {
                    if (this.f3535b == null) {
                        this.f3535b = this.f3534a.build();
                    }
                    if (this.f3535b == null) {
                        this.f3535b = new com.bumptech.glide.load.b.b.b();
                    }
                }
            }
            return this.f3535b;
        }
    }

    /* renamed from: com.bumptech.glide.load.b.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c$c.class */
    public static final class C0100c {

        /* renamed from: a  reason: collision with root package name */
        public final com.bumptech.glide.load.b.d f3536a;

        /* renamed from: b  reason: collision with root package name */
        public final com.bumptech.glide.g.e f3537b;

        public C0100c(com.bumptech.glide.g.e eVar, com.bumptech.glide.load.b.d dVar) {
            this.f3537b = eVar;
            this.f3536a = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c$d.class */
    public static final class d implements MessageQueue.IdleHandler {

        /* renamed from: a  reason: collision with root package name */
        private final Map<com.bumptech.glide.load.c, WeakReference<h<?>>> f3538a;

        /* renamed from: b  reason: collision with root package name */
        private final ReferenceQueue<h<?>> f3539b;

        public d(Map<com.bumptech.glide.load.c, WeakReference<h<?>>> map, ReferenceQueue<h<?>> referenceQueue) {
            this.f3538a = map;
            this.f3539b = referenceQueue;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            e eVar = (e) this.f3539b.poll();
            if (eVar == null) {
                return true;
            }
            this.f3538a.remove(eVar.f3540a);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c$e.class */
    public static final class e extends WeakReference<h<?>> {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.load.c f3540a;

        public e(com.bumptech.glide.load.c cVar, h<?> hVar, ReferenceQueue<? super h<?>> referenceQueue) {
            super(hVar, referenceQueue);
            this.f3540a = cVar;
        }
    }

    public c(com.bumptech.glide.load.b.b.h hVar, a.AbstractC0098a aVar, ExecutorService executorService, ExecutorService executorService2) {
        this(hVar, aVar, executorService, executorService2, (byte) 0);
    }

    private c(com.bumptech.glide.load.b.b.h hVar, a.AbstractC0098a aVar, ExecutorService executorService, ExecutorService executorService2, byte b2) {
        this.f3523b = hVar;
        this.e = new b(aVar);
        this.d = new HashMap();
        this.f = new g();
        this.f3522a = new HashMap();
        this.c = new a(executorService, executorService2, this);
        this.g = new l();
        hVar.a(this);
    }

    public static void a(String str, long j, com.bumptech.glide.load.c cVar) {
        Log.v("Engine", str + " in " + com.bumptech.glide.i.d.a(j) + "ms, key: " + cVar);
    }

    public final ReferenceQueue<h<?>> a() {
        if (this.h == null) {
            this.h = new ReferenceQueue<>();
            Looper.myQueue().addIdleHandler(new d(this.d, this.h));
        }
        return this.h;
    }

    @Override // com.bumptech.glide.load.b.e
    public final void a(com.bumptech.glide.load.b.d dVar, com.bumptech.glide.load.c cVar) {
        com.bumptech.glide.i.h.a();
        if (dVar.equals(this.f3522a.get(cVar))) {
            this.f3522a.remove(cVar);
        }
    }

    @Override // com.bumptech.glide.load.b.b.h.a
    public final void a(k<?> kVar) {
        com.bumptech.glide.i.h.a();
        this.g.a(kVar);
    }

    @Override // com.bumptech.glide.load.b.e
    public final void a(com.bumptech.glide.load.c cVar, h<?> hVar) {
        com.bumptech.glide.i.h.a();
        if (hVar != null) {
            hVar.c = cVar;
            hVar.f3548b = this;
            if (hVar.f3547a) {
                this.d.put(cVar, new e(cVar, hVar, a()));
            }
        }
        this.f3522a.remove(cVar);
    }

    @Override // com.bumptech.glide.load.b.h.a
    public final void b(com.bumptech.glide.load.c cVar, h hVar) {
        com.bumptech.glide.i.h.a();
        this.d.remove(cVar);
        if (hVar.f3547a) {
            this.f3523b.a(cVar, hVar);
        } else {
            this.g.a(hVar);
        }
    }
}
