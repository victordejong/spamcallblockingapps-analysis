package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.p036e.C0829c;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.engine.C3804p;
import com.bumptech.glide.load.engine.RunnableC3771h;
import com.bumptech.glide.load.engine.p120b.AbstractC3731a;
import com.bumptech.glide.load.engine.p120b.AbstractC3746h;
import com.bumptech.glide.load.engine.p120b.C3734b;
import com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a;
import com.bumptech.glide.p112e.AbstractC3606i;
import com.bumptech.glide.p116g.C3638f;
import com.bumptech.glide.p116g.p117a.C3621a;
import com.mopub.mobileads.resource.DrawableConstants;
/* renamed from: com.bumptech.glide.load.engine.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k.class */
public final class C3788k implements AbstractC3746h.AbstractC3747a, AbstractC3801m, C3804p.AbstractC3805a {

    /* renamed from: a */
    private static final boolean f14060a = Log.isLoggable("Engine", 2);

    /* renamed from: b */
    private final C3807r f14061b;

    /* renamed from: c */
    private final C3803o f14062c;

    /* renamed from: d */
    private final AbstractC3746h f14063d;

    /* renamed from: e */
    private final C3791b f14064e;

    /* renamed from: f */
    private final C3814x f14065f;

    /* renamed from: g */
    private final C3793c f14066g;

    /* renamed from: h */
    private final C3789a f14067h;

    /* renamed from: i */
    private final C3700a f14068i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$a.class */
    public static final class C3789a {

        /* renamed from: a */
        final RunnableC3771h.AbstractC3776d f14069a;

        /* renamed from: b */
        final C0829c.AbstractC0830a<RunnableC3771h<?>> f14070b = C3621a.m37609a(DrawableConstants.CtaButton.WIDTH_DIPS, new C3621a.AbstractC3625a<RunnableC3771h<?>>() { // from class: com.bumptech.glide.load.engine.k.a.1
            @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3625a
            /* renamed from: a */
            public final /* synthetic */ RunnableC3771h<?> mo37334a() {
                return new RunnableC3771h<>(C3789a.this.f14069a, C3789a.this.f14070b);
            }
        });

        /* renamed from: c */
        int f14071c;

