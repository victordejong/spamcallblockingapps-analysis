package com.criteo.publisher.p251j0;

import com.criteo.publisher.AbstractC8336h;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8500p;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.model.C8514x;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* renamed from: com.criteo.publisher.j0.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/b.class */
public class C8356b {

    /* renamed from: a */
    public final C8500p f30020a;

    /* renamed from: b */
    public final AbstractC8336h f30021b;

    /* renamed from: c */
    public final C8364g f30022c;

    /* renamed from: d */
    public final Executor f30023d;

    /* renamed from: g */
    private final C8514x f30026g;

    /* renamed from: f */
    public final Object f30025f = new Object();

    /* renamed from: e */
    public final Map<C8498n, Future<?>> f30024e = new ConcurrentHashMap();

    /* renamed from: com.criteo.publisher.j0.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/b$a.class */
    public final class RunnableC8357a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ C8359c f30027a;

        /* renamed from: b */
        final /* synthetic */ List f30028b;

        public RunnableC8357a(C8359c c8359c, List list) {
            C8356b.this = r4;
            this.f30027a = c8359c;
            this.f30028b = list;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f30027a.run();
            } finally {
                C8356b.this.m25795a(this.f30028b);
            }
        }
    }

    /* renamed from: com.criteo.publisher.j0.b$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/b$b.class */
    public final class C8358b extends AbstractRunnableC8529v {

        /* renamed from: b */
        private final C8507t f30031b;

        private C8358b(C8507t c8507t) {
            C8356b.this = r4;
            this.f30031b = c8507t;
        }

        public /* synthetic */ C8358b(C8356b c8356b, C8507t c8507t, RunnableC8357a runnableC8357a) {
            this(c8507t);
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() throws IOException {
            this.f30031b.m25529b(C8356b.this.f30022c.m25788a(C8356b.this.f30026g.m25499a()));
        }
    }

    public C8356b(C8500p c8500p, C8514x c8514x, AbstractC8336h abstractC8336h, C8364g c8364g, Executor executor) {
        this.f30020a = c8500p;
        this.f30026g = c8514x;
        this.f30021b = abstractC8336h;
        this.f30022c = c8364g;
        this.f30023d = executor;
    }

    /* renamed from: a */
    public void m25795a(List<C8498n> list) {
        synchronized (this.f30025f) {
            this.f30024e.keySet().removeAll(list);
        }
    }
}
