package com.bumptech.glide.load.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.g.e;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.b.i;
import com.bumptech.glide.load.c;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/d.class */
public final class d implements i.a {
    private static final a k = new a();
    private static final Handler l = new Handler(Looper.getMainLooper(), new b((byte) 0));

    /* renamed from: a  reason: collision with root package name */
    public final List<e> f3541a;

    /* renamed from: b  reason: collision with root package name */
    public final e f3542b;
    public final c c;
    public final ExecutorService d;
    public boolean e;
    public boolean f;
    public boolean g;
    public Set<e> h;
    public i i;
    public volatile Future<?> j;
    private final a m;
    private final ExecutorService n;
    private final boolean o;
    private k<?> p;
    private Exception q;
    private h<?> r;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/d$a.class */
    static final class a {
        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/d$b.class */
    private static final class b implements Handler.Callback {
        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            boolean z;
            if (1 == message.what || 2 == message.what) {
                d dVar = (d) message.obj;
                if (1 == message.what) {
                    d.a(dVar);
                } else {
                    d.b(dVar);
                }
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    public d(c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z, e eVar) {
        this(cVar, executorService, executorService2, z, eVar, k);
    }

    private d(c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z, e eVar, a aVar) {
        this.f3541a = new ArrayList();
        this.c = cVar;
        this.d = executorService;
        this.n = executorService2;
        this.o = z;
        this.f3542b = eVar;
        this.m = aVar;
    }

    static /* synthetic */ void a(d dVar) {
        if (dVar.e) {
            dVar.p.c();
        } else if (dVar.f3541a.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        } else {
            dVar.r = new h<>(dVar.p, dVar.o);
            dVar.f = true;
            dVar.r.d();
            dVar.f3542b.a(dVar.c, dVar.r);
            for (e eVar : dVar.f3541a) {
                if (!dVar.b(eVar)) {
                    dVar.r.d();
                    eVar.a(dVar.r);
                }
            }
            dVar.r.e();
        }
    }

    static /* synthetic */ void b(d dVar) {
        if (dVar.e) {
            return;
        }
        if (dVar.f3541a.isEmpty()) {
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        }
        dVar.g = true;
        dVar.f3542b.a(dVar.c, (h<?>) null);
        for (e eVar : dVar.f3541a) {
            if (!dVar.b(eVar)) {
                eVar.a(dVar.q);
            }
        }
    }

    private boolean b(e eVar) {
        return this.h != null && this.h.contains(eVar);
    }

    public final void a(e eVar) {
        h.a();
        if (this.f) {
            eVar.a(this.r);
        } else if (this.g) {
            eVar.a(this.q);
        } else {
            this.f3541a.add(eVar);
        }
    }

    @Override // com.bumptech.glide.load.b.i.a
    public final void a(i iVar) {
        this.j = this.n.submit(iVar);
    }

    @Override // com.bumptech.glide.g.e
    public final void a(k<?> kVar) {
        this.p = kVar;
        l.obtainMessage(1, this).sendToTarget();
    }

    @Override // com.bumptech.glide.g.e
    public final void a(Exception exc) {
        this.q = exc;
        l.obtainMessage(2, this).sendToTarget();
    }
}
