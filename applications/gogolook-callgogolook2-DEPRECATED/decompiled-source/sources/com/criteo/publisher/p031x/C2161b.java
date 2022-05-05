package com.criteo.publisher.p031x;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.criteo.publisher.AbstractRunnableC2020m;
import com.criteo.publisher.model.C2037k;
import com.criteo.publisher.model.C2038l;
import com.criteo.publisher.model.C2039m;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.model.C2050u;
import com.criteo.publisher.p020a0.AbstractC1918i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
/* renamed from: com.criteo.publisher.x.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/x/b.class */
public class C2161b {
    @NonNull

    /* renamed from: a */
    public final C2039m f2473a;
    @NonNull

    /* renamed from: b */
    public final C2050u f2474b;
    @NonNull

    /* renamed from: c */
    public final C2166d f2475c;
    @NonNull

    /* renamed from: d */
    public final Executor f2476d;

    /* renamed from: f */
    public final Object f2478f = new Object();
    @NonNull
    @GuardedBy("lock")

    /* renamed from: e */
    public final Map<C2037k, Future<?>> f2477e = new ConcurrentHashMap();

    /* renamed from: com.criteo.publisher.x.b$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/x/b$a.class */
    public class RunnableC2162a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2163b f2479a;

        /* renamed from: b */
        public final /* synthetic */ List f2480b;

        public RunnableC2162a(C2163b bVar, List list) {
            this.f2479a = bVar;
            this.f2480b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2479a.run();
            } finally {
                C2161b.this.m35568a(this.f2480b);
            }
        }
    }

    /* renamed from: com.criteo.publisher.x.b$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/x/b$b.class */
    public class C2163b extends AbstractRunnableC2020m {
        @NonNull

        /* renamed from: c */
        public final List<C2037k> f2482c;
        @NonNull

        /* renamed from: d */
        public final AbstractC1918i f2483d;

        public C2163b(@NonNull List<C2037k> list, @NonNull AbstractC1918i iVar) {
            this.f2482c = list;
            this.f2483d = iVar;
        }

        public /* synthetic */ C2163b(C2161b bVar, List list, AbstractC1918i iVar, RunnableC2162a aVar) {
            this(list, iVar);
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() throws ExecutionException, InterruptedException {
            C2038l a = C2161b.this.f2473a.m35856a(this.f2482c);
            String str = C2161b.this.f2473a.m35858a().get();
            this.f2483d.mo35951a(a);
            try {
                this.f2483d.mo35950a(a, C2161b.this.f2475c.m35561a(a, str));
            } catch (Exception e) {
                this.f2483d.mo35949a(a, e);
            }
        }
    }

    /* renamed from: com.criteo.publisher.x.b$c */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/x/b$c.class */
    public class C2164c extends AbstractRunnableC2020m {
        @NonNull

        /* renamed from: c */
        public final C2042p f2485c;

        public C2164c(@NonNull C2042p pVar) {
            this.f2485c = pVar;
        }

        public /* synthetic */ C2164c(C2161b bVar, C2042p pVar, RunnableC2162a aVar) {
            this(pVar);
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() throws IOException {
            this.f2485c.m35840a(C2161b.this.f2475c.m35560a(C2161b.this.f2474b.m35812a()));
        }
    }

    public C2161b(@NonNull C2039m mVar, @NonNull C2050u uVar, @NonNull C2166d dVar, @NonNull Executor executor) {
        this.f2473a = mVar;
        this.f2474b = uVar;
        this.f2475c = dVar;
        this.f2476d = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m35568a(List<C2037k> list) {
        synchronized (this.f2478f) {
            this.f2477e.keySet().removeAll(list);
        }
    }

    @NonNull
    /* renamed from: b */
    private FutureTask<Void> m35565b(@NonNull List<C2037k> list, @NonNull AbstractC1918i iVar) {
        return new FutureTask<>(new RunnableC2162a(new C2163b(this, list, iVar, null), list), null);
    }

    /* renamed from: a */
    public void m35572a() {
        synchronized (this.f2478f) {
            for (Future<?> future : this.f2477e.values()) {
                future.cancel(true);
            }
            this.f2477e.clear();
        }
    }

    /* renamed from: a */
    public void m35571a(@NonNull C2042p pVar) {
        this.f2476d.execute(new C2164c(this, pVar, null));
    }

    /* renamed from: a */
    public void m35567a(@NonNull List<C2037k> list, @NonNull AbstractC1918i iVar) {
        ArrayList<C2037k> arrayList = new ArrayList(list);
        synchronized (this.f2478f) {
            arrayList.removeAll(this.f2477e.keySet());
            if (!arrayList.isEmpty()) {
                FutureTask<Void> b = m35565b(arrayList, iVar);
                for (C2037k kVar : arrayList) {
                    this.f2477e.put(kVar, b);
                }
                try {
                    this.f2476d.execute(b);
                } catch (Throwable th) {
                    if (b != null) {
                        m35568a(arrayList);
                    }
                    throw th;
                }
            }
        }
    }
}
