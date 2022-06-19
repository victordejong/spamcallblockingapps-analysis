package com.criteo.publisher.p246f;

import com.criteo.publisher.AbstractC8336h;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.AbstractC8501q;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.p243c.AbstractC8259a;
import com.criteo.publisher.p246f.AbstractC8320s;
import com.criteo.publisher.p246f.AbstractC8326w;
import com.criteo.publisher.p246f.C8311q;
import com.criteo.publisher.p252k.C8368a;
import java.io.InterruptedIOException;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.f.q */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q.class */
public final class C8311q implements AbstractC8259a {

    /* renamed from: a */
    private final AbstractC8326w f29941a;

    /* renamed from: b */
    private final C8287ac f29942b;

    /* renamed from: c */
    private final AbstractC8336h f29943c;

    /* renamed from: d */
    private final C8507t f29944d;

    /* renamed from: e */
    private final C8368a f29945e;

    /* renamed from: f */
    private final Executor f29946f;

    /* renamed from: com.criteo.publisher.f.q$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$a.class */
    final class C8312a extends AbstractRunnableC8529v {
        C8312a() {
            C8311q.this = r4;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            C8287ac c8287ac = C8311q.this.f29942b;
            AbstractC8326w abstractC8326w = C8311q.this.f29941a;
            for (AbstractC8320s abstractC8320s : abstractC8326w.mo25854a()) {
                c8287ac.m25920a(abstractC8326w, abstractC8320s.mo25877f());
            }
        }
    }

    /* renamed from: com.criteo.publisher.f.q$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$b.class */
    final class C8313b extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ AbstractC8499o f29948a;

        C8313b(AbstractC8499o abstractC8499o) {
            C8311q.this = r4;
            this.f29948a = abstractC8499o;
        }

