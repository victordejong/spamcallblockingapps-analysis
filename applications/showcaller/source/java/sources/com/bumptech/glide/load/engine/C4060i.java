package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.C3965e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.C4076n;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.p210y.AbstractC4114a;
import com.bumptech.glide.load.engine.p210y.AbstractC4127h;
import com.bumptech.glide.load.engine.p210y.C4117b;
import com.bumptech.glide.load.engine.p211z.ExecutorServiceC4136a;
import com.bumptech.glide.p223p.C4377f;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.p224l.C4385a;
import com.bumptech.glide.request.AbstractC4402f;
import java.util.Map;
import java.util.concurrent.Executor;
import p020b.p041h.p049k.AbstractC1594e;
/* renamed from: com.bumptech.glide.load.engine.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i.class */
public class C4060i implements AbstractC4073k, AbstractC4127h.AbstractC4128a, C4076n.AbstractC4077a {

    /* renamed from: a */
    private static final boolean f12795a = Log.isLoggable("Engine", 2);

    /* renamed from: b */
    private final C4079p f12796b;

    /* renamed from: c */
    private final C4075m f12797c;

    /* renamed from: d */
    private final AbstractC4127h f12798d;

    /* renamed from: e */
    private final C4063b f12799e;

    /* renamed from: f */
    private final C4086v f12800f;

    /* renamed from: g */
    private final C4065c f12801g;

    /* renamed from: h */
    private final C4061a f12802h;

    /* renamed from: i */
    private final C4040a f12803i;

    /* renamed from: com.bumptech.glide.load.engine.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$a.class */
    public static class C4061a {

        /* renamed from: a */
        final DecodeJob.AbstractC4037e f12804a;

        /* renamed from: b */
        final AbstractC1594e<DecodeJob<?>> f12805b = C4385a.m22692d(150, new C4062a());

        /* renamed from: c */
        private int f12806c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bumptech.glide.load.engine.i$a$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$a$a.class */
        public class C4062a implements C4385a.AbstractC4389d<DecodeJob<?>> {
            C4062a() {
                C4061a.this = r4;
            }

            /* renamed from: b */
            public DecodeJob<?> mo22687a() {
                C4061a c4061a = C4061a.this;
                return new DecodeJob<>(c4061a.f12804a, c4061a.f12805b);
            }
        }

        C4061a(DecodeJob.AbstractC4037e abstractC4037e) {
            this.f12804a = abstractC4037e;
        }

