package com.criteo.publisher.j0;

import com.criteo.publisher.h;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.p;
import com.criteo.publisher.model.t;
import com.criteo.publisher.model.x;
import com.criteo.publisher.v;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final p f17366a;

    /* renamed from: b  reason: collision with root package name */
    public final h f17367b;

    /* renamed from: c  reason: collision with root package name */
    public final g f17368c;

    /* renamed from: d  reason: collision with root package name */
    public final Executor f17369d;
    private final x g;
    public final Object f = new Object();
    public final Map<n, Future<?>> e = new ConcurrentHashMap();

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/b$a.class */
    public final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f17370a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f17371b;

        public a(c cVar, List list) {
            this.f17370a = cVar;
            this.f17371b = list;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f17370a.run();
            } finally {
                b.this.a(this.f17371b);
            }
        }
    }

    /* renamed from: com.criteo.publisher.j0.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/b$b.class */
    public final class C0344b extends v {

        /* renamed from: b  reason: collision with root package name */
        private final t f17374b;

        private C0344b(t tVar) {
            this.f17374b = tVar;
        }

        public /* synthetic */ C0344b(b bVar, t tVar, a aVar) {
            this(tVar);
        }

        @Override // com.criteo.publisher.v
        public final void a() throws IOException {
            this.f17374b.b(b.this.f17368c.a(b.this.g.a()));
        }
    }

    public b(p pVar, x xVar, h hVar, g gVar, Executor executor) {
        this.f17366a = pVar;
        this.g = xVar;
        this.f17367b = hVar;
        this.f17368c = gVar;
        this.f17369d = executor;
    }

    public void a(List<n> list) {
        synchronized (this.f) {
            this.e.keySet().removeAll(list);
        }
    }
}