        /* renamed from: a */
        public static /* synthetic */ void m25890a(AbstractC8499o abstractC8499o, long j, AbstractC8320s.AbstractC8321a abstractC8321a) {
            abstractC8321a.mo25863b(abstractC8499o.mo25578b());
            abstractC8321a.mo25868a(Long.valueOf(j));
            abstractC8321a.mo25865b(Integer.valueOf(abstractC8499o.mo25577c()));
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            final long mo25381a = C8311q.this.f29943c.mo25381a();
            C8311q c8311q = C8311q.this;
            final AbstractC8499o abstractC8499o = this.f29948a;
            c8311q.m25899a(abstractC8499o, new AbstractC8326w.AbstractC8327a() { // from class: com.criteo.publisher.f._$$Lambda$q$b$TfEdGFYgW8Q4z0Eqlh7kC8A8r0I
                @Override // com.criteo.publisher.p246f.AbstractC8326w.AbstractC8327a
                /* renamed from: a */
                public final void mo25849a(AbstractC8320s.AbstractC8321a abstractC8321a) {
                    C8311q.C8313b.m25890a(AbstractC8499o.this, mo25381a, abstractC8321a);
                }
            });
        }
    }

    /* renamed from: com.criteo.publisher.f.q$c */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$c.class */
    final class C8314c extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ AbstractC8499o f29950a;

        /* renamed from: b */
        final /* synthetic */ C8502r f29951b;

        C8314c(AbstractC8499o abstractC8499o, C8502r c8502r) {
            C8311q.this = r4;
            this.f29950a = abstractC8499o;
            this.f29951b = c8502r;
        }

        /* renamed from: a */
        public static /* synthetic */ void m25889a(boolean z, long j, boolean z2, C8503s c8503s, AbstractC8320s.AbstractC8321a abstractC8321a) {
            if (z) {
                abstractC8321a.mo25864b(Long.valueOf(j));
                abstractC8321a.mo25860c(true);
            } else if (z2) {
                abstractC8321a.mo25860c(true);
            } else {
                abstractC8321a.mo25864b(Long.valueOf(j));
                abstractC8321a.mo25869a(c8503s.m25539l());
            }
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            final long mo25381a = C8311q.this.f29943c.mo25381a();
            for (AbstractC8501q abstractC8501q : this.f29950a.mo25574f()) {
                String mo25566a = abstractC8501q.mo25566a();
                final C8503s m25558a = this.f29951b.m25558a(mo25566a);
                boolean z = m25558a == null;
                boolean z2 = m25558a != null && !m25558a.m25537n();
                final boolean z3 = z;
                final boolean z4 = z2;
                C8311q.this.f29941a.mo25851a(mo25566a, new AbstractC8326w.AbstractC8327a() { // from class: com.criteo.publisher.f._$$Lambda$q$c$toVDnbVxH0MEMfnJ8vjbKAjUZ1c
                    @Override // com.criteo.publisher.p246f.AbstractC8326w.AbstractC8327a
                    /* renamed from: a */
                    public final void mo25849a(AbstractC8320s.AbstractC8321a abstractC8321a) {
                        C8311q.C8314c.m25889a(z3, mo25381a, z4, m25558a, abstractC8321a);
                    }
                });
                if (z || z2) {
                    C8311q.this.f29942b.m25920a(C8311q.this.f29941a, mo25566a);
                }
            }
        }
    }

    /* renamed from: com.criteo.publisher.f.q$d */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$d.class */
    final class C8315d extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ Exception f29953a;

        /* renamed from: b */
        final /* synthetic */ AbstractC8499o f29954b;

        C8315d(Exception exc, AbstractC8499o abstractC8499o) {
            C8311q.this = r4;
            this.f29953a = exc;
            this.f29954b = abstractC8499o;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            if (this.f29953a instanceof InterruptedIOException) {
                C8311q.m25904a(C8311q.this, this.f29954b);
            } else {
                C8311q.m25893b(C8311q.this, this.f29954b);
            }
            for (AbstractC8501q abstractC8501q : this.f29954b.mo25574f()) {
                C8311q.this.f29942b.m25920a(C8311q.this.f29941a, abstractC8501q.mo25566a());
            }
        }
    }

    /* renamed from: com.criteo.publisher.f.q$e */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$e.class */
    final class C8316e extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ C8503s f29956a;

        C8316e(C8503s c8503s) {
            C8311q.this = r4;
            this.f29956a = c8503s;
        }

        /* renamed from: a */
        public static /* synthetic */ void m25888a(boolean z, long j, AbstractC8320s.AbstractC8321a abstractC8321a) {
            if (z) {
                abstractC8321a.mo25861c(Long.valueOf(j));
            }
            abstractC8321a.mo25860c(true);
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            String m25545f = this.f29956a.m25545f();
            if (m25545f == null) {
                return;
            }
            boolean m25551a = this.f29956a.m25551a(C8311q.this.f29943c);
            final long mo25381a = C8311q.this.f29943c.mo25381a();
            final boolean z = !m25551a;
            C8311q.this.f29941a.mo25851a(m25545f, new AbstractC8326w.AbstractC8327a() { // from class: com.criteo.publisher.f._$$Lambda$q$e$6bUNLbkpliRhpH8rzWGmsF_WFQQ
                @Override // com.criteo.publisher.p246f.AbstractC8326w.AbstractC8327a
                /* renamed from: a */
                public final void mo25849a(AbstractC8320s.AbstractC8321a abstractC8321a) {
                    C8311q.C8316e.m25888a(z, mo25381a, abstractC8321a);
                }
            });
            C8311q.this.f29942b.m25920a(C8311q.this.f29941a, m25545f);
        }
    }

    /* renamed from: com.criteo.publisher.f.q$f */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$f.class */
    final class C8317f extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ C8503s f29958a;

        C8317f(C8503s c8503s) {
            C8311q.this = r4;
            this.f29958a = c8503s;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            String m25545f = this.f29958a.m25545f();
            if (m25545f != null && this.f29958a.m25537n()) {
                C8311q.this.f29941a.mo25851a(m25545f, (AbstractC8326w.AbstractC8327a) _$$Lambda$q$f$LrN_mEjE3TR_ihKu_9NkJfYdbsQ.INSTANCE);
            }
        }
    }

    public C8311q(AbstractC8326w abstractC8326w, C8287ac c8287ac, AbstractC8336h abstractC8336h, C8507t c8507t, C8368a c8368a, Executor executor) {
        this.f29941a = abstractC8326w;
        this.f29942b = c8287ac;
        this.f29943c = abstractC8336h;
        this.f29944d = c8507t;
        this.f29945e = c8368a;
        this.f29946f = executor;
    }

    /* renamed from: a */
    static /* synthetic */ void m25904a(C8311q c8311q, AbstractC8499o abstractC8499o) {
        c8311q.m25899a(abstractC8499o, (AbstractC8326w.AbstractC8327a) _$$Lambda$q$pYPT5o_HAsbZVcjDnE6oZT6BNsY.INSTANCE);
    }

    /* renamed from: a */
    public static /* synthetic */ void m25902a(AbstractC8320s.AbstractC8321a abstractC8321a) {
        abstractC8321a.mo25866a(true);
        abstractC8321a.mo25860c(true);
    }

    /* renamed from: a */
    public void m25899a(AbstractC8499o abstractC8499o, AbstractC8326w.AbstractC8327a abstractC8327a) {
        for (AbstractC8501q abstractC8501q : abstractC8499o.mo25574f()) {
            this.f29941a.mo25851a(abstractC8501q.mo25566a(), abstractC8327a);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m25893b(C8311q c8311q, AbstractC8499o abstractC8499o) {
        c8311q.m25899a(abstractC8499o, (AbstractC8326w.AbstractC8327a) _$$Lambda$q$ic2cEAcO27GMzYxBov1a120GeUY.INSTANCE);
    }

    /* renamed from: b */
    private boolean m25895b() {
        return !this.f29944d.m25524g() || !this.f29945e.m25775a();
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25906a() {
        if (m25895b()) {
            return;
        }
        this.f29946f.execute(new C8312a());
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25901a(C8498n c8498n, C8503s c8503s) {
        if (m25895b()) {
            return;
        }
        this.f29946f.execute(new C8316e(c8503s));
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25900a(AbstractC8499o abstractC8499o) {
        if (m25895b()) {
            return;
        }
        this.f29946f.execute(new C8313b(abstractC8499o));
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25898a(AbstractC8499o abstractC8499o, C8502r c8502r) {
        if (m25895b()) {
            return;
        }
        this.f29946f.execute(new C8314c(abstractC8499o, c8502r));
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25897a(AbstractC8499o abstractC8499o, Exception exc) {
        if (m25895b()) {
            return;
        }
        this.f29946f.execute(new C8315d(exc, abstractC8499o));
    }

    @Override // com.criteo.publisher.p243c.AbstractC8259a
    /* renamed from: a */
    public final void mo25896a(C8503s c8503s) {
        if (m25895b()) {
            return;
        }
        this.f29946f.execute(new C8317f(c8503s));
    }
}
