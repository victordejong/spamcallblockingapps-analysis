package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.C4076n;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.p211z.ExecutorServiceC4136a;
import com.bumptech.glide.p223p.C4374e;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.p224l.AbstractC4394c;
import com.bumptech.glide.p223p.p224l.C4385a;
import com.bumptech.glide.request.AbstractC4402f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p020b.p041h.p049k.AbstractC1594e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.engine.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j.class */
public class C4067j<R> implements DecodeJob.AbstractC4034b<R>, C4385a.AbstractC4391f {

    /* renamed from: d */
    private static final C4070c f12821d = new C4070c();

    /* renamed from: A */
    private DecodeJob<R> f12822A;

    /* renamed from: B */
    private volatile boolean f12823B;

    /* renamed from: C */
    private boolean f12824C;

    /* renamed from: e */
    final C4072e f12825e;

    /* renamed from: f */
    private final AbstractC4394c f12826f;

    /* renamed from: g */
    private final C4076n.AbstractC4077a f12827g;

    /* renamed from: h */
    private final AbstractC1594e<C4067j<?>> f12828h;

    /* renamed from: i */
    private final C4070c f12829i;

    /* renamed from: j */
    private final AbstractC4073k f12830j;

    /* renamed from: k */
    private final ExecutorServiceC4136a f12831k;

    /* renamed from: l */
    private final ExecutorServiceC4136a f12832l;

    /* renamed from: m */
    private final ExecutorServiceC4136a f12833m;

    /* renamed from: n */
    private final ExecutorServiceC4136a f12834n;

    /* renamed from: o */
    private final AtomicInteger f12835o;

    /* renamed from: p */
    private AbstractC3999c f12836p;

    /* renamed from: q */
    private boolean f12837q;

    /* renamed from: r */
    private boolean f12838r;

    /* renamed from: s */
    private boolean f12839s;

    /* renamed from: t */
    private boolean f12840t;

    /* renamed from: u */
    private AbstractC4083s<?> f12841u;

    /* renamed from: v */
    DataSource f12842v;

    /* renamed from: w */
    private boolean f12843w;

    /* renamed from: x */
    GlideException f12844x;

    /* renamed from: y */
    private boolean f12845y;

    /* renamed from: z */
    C4076n<?> f12846z;

    /* renamed from: com.bumptech.glide.load.engine.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$a.class */
    public class RunnableC4068a implements Runnable {

        /* renamed from: d */
        private final AbstractC4402f f12847d;

