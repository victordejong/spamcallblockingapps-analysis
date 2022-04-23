package p530d.p531a.p532v0;

import io.grpc.Context;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.GrpcUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9625z;
import p530d.p531a.ExecutorC9310t0;
import p530d.p531a.p532v0.AbstractC9451p;
import p530d.p531a.p532v0.AbstractC9543x0;
/* renamed from: d.a.v0.w */
/* loaded from: classes2-dex2jar.jar:d/a/v0/w.class */
public final class C9512w implements AbstractC9543x0 {

    /* renamed from: c */
    public final Executor f36353c;

    /* renamed from: d */
    public final ExecutorC9310t0 f36354d;

    /* renamed from: e */
    public Runnable f36355e;

    /* renamed from: f */
    public Runnable f36356f;

    /* renamed from: g */
    public Runnable f36357g;

    /* renamed from: h */
    public AbstractC9543x0.AbstractC9544a f36358h;

    /* renamed from: j */
    public Status f36360j;

    /* renamed from: k */
    public AbstractC9229f0.AbstractC9240i f36361k;

    /* renamed from: l */
    public long f36362l;

    /* renamed from: a */
    public final C9625z f36351a = C9625z.m2159a(C9512w.class, (String) null);

    /* renamed from: b */
    public final Object f36352b = new Object();

    /* renamed from: i */
    public Collection<C9518f> f36359i = new LinkedHashSet();

    /* renamed from: d.a.v0.w$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/w$a.class */
    public class RunnableC9513a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9543x0.AbstractC9544a f36363a;