        C3789a(RunnableC3771h.AbstractC3776d abstractC3776d) {
            this.f14069a = abstractC3776d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$b.class */
    public static final class C3791b {

        /* renamed from: a */
        final ExecutorServiceC3756a f14073a;

        /* renamed from: b */
        final ExecutorServiceC3756a f14074b;

        /* renamed from: c */
        final ExecutorServiceC3756a f14075c;

        /* renamed from: d */
        final ExecutorServiceC3756a f14076d;

        /* renamed from: e */
        final AbstractC3801m f14077e;

        /* renamed from: f */
        final C3804p.AbstractC3805a f14078f;

        /* renamed from: g */
        final C0829c.AbstractC0830a<C3795l<?>> f14079g = C3621a.m37609a(DrawableConstants.CtaButton.WIDTH_DIPS, new C3621a.AbstractC3625a<C3795l<?>>() { // from class: com.bumptech.glide.load.engine.k.b.1
            @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3625a
            /* renamed from: a */
            public final /* synthetic */ C3795l<?> mo37334a() {
                return new C3795l<>(C3791b.this.f14073a, C3791b.this.f14074b, C3791b.this.f14075c, C3791b.this.f14076d, C3791b.this.f14077e, C3791b.this.f14078f, C3791b.this.f14079g);
            }
        });

        C3791b(ExecutorServiceC3756a executorServiceC3756a, ExecutorServiceC3756a executorServiceC3756a2, ExecutorServiceC3756a executorServiceC3756a3, ExecutorServiceC3756a executorServiceC3756a4, AbstractC3801m abstractC3801m, C3804p.AbstractC3805a abstractC3805a) {
            this.f14073a = executorServiceC3756a;
            this.f14074b = executorServiceC3756a2;
            this.f14075c = executorServiceC3756a3;
            this.f14076d = executorServiceC3756a4;
            this.f14077e = abstractC3801m;
            this.f14078f = abstractC3805a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.k$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$c.class */
    public static final class C3793c implements RunnableC3771h.AbstractC3776d {

        /* renamed from: a */
        private final AbstractC3731a.AbstractC3732a f14081a;

        /* renamed from: b */
        private volatile AbstractC3731a f14082b;

        C3793c(AbstractC3731a.AbstractC3732a abstractC3732a) {
            this.f14081a = abstractC3732a;
        }

        @Override // com.bumptech.glide.load.engine.RunnableC3771h.AbstractC3776d
        /* renamed from: a */
        public final AbstractC3731a mo37364a() {
            if (this.f14082b == null) {
                synchronized (this) {
                    if (this.f14082b == null) {
                        this.f14082b = this.f14081a.mo37437a();
                    }
                    if (this.f14082b == null) {
                        this.f14082b = new C3734b();
                    }
                }
            }
            return this.f14082b;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.k$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$d.class */
    public final class C3794d {

        /* renamed from: a */
        public final C3795l<?> f14083a;

        /* renamed from: b */
        public final AbstractC3606i f14084b;

        C3794d(AbstractC3606i abstractC3606i, C3795l<?> c3795l) {
            C3788k.this = r4;
            this.f14084b = abstractC3606i;
            this.f14083a = c3795l;
        }
    }

    C3788k(AbstractC3746h abstractC3746h, AbstractC3731a.AbstractC3732a abstractC3732a, ExecutorServiceC3756a executorServiceC3756a, ExecutorServiceC3756a executorServiceC3756a2, ExecutorServiceC3756a executorServiceC3756a3, ExecutorServiceC3756a executorServiceC3756a4, C3807r c3807r, C3803o c3803o, C3700a c3700a, C3791b c3791b, C3789a c3789a, C3814x c3814x, boolean z) {
        this.f14063d = abstractC3746h;
        C3793c c3793c = new C3793c(abstractC3732a);
        this.f14066g = c3793c;
        C3700a c3700a2 = c3700a == null ? new C3700a(z) : c3700a;
        this.f14068i = c3700a2;
        synchronized (this) {
            synchronized (c3700a2) {
                c3700a2.f13863c = this;
            }
        }
        this.f14062c = c3803o == null ? new C3803o() : c3803o;
        this.f14061b = c3807r == null ? new C3807r() : c3807r;
        this.f14064e = c3791b == null ? new C3791b(executorServiceC3756a, executorServiceC3756a2, executorServiceC3756a3, executorServiceC3756a4, this, this) : c3791b;
        this.f14067h = c3789a == null ? new C3789a(c3793c) : c3789a;
        this.f14065f = c3814x == null ? new C3814x() : c3814x;
        abstractC3746h.mo37430a(this);
    }

    public C3788k(AbstractC3746h abstractC3746h, AbstractC3731a.AbstractC3732a abstractC3732a, ExecutorServiceC3756a executorServiceC3756a, ExecutorServiceC3756a executorServiceC3756a2, ExecutorServiceC3756a executorServiceC3756a3, ExecutorServiceC3756a executorServiceC3756a4, boolean z) {
        this(abstractC3746h, abstractC3732a, executorServiceC3756a, executorServiceC3756a2, executorServiceC3756a3, executorServiceC3756a4, null, null, null, null, null, null, z);
    }

    /* renamed from: a */
    public static void m37367a(AbstractC3811u<?> abstractC3811u) {
        if (abstractC3811u instanceof C3804p) {
            ((C3804p) abstractC3811u).m37343f();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    /* renamed from: a */
    private static void m37366a(String str, long j, AbstractC3818f abstractC3818f) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(C3638f.m37592a(j));
        sb.append("ms, key: ");
        sb.append(abstractC3818f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ed A[Catch: all -> 0x00e1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:10:0x0033, B:12:0x0043, B:17:0x0052, B:18:0x0061, B:21:0x0079, B:23:0x0081, B:24:0x008b, B:27:0x00a0, B:32:0x00cd, B:38:0x00ed, B:40:0x0107, B:42:0x0115, B:43:0x011e, B:43:0x011e, B:44:0x0121, B:45:0x012e, B:47:0x0272, B:48:0x027c, B:48:0x027c, B:49:0x027f, B:51:0x028a, B:55:0x028e), top: B:63:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x028d  */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <R> com.bumptech.glide.load.engine.C3788k.C3794d m37368a(com.bumptech.glide.C3571e r12, java.lang.Object r13, com.bumptech.glide.load.AbstractC3818f r14, int r15, int r16, java.lang.Class<?> r17, java.lang.Class<R> r18, com.bumptech.glide.EnumC3646h r19, com.bumptech.glide.load.engine.AbstractC3782j r20, java.util.Map<java.lang.Class<?>, com.bumptech.glide.load.AbstractC3826l<?>> r21, boolean r22, boolean r23, com.bumptech.glide.load.C3822h r24, boolean r25, boolean r26, boolean r27, boolean r28, com.bumptech.glide.p112e.AbstractC3606i r29, java.util.concurrent.Executor r30) {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.C3788k.m37368a(com.bumptech.glide.e, java.lang.Object, com.bumptech.glide.load.f, int, int, java.lang.Class, java.lang.Class, com.bumptech.glide.h, com.bumptech.glide.load.engine.j, java.util.Map, boolean, boolean, com.bumptech.glide.load.h, boolean, boolean, boolean, boolean, com.bumptech.glide.e.i, java.util.concurrent.Executor):com.bumptech.glide.load.engine.k$d");
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3801m
    /* renamed from: a */
    public final void mo37346a(C3795l<?> c3795l, AbstractC3818f abstractC3818f) {
        synchronized (this) {
            this.f14061b.m37341a(abstractC3818f, c3795l);
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3801m
    /* renamed from: a */
    public final void mo37345a(C3795l<?> c3795l, AbstractC3818f abstractC3818f, C3804p<?> c3804p) {
        synchronized (this) {
            if (c3804p != null) {
                if (c3804p.f14128a) {
                    this.f14068i.m37497a(abstractC3818f, c3804p);
                }
            }
            this.f14061b.m37341a(abstractC3818f, c3795l);
        }
    }

    @Override // com.bumptech.glide.load.engine.C3804p.AbstractC3805a
    /* renamed from: a */
    public final void mo37342a(AbstractC3818f abstractC3818f, C3804p<?> c3804p) {
        this.f14068i.m37498a(abstractC3818f);
        if (c3804p.f14128a) {
            this.f14063d.mo37428a(abstractC3818f, c3804p);
        } else {
            this.f14065f.m37332a(c3804p, false);
        }
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3746h.AbstractC3747a
    /* renamed from: b */
    public final void mo37365b(AbstractC3811u<?> abstractC3811u) {
        this.f14065f.m37332a(abstractC3811u, true);
    }
}