        /* renamed from: a */
        <R> DecodeJob<R> m23364a(C3965e c3965e, Object obj, C4074l c4074l, AbstractC3999c abstractC3999c, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, AbstractC4054h abstractC4054h, Map<Class<?>, AbstractC4148h<?>> map, boolean z, boolean z2, boolean z3, C4032e c4032e, DecodeJob.AbstractC4034b<R> abstractC4034b) {
            DecodeJob decodeJob = (DecodeJob) C4382j.m22719d(this.f12805b.mo22686a());
            int i3 = this.f12806c;
            this.f12806c = i3 + 1;
            return decodeJob.m23439p(c3965e, obj, c4074l, abstractC3999c, i, i2, cls, cls2, priority, abstractC4054h, map, z, z2, z3, c4032e, abstractC4034b, i3);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.i$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$b.class */
    public static class C4063b {

        /* renamed from: a */
        final ExecutorServiceC4136a f12808a;

        /* renamed from: b */
        final ExecutorServiceC4136a f12809b;

        /* renamed from: c */
        final ExecutorServiceC4136a f12810c;

        /* renamed from: d */
        final ExecutorServiceC4136a f12811d;

        /* renamed from: e */
        final AbstractC4073k f12812e;

        /* renamed from: f */
        final C4076n.AbstractC4077a f12813f;

        /* renamed from: g */
        final AbstractC1594e<C4067j<?>> f12814g = C4385a.m22692d(150, new C4064a());

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bumptech.glide.load.engine.i$b$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$b$a.class */
        public class C4064a implements C4385a.AbstractC4389d<C4067j<?>> {
            C4064a() {
                C4063b.this = r4;
            }

            /* renamed from: b */
            public C4067j<?> mo22687a() {
                C4063b c4063b = C4063b.this;
                return new C4067j<>(c4063b.f12808a, c4063b.f12809b, c4063b.f12810c, c4063b.f12811d, c4063b.f12812e, c4063b.f12813f, c4063b.f12814g);
            }
        }

        C4063b(ExecutorServiceC4136a executorServiceC4136a, ExecutorServiceC4136a executorServiceC4136a2, ExecutorServiceC4136a executorServiceC4136a3, ExecutorServiceC4136a executorServiceC4136a4, AbstractC4073k abstractC4073k, C4076n.AbstractC4077a abstractC4077a) {
            this.f12808a = executorServiceC4136a;
            this.f12809b = executorServiceC4136a2;
            this.f12810c = executorServiceC4136a3;
            this.f12811d = executorServiceC4136a4;
            this.f12812e = abstractC4073k;
            this.f12813f = abstractC4077a;
        }

        /* renamed from: a */
        <R> C4067j<R> m23362a(AbstractC3999c abstractC3999c, boolean z, boolean z2, boolean z3, boolean z4) {
            return ((C4067j) C4382j.m22719d(this.f12814g.mo22686a())).m23348l(abstractC3999c, z, z2, z3, z4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.i$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$c.class */
    public static class C4065c implements DecodeJob.AbstractC4037e {

        /* renamed from: a */
        private final AbstractC4114a.AbstractC4115a f12816a;

        /* renamed from: b */
        private volatile AbstractC4114a f12817b;

        C4065c(AbstractC4114a.AbstractC4115a abstractC4115a) {
            this.f12816a = abstractC4115a;
        }

        @Override // com.bumptech.glide.load.engine.DecodeJob.AbstractC4037e
        /* renamed from: a */
        public AbstractC4114a mo23360a() {
            if (this.f12817b == null) {
                synchronized (this) {
                    if (this.f12817b == null) {
                        this.f12817b = this.f12816a.mo23221a();
                    }
                    if (this.f12817b == null) {
                        this.f12817b = new C4117b();
                    }
                }
            }
            return this.f12817b;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.i$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$d.class */
    public class C4066d {

        /* renamed from: a */
        private final C4067j<?> f12818a;

        /* renamed from: b */
        private final AbstractC4402f f12819b;

        C4066d(AbstractC4402f abstractC4402f, C4067j<?> c4067j) {
            C4060i.this = r4;
            this.f12819b = abstractC4402f;
            this.f12818a = c4067j;
        }

        /* renamed from: a */
        public void m23359a() {
            synchronized (C4060i.this) {
                this.f12818a.m23342r(this.f12819b);
            }
        }
    }

    C4060i(AbstractC4127h abstractC4127h, AbstractC4114a.AbstractC4115a abstractC4115a, ExecutorServiceC4136a executorServiceC4136a, ExecutorServiceC4136a executorServiceC4136a2, ExecutorServiceC4136a executorServiceC4136a3, ExecutorServiceC4136a executorServiceC4136a4, C4079p c4079p, C4075m c4075m, C4040a c4040a, C4063b c4063b, C4061a c4061a, C4086v c4086v, boolean z) {
        this.f12798d = abstractC4127h;
        C4065c c4065c = new C4065c(abstractC4115a);
        this.f12801g = c4065c;
        c4040a = c4040a == null ? new C4040a(z) : c4040a;
        this.f12803i = c4040a;
        c4040a.m23408f(this);
        this.f12797c = c4075m == null ? new C4075m() : c4075m;
        this.f12796b = c4079p == null ? new C4079p() : c4079p;
        this.f12799e = c4063b == null ? new C4063b(executorServiceC4136a, executorServiceC4136a2, executorServiceC4136a3, executorServiceC4136a4, this, this) : c4063b;
        this.f12802h = c4061a == null ? new C4061a(c4065c) : c4061a;
        this.f12800f = c4086v == null ? new C4086v() : c4086v;
        abstractC4127h.mo23209e(this);
    }

    public C4060i(AbstractC4127h abstractC4127h, AbstractC4114a.AbstractC4115a abstractC4115a, ExecutorServiceC4136a executorServiceC4136a, ExecutorServiceC4136a executorServiceC4136a2, ExecutorServiceC4136a executorServiceC4136a3, ExecutorServiceC4136a executorServiceC4136a4, boolean z) {
        this(abstractC4127h, abstractC4115a, executorServiceC4136a, executorServiceC4136a2, executorServiceC4136a3, executorServiceC4136a4, null, null, null, null, null, null, z);
    }

    /* renamed from: e */
    private C4076n<?> m23372e(AbstractC3999c abstractC3999c) {
        AbstractC4083s<?> mo23210d = this.f12798d.mo23210d(abstractC3999c);
        return mo23210d == null ? null : mo23210d instanceof C4076n ? (C4076n) mo23210d : new C4076n<>(mo23210d, true, true, abstractC3999c, this);
    }

    /* renamed from: g */
    private C4076n<?> m23370g(AbstractC3999c abstractC3999c) {
        C4076n<?> m23409e = this.f12803i.m23409e(abstractC3999c);
        if (m23409e != null) {
            m23409e.m23331b();
        }
        return m23409e;
    }

    /* renamed from: h */
    private C4076n<?> m23369h(AbstractC3999c abstractC3999c) {
        C4076n<?> m23372e = m23372e(abstractC3999c);
        if (m23372e != null) {
            m23372e.m23331b();
            this.f12803i.m23413a(abstractC3999c, m23372e);
        }
        return m23372e;
    }

    /* renamed from: i */
    private C4076n<?> m23368i(C4074l c4074l, boolean z, long j) {
        if (!z) {
            return null;
        }
        C4076n<?> m23370g = m23370g(c4074l);
        if (m23370g != null) {
            if (f12795a) {
                m23367j("Loaded resource from active resources", j, c4074l);
            }
            return m23370g;
        }
        C4076n<?> m23369h = m23369h(c4074l);
        if (m23369h == null) {
            return null;
        }
        if (f12795a) {
            m23367j("Loaded resource from cache", j, c4074l);
        }
        return m23369h;
    }

    /* renamed from: j */
    private static void m23367j(String str, long j, AbstractC3999c abstractC3999c) {
        Log.v("Engine", str + " in " + C4377f.m22736a(j) + "ms, key: " + abstractC3999c);
    }

    /* renamed from: l */
    private <R> C4066d m23365l(C3965e c3965e, Object obj, AbstractC3999c abstractC3999c, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, AbstractC4054h abstractC4054h, Map<Class<?>, AbstractC4148h<?>> map, boolean z, boolean z2, C4032e c4032e, boolean z3, boolean z4, boolean z5, boolean z6, AbstractC4402f abstractC4402f, Executor executor, C4074l c4074l, long j) {
        C4067j<?> m23326a = this.f12796b.m23326a(c4074l, z6);
        if (m23326a != null) {
            m23326a.m23357b(abstractC4402f, executor);
            if (f12795a) {
                m23367j("Added to existing load", j, c4074l);
            }
            return new C4066d(abstractC4402f, m23326a);
        }
        C4067j<R> m23362a = this.f12799e.m23362a(c4074l, z3, z4, z5, z6);
        DecodeJob<R> m23364a = this.f12802h.m23364a(c3965e, obj, c4074l, abstractC3999c, i, i2, cls, cls2, priority, abstractC4054h, map, z, z2, z6, c4032e, m23362a);
        this.f12796b.m23324c(c4074l, m23362a);
        m23362a.m23357b(abstractC4402f, executor);
        m23362a.m23341s(m23364a);
        if (f12795a) {
            m23367j("Started new load", j, c4074l);
        }
        return new C4066d(abstractC4402f, m23362a);
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4127h.AbstractC4128a
    /* renamed from: a */
    public void mo23208a(AbstractC4083s<?> abstractC4083s) {
        this.f12800f.m23313a(abstractC4083s, true);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4073k
    /* renamed from: b */
    public void mo23334b(C4067j<?> c4067j, AbstractC3999c abstractC3999c, C4076n<?> c4076n) {
        synchronized (this) {
            if (c4076n != null) {
                if (c4076n.m23329f()) {
                    this.f12803i.m23413a(abstractC3999c, c4076n);
                }
            }
            this.f12796b.m23323d(abstractC3999c, c4067j);
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4073k
    /* renamed from: c */
    public void mo23333c(C4067j<?> c4067j, AbstractC3999c abstractC3999c) {
        synchronized (this) {
            this.f12796b.m23323d(abstractC3999c, c4067j);
        }
    }

    @Override // com.bumptech.glide.load.engine.C4076n.AbstractC4077a
    /* renamed from: d */
    public void mo23327d(AbstractC3999c abstractC3999c, C4076n<?> c4076n) {
        this.f12803i.m23410d(abstractC3999c);
        if (c4076n.m23329f()) {
            this.f12798d.mo23211c(abstractC3999c, c4076n);
        } else {
            this.f12800f.m23313a(c4076n, false);
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: f */
    public <R> C4066d m23371f(C3965e c3965e, Object obj, AbstractC3999c abstractC3999c, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, AbstractC4054h abstractC4054h, Map<Class<?>, AbstractC4148h<?>> map, boolean z, boolean z2, C4032e c4032e, boolean z3, boolean z4, boolean z5, boolean z6, AbstractC4402f abstractC4402f, Executor executor) {
        char m22735b = f12795a ? C4377f.m22735b() : (char) 0;
        C4074l m23332a = this.f12797c.m23332a(obj, abstractC3999c, i, i2, map, cls, cls2, c4032e);
        synchronized (this) {
            C4076n<?> m23368i = m23368i(m23332a, z3, m22735b);
            if (m23368i == null) {
                return m23365l(c3965e, obj, abstractC3999c, i, i2, cls, cls2, priority, abstractC4054h, map, z, z2, c4032e, z3, z4, z5, z6, abstractC4402f, executor, m23332a, m22735b);
            }
            abstractC4402f.mo22586c(m23368i, DataSource.MEMORY_CACHE, false);
            return null;
        }
    }

    /* renamed from: k */
    public void m23366k(AbstractC4083s<?> abstractC4083s) {
        if (abstractC4083s instanceof C4076n) {
            ((C4076n) abstractC4083s).m23328g();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }
}