        RunnableC4068a(AbstractC4402f abstractC4402f) {
            C4067j.this = r4;
            this.f12847d = abstractC4402f;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f12847d.mo22585g()) {
                synchronized (C4067j.this) {
                    if (C4067j.this.f12825e.m23338d(this.f12847d)) {
                        C4067j.this.m23354e(this.f12847d);
                    }
                    C4067j.this.m23351i();
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$b.class */
    public class RunnableC4069b implements Runnable {

        /* renamed from: d */
        private final AbstractC4402f f12849d;

        RunnableC4069b(AbstractC4402f abstractC4402f) {
            C4067j.this = r4;
            this.f12849d = abstractC4402f;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f12849d.mo22585g()) {
                synchronized (C4067j.this) {
                    if (C4067j.this.f12825e.m23338d(this.f12849d)) {
                        C4067j.this.f12846z.m23331b();
                        C4067j.this.m23353g(this.f12849d);
                        C4067j.this.m23342r(this.f12849d);
                    }
                    C4067j.this.m23351i();
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.j$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$c.class */
    public static class C4070c {
        C4070c() {
        }

        /* renamed from: a */
        public <R> C4076n<R> m23340a(AbstractC4083s<R> abstractC4083s, boolean z, AbstractC3999c abstractC3999c, C4076n.AbstractC4077a abstractC4077a) {
            return new C4076n<>(abstractC4083s, z, true, abstractC3999c, abstractC4077a);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.j$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$d.class */
    public static final class C4071d {

        /* renamed from: a */
        final AbstractC4402f f12851a;

        /* renamed from: b */
        final Executor f12852b;

        C4071d(AbstractC4402f abstractC4402f, Executor executor) {
            this.f12851a = abstractC4402f;
            this.f12852b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C4071d) {
                return this.f12851a.equals(((C4071d) obj).f12851a);
            }
            return false;
        }

        public int hashCode() {
            return this.f12851a.hashCode();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.j$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$e.class */
    public static final class C4072e implements Iterable<C4071d> {

        /* renamed from: d */
        private final List<C4071d> f12853d;

        C4072e() {
            this(new ArrayList(2));
        }

        C4072e(List<C4071d> list) {
            this.f12853d = list;
        }

        /* renamed from: h */
        private static C4071d m23336h(AbstractC4402f abstractC4402f) {
            return new C4071d(abstractC4402f, C4374e.m22738a());
        }

        /* renamed from: c */
        void m23339c(AbstractC4402f abstractC4402f, Executor executor) {
            this.f12853d.add(new C4071d(abstractC4402f, executor));
        }

        void clear() {
            this.f12853d.clear();
        }

        /* renamed from: d */
        boolean m23338d(AbstractC4402f abstractC4402f) {
            return this.f12853d.contains(m23336h(abstractC4402f));
        }

        /* renamed from: e */
        C4072e m23337e() {
            return new C4072e(new ArrayList(this.f12853d));
        }

        /* renamed from: i */
        void m23335i(AbstractC4402f abstractC4402f) {
            this.f12853d.remove(m23336h(abstractC4402f));
        }

        boolean isEmpty() {
            return this.f12853d.isEmpty();
        }

        @Override // java.lang.Iterable
        public Iterator<C4071d> iterator() {
            return this.f12853d.iterator();
        }

        int size() {
            return this.f12853d.size();
        }
    }

    public C4067j(ExecutorServiceC4136a executorServiceC4136a, ExecutorServiceC4136a executorServiceC4136a2, ExecutorServiceC4136a executorServiceC4136a3, ExecutorServiceC4136a executorServiceC4136a4, AbstractC4073k abstractC4073k, C4076n.AbstractC4077a abstractC4077a, AbstractC1594e<C4067j<?>> abstractC1594e) {
        this(executorServiceC4136a, executorServiceC4136a2, executorServiceC4136a3, executorServiceC4136a4, abstractC4073k, abstractC4077a, abstractC1594e, f12821d);
    }

    C4067j(ExecutorServiceC4136a executorServiceC4136a, ExecutorServiceC4136a executorServiceC4136a2, ExecutorServiceC4136a executorServiceC4136a3, ExecutorServiceC4136a executorServiceC4136a4, AbstractC4073k abstractC4073k, C4076n.AbstractC4077a abstractC4077a, AbstractC1594e<C4067j<?>> abstractC1594e, C4070c c4070c) {
        this.f12825e = new C4072e();
        this.f12826f = AbstractC4394c.m22678a();
        this.f12835o = new AtomicInteger();
        this.f12831k = executorServiceC4136a;
        this.f12832l = executorServiceC4136a2;
        this.f12833m = executorServiceC4136a3;
        this.f12834n = executorServiceC4136a4;
        this.f12830j = abstractC4073k;
        this.f12827g = abstractC4077a;
        this.f12828h = abstractC1594e;
        this.f12829i = c4070c;
    }

    /* renamed from: j */
    private ExecutorServiceC4136a m23350j() {
        return this.f12838r ? this.f12833m : this.f12839s ? this.f12834n : this.f12832l;
    }

    /* renamed from: m */
    private boolean m23347m() {
        return this.f12845y || this.f12843w || this.f12823B;
    }

    /* renamed from: q */
    private void m23343q() {
        synchronized (this) {
            if (this.f12836p == null) {
                throw new IllegalArgumentException();
            }
            this.f12825e.clear();
            this.f12836p = null;
            this.f12846z = null;
            this.f12841u = null;
            this.f12845y = false;
            this.f12823B = false;
            this.f12843w = false;
            this.f12824C = false;
            this.f12822A.m23430y(false);
            this.f12822A = null;
            this.f12844x = null;
            this.f12842v = null;
            this.f12828h.mo22685b(this);
        }
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.AbstractC4034b
    /* renamed from: a */
    public void mo23358a(GlideException glideException) {
        synchronized (this) {
            this.f12844x = glideException;
        }
        m23346n();
    }

    /* renamed from: b */
    public void m23357b(AbstractC4402f abstractC4402f, Executor executor) {
        synchronized (this) {
            this.f12826f.mo22676c();
            this.f12825e.m23339c(abstractC4402f, executor);
            boolean z = true;
            if (this.f12843w) {
                m23349k(1);
                executor.execute(new RunnableC4069b(abstractC4402f));
            } else if (this.f12845y) {
                m23349k(1);
                executor.execute(new RunnableC4068a(abstractC4402f));
            } else {
                if (this.f12823B) {
                    z = false;
                }
                C4382j.m22722a(z, "Cannot add callbacks to a cancelled EngineJob");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.DecodeJob.AbstractC4034b
    /* renamed from: c */
    public void mo23356c(AbstractC4083s<R> abstractC4083s, DataSource dataSource, boolean z) {
        synchronized (this) {
            this.f12841u = abstractC4083s;
            this.f12842v = dataSource;
            this.f12824C = z;
        }
        m23345o();
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.AbstractC4034b
    /* renamed from: d */
    public void mo23355d(DecodeJob<?> decodeJob) {
        m23350j().execute(decodeJob);
    }

    /* renamed from: e */
    void m23354e(AbstractC4402f abstractC4402f) {
        try {
            abstractC4402f.mo22587a(this.f12844x);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    @Override // com.bumptech.glide.p223p.p224l.C4385a.AbstractC4391f
    /* renamed from: f */
    public AbstractC4394c mo22684f() {
        return this.f12826f;
    }

    /* renamed from: g */
    void m23353g(AbstractC4402f abstractC4402f) {
        try {
            abstractC4402f.mo22586c(this.f12846z, this.f12842v, this.f12824C);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    /* renamed from: h */
    void m23352h() {
        if (m23347m()) {
            return;
        }
        this.f12823B = true;
        this.f12822A.m23448g();
        this.f12830j.mo23333c(this, this.f12836p);
    }

    /* renamed from: i */
    void m23351i() {
        C4076n<?> c4076n;
        synchronized (this) {
            this.f12826f.mo22676c();
            C4382j.m22722a(m23347m(), "Not yet complete!");
            int decrementAndGet = this.f12835o.decrementAndGet();
            C4382j.m22722a(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                c4076n = this.f12846z;
                m23343q();
            } else {
                c4076n = null;
            }
        }
        if (c4076n != null) {
            c4076n.m23328g();
        }
    }

    /* renamed from: k */
    void m23349k(int i) {
        C4076n<?> c4076n;
        synchronized (this) {
            C4382j.m22722a(m23347m(), "Not yet complete!");
            if (this.f12835o.getAndAdd(i) == 0 && (c4076n = this.f12846z) != null) {
                c4076n.m23331b();
            }
        }
    }

    /* renamed from: l */
    public C4067j<R> m23348l(AbstractC3999c abstractC3999c, boolean z, boolean z2, boolean z3, boolean z4) {
        synchronized (this) {
            this.f12836p = abstractC3999c;
            this.f12837q = z;
            this.f12838r = z2;
            this.f12839s = z3;
            this.f12840t = z4;
        }
        return this;
    }

    /* renamed from: n */
    void m23346n() {
        synchronized (this) {
            this.f12826f.mo22676c();
            if (this.f12823B) {
                m23343q();
            } else if (this.f12825e.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            } else {
                if (this.f12845y) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f12845y = true;
                AbstractC3999c abstractC3999c = this.f12836p;
                C4072e m23337e = this.f12825e.m23337e();
                m23349k(m23337e.size() + 1);
                this.f12830j.mo23334b(this, abstractC3999c, null);
                Iterator<C4071d> it = m23337e.iterator();
                while (it.hasNext()) {
                    C4071d next = it.next();
                    next.f12852b.execute(new RunnableC4068a(next.f12851a));
                }
                m23351i();
            }
        }
    }

    /* renamed from: o */
    void m23345o() {
        synchronized (this) {
            this.f12826f.mo22676c();
            if (this.f12823B) {
                this.f12841u.mo22858a();
                m23343q();
            } else if (this.f12825e.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            } else {
                if (this.f12843w) {
                    throw new IllegalStateException("Already have resource");
                }
                this.f12846z = this.f12829i.m23340a(this.f12841u, this.f12837q, this.f12836p, this.f12827g);
                this.f12843w = true;
                C4072e m23337e = this.f12825e.m23337e();
                m23349k(m23337e.size() + 1);
                this.f12830j.mo23334b(this, this.f12836p, this.f12846z);
                Iterator<C4071d> it = m23337e.iterator();
                while (it.hasNext()) {
                    C4071d next = it.next();
                    next.f12852b.execute(new RunnableC4069b(next.f12851a));
                }
                m23351i();
            }
        }
    }

    /* renamed from: p */
    public boolean m23344p() {
        return this.f12840t;
    }

    /* renamed from: r */
    public void m23342r(AbstractC4402f abstractC4402f) {
        boolean z;
        synchronized (this) {
            this.f12826f.mo22676c();
            this.f12825e.m23335i(abstractC4402f);
            if (this.f12825e.isEmpty()) {
                m23352h();
                if (!this.f12843w && !this.f12845y) {
                    z = false;
                    if (z && this.f12835o.get() == 0) {
                        m23343q();
                    }
                }
                z = true;
                if (z) {
                    m23343q();
                }
            }
        }
    }

    /* renamed from: s */
    public void m23341s(DecodeJob<R> decodeJob) {
        synchronized (this) {
            this.f12822A = decodeJob;
            (decodeJob.m23449E() ? this.f12831k : m23350j()).execute(decodeJob);
        }
    }
}