        public RunnableC9513a(C9512w wVar, AbstractC9543x0.AbstractC9544a aVar) {
            this.f36363a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36363a.mo377a(true);
        }
    }

    /* renamed from: d.a.v0.w$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/w$b.class */
    public class RunnableC9514b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9543x0.AbstractC9544a f36364a;

        public RunnableC9514b(C9512w wVar, AbstractC9543x0.AbstractC9544a aVar) {
            this.f36364a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36364a.mo377a(false);
        }
    }

    /* renamed from: d.a.v0.w$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/w$c.class */
    public class RunnableC9515c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9543x0.AbstractC9544a f36365a;

        public RunnableC9515c(C9512w wVar, AbstractC9543x0.AbstractC9544a aVar) {
            this.f36365a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36365a.mo376b();
        }
    }

    /* renamed from: d.a.v0.w$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/w$d.class */
    public class RunnableC9516d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Status f36366a;

        public RunnableC9516d(Status status) {
            this.f36366a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9512w.this.f36358h.mo378a(this.f36366a);
        }
    }

    /* renamed from: d.a.v0.w$e */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/w$e.class */
    public class RunnableC9517e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C9518f f36368a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC9451p f36369b;

        public RunnableC9517e(C9512w wVar, C9518f fVar, AbstractC9451p pVar) {
            this.f36368a = fVar;
            this.f36369b = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36368a.m2550a(this.f36369b);
        }
    }

    /* renamed from: d.a.v0.w$f */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/w$f.class */
    public class C9518f extends C9523x {

        /* renamed from: i */
        public final AbstractC9229f0.AbstractC9236f f36370i;

        /* renamed from: j */
        public final Context f36371j;

        public C9518f(AbstractC9229f0.AbstractC9236f fVar) {
            this.f36371j = Context.m680g();
            this.f36370i = fVar;
        }

        public /* synthetic */ C9518f(C9512w wVar, AbstractC9229f0.AbstractC9236f fVar, RunnableC9513a aVar) {
            this(fVar);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        public final void m2550a(AbstractC9451p pVar) {
            Context a = this.f36371j.mo678a();
            try {
                AbstractC9448o a2 = pVar.mo520a(this.f36370i.mo2875c(), this.f36370i.mo2876b(), this.f36370i.mo2877a());
                this.f36371j.mo677a(a);
                m2525b(a2);
            } catch (Throwable th) {
                this.f36371j.mo677a(a);
                throw th;
            }
        }

        @Override // p530d.p531a.p532v0.C9523x, p530d.p531a.p532v0.AbstractC9448o
        /* renamed from: a */
        public void mo2531a(Status status) {
            super.mo2531a(status);
            synchronized (C9512w.this.f36352b) {
                if (C9512w.this.f36357g != null) {
                    boolean remove = C9512w.this.f36359i.remove(this);
                    if (!C9512w.this.m2556c() && remove) {
                        C9512w.this.f36354d.m2948b(C9512w.this.f36356f);
                        if (C9512w.this.f36360j != null) {
                            C9512w.this.f36354d.m2948b(C9512w.this.f36357g);
                            C9512w.this.f36357g = null;
                        }
                    }
                }
            }
            C9512w.this.f36354d.m2951a();
        }
    }

    public C9512w(Executor executor, ExecutorC9310t0 t0Var) {
        this.f36353c = executor;
        this.f36354d = t0Var;
    }

    /* renamed from: a */
    public final int m2562a() {
        int size;
        synchronized (this.f36352b) {
            size = this.f36359i.size();
        }
        return size;
    }

    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public final AbstractC9448o mo520a(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
        AbstractC9448o a0Var;
        try {
            C9367g1 g1Var = new C9367g1(methodDescriptor, k0Var, dVar);
            AbstractC9229f0.AbstractC9240i iVar = null;
            long j = -1;
            while (true) {
                synchronized (this.f36352b) {
                    if (this.f36360j == null) {
                        if (this.f36361k != null) {
                            if (iVar != null && j == this.f36362l) {
                                a0Var = m2561a(g1Var);
                                break;
                            }
                            iVar = this.f36361k;
                            j = this.f36362l;
                            AbstractC9451p a = GrpcUtil.m533a(iVar.mo385a(g1Var), dVar.m3124i());
                            if (a != null) {
                                a0Var = a.mo520a(g1Var.mo2875c(), g1Var.mo2876b(), g1Var.mo2877a());
                                break;
                            }
                        } else {
                            a0Var = m2561a(g1Var);
                            break;
                        }
                    } else {
                        a0Var = new C9323a0(this.f36360j);
                        break;
                    }
                }
            }
            this.f36354d.m2951a();
            return a0Var;
        } catch (Throwable th) {
            this.f36354d.m2951a();
            throw th;
        }
    }

    /* renamed from: a */
    public final C9518f m2561a(AbstractC9229f0.AbstractC9236f fVar) {
        C9518f fVar2 = new C9518f(this, fVar, null);
        this.f36359i.add(fVar2);
        if (m2562a() == 1) {
            this.f36354d.m2948b(this.f36355e);
        }
        return fVar2;
    }

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: a */
    public final Runnable mo2426a(AbstractC9543x0.AbstractC9544a aVar) {
        this.f36358h = aVar;
        this.f36355e = new RunnableC9513a(this, aVar);
        this.f36356f = new RunnableC9514b(this, aVar);
        this.f36357g = new RunnableC9515c(this, aVar);
        return null;
    }

    /* renamed from: a */
    public final void m2560a(AbstractC9229f0.AbstractC9240i iVar) {
        synchronized (this.f36352b) {
            try {
                this.f36361k = iVar;
                this.f36362l++;
                if (iVar != null && m2556c()) {
                    ArrayList arrayList = new ArrayList(this.f36359i);
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        C9518f fVar = (C9518f) it.next();
                        AbstractC9229f0.C9235e a = iVar.mo385a(fVar.f36370i);
                        C9222d a2 = fVar.f36370i.mo2877a();
                        AbstractC9451p a3 = GrpcUtil.m533a(a, a2.m3124i());
                        if (a3 != null) {
                            Executor executor = this.f36353c;
                            if (a2.m3128e() != null) {
                                executor = a2.m3128e();
                            }
                            executor.execute(new RunnableC9517e(this, fVar, a3));
                            arrayList2.add(fVar);
                        }
                    }
                    synchronized (this.f36352b) {
                        if (m2556c()) {
                            this.f36359i.removeAll(arrayList2);
                            if (this.f36359i.isEmpty()) {
                                this.f36359i = new LinkedHashSet();
                            }
                            if (!m2556c()) {
                                this.f36354d.m2948b(this.f36356f);
                                if (!(this.f36360j == null || this.f36357g == null)) {
                                    this.f36354d.m2948b(this.f36357g);
                                    this.f36357g = null;
                                }
                            }
                            this.f36354d.m2951a();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public final void mo521a(AbstractC9451p.AbstractC9452a aVar, Executor executor) {
        throw new UnsupportedOperationException("This method is not expected to be called");
    }

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: a */
    public final void mo2413a(Status status) {
        synchronized (this.f36352b) {
            if (this.f36360j == null) {
                this.f36360j = status;
                this.f36354d.m2948b(new RunnableC9516d(status));
                if (!m2556c() && this.f36357g != null) {
                    this.f36354d.m2948b(this.f36357g);
                    this.f36357g = null;
                }
                this.f36354d.m2951a();
            }
        }
    }

    @Override // p530d.p531a.AbstractC9224d0
    /* renamed from: b */
    public C9625z mo424b() {
        return this.f36351a;
    }

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: b */
    public final void mo2402b(Status status) {
        Collection<C9518f> collection;
        Runnable runnable;
        mo2413a(status);
        synchronized (this.f36352b) {
            try {
                collection = this.f36359i;
                runnable = this.f36357g;
                this.f36357g = null;
                if (!this.f36359i.isEmpty()) {
                    this.f36359i = Collections.emptyList();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (runnable != null) {
            for (C9518f fVar : collection) {
                fVar.mo2531a(status);
            }
            this.f36354d.execute(runnable);
        }
    }

    /* renamed from: c */
    public final boolean m2556c() {
        boolean z;
        synchronized (this.f36352b) {
            z = !this.f36359i.isEmpty();
        }
        return z;
    }
}
