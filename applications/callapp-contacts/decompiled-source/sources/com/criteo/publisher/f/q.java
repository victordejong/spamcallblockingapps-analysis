package com.criteo.publisher.f;

import com.criteo.publisher.f.q;
import com.criteo.publisher.f.s;
import com.criteo.publisher.f.w;
import com.criteo.publisher.h;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.t;
import com.criteo.publisher.v;
import java.io.InterruptedIOException;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q.class */
public final class q implements com.criteo.publisher.c.a {

    /* renamed from: a  reason: collision with root package name */
    private final w f17299a;

    /* renamed from: b  reason: collision with root package name */
    private final ac f17300b;

    /* renamed from: c  reason: collision with root package name */
    private final h f17301c;

    /* renamed from: d  reason: collision with root package name */
    private final t f17302d;
    private final com.criteo.publisher.k.a e;
    private final Executor f;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$a.class */
    final class a extends v {
        a() {
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            ac acVar = q.this.f17300b;
            w wVar = q.this.f17299a;
            for (s sVar : wVar.a()) {
                acVar.a(wVar, sVar.f());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$b.class */
    final class b extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o f17304a;

        b(o oVar) {
            this.f17304a = oVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(o oVar, long j, s.a aVar) {
            aVar.b(oVar.b());
            aVar.a(Long.valueOf(j));
            aVar.b(Integer.valueOf(oVar.c()));
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            final long a2 = q.this.f17301c.a();
            q qVar = q.this;
            final o oVar = this.f17304a;
            qVar.a(oVar, new w.a() { // from class: com.criteo.publisher.f._$$Lambda$q$b$TfEdGFYgW8Q4z0Eqlh7kC8A8r0I
                @Override // com.criteo.publisher.f.w.a
                public final void a(s.a aVar) {
                    q.b.a(o.this, a2, aVar);
                }
            });
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$c.class */
    final class c extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ o f17306a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ r f17307b;

        c(o oVar, r rVar) {
            this.f17306a = oVar;
            this.f17307b = rVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(boolean z, long j, boolean z2, com.criteo.publisher.model.s sVar, s.a aVar) {
            if (z) {
                aVar.b(Long.valueOf(j));
                aVar.c(true);
            } else if (z2) {
                aVar.c(true);
            } else {
                aVar.b(Long.valueOf(j));
                aVar.a(sVar.l());
            }
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            final long a2 = q.this.f17301c.a();
            for (com.criteo.publisher.model.q qVar : this.f17306a.f()) {
                String a3 = qVar.a();
                final com.criteo.publisher.model.s a4 = this.f17307b.a(a3);
                final boolean z = a4 == null;
                final boolean z2 = a4 != null && !a4.n();
                q.this.f17299a.a(a3, new w.a() { // from class: com.criteo.publisher.f._$$Lambda$q$c$toVDnbVxH0MEMfnJ8vjbKAjUZ1c
                    @Override // com.criteo.publisher.f.w.a
                    public final void a(s.a aVar) {
                        q.c.a(z, a2, z2, a4, aVar);
                    }
                });
                if (z || z2) {
                    q.this.f17300b.a(q.this.f17299a, a3);
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$d.class */
    final class d extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Exception f17309a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o f17310b;

        d(Exception exc, o oVar) {
            this.f17309a = exc;
            this.f17310b = oVar;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            if (this.f17309a instanceof InterruptedIOException) {
                q.a(q.this, this.f17310b);
            } else {
                q.b(q.this, this.f17310b);
            }
            for (com.criteo.publisher.model.q qVar : this.f17310b.f()) {
                q.this.f17300b.a(q.this.f17299a, qVar.a());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$e.class */
    final class e extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.s f17312a;

        e(com.criteo.publisher.model.s sVar) {
            this.f17312a = sVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(boolean z, long j, s.a aVar) {
            if (z) {
                aVar.c(Long.valueOf(j));
            }
            aVar.c(true);
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            String f = this.f17312a.f();
            if (f != null) {
                boolean a2 = this.f17312a.a(q.this.f17301c);
                final long a3 = q.this.f17301c.a();
                final boolean z = !a2;
                q.this.f17299a.a(f, new w.a() { // from class: com.criteo.publisher.f._$$Lambda$q$e$6bUNLbkpliRhpH8rzWGmsF_WFQQ
                    @Override // com.criteo.publisher.f.w.a
                    public final void a(s.a aVar) {
                        q.e.a(z, a3, aVar);
                    }
                });
                q.this.f17300b.a(q.this.f17299a, f);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/q$f.class */
    final class f extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.s f17314a;

        f(com.criteo.publisher.model.s sVar) {
            this.f17314a = sVar;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            String f = this.f17314a.f();
            if (f != null && this.f17314a.n()) {
                q.this.f17299a.a(f, (w.a) _$$Lambda$q$f$LrN_mEjE3TR_ihKu_9NkJfYdbsQ.INSTANCE);
            }
        }
    }

    public q(w wVar, ac acVar, h hVar, t tVar, com.criteo.publisher.k.a aVar, Executor executor) {
        this.f17299a = wVar;
        this.f17300b = acVar;
        this.f17301c = hVar;
        this.f17302d = tVar;
        this.e = aVar;
        this.f = executor;
    }

    static /* synthetic */ void a(q qVar, o oVar) {
        qVar.a(oVar, (w.a) _$$Lambda$q$pYPT5o_HAsbZVcjDnE6oZT6BNsY.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s.a aVar) {
        aVar.a(true);
        aVar.c(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(o oVar, w.a aVar) {
        for (com.criteo.publisher.model.q qVar : oVar.f()) {
            this.f17299a.a(qVar.a(), aVar);
        }
    }

    static /* synthetic */ void b(q qVar, o oVar) {
        qVar.a(oVar, (w.a) _$$Lambda$q$ic2cEAcO27GMzYxBov1a120GeUY.INSTANCE);
    }

    private boolean b() {
        return !this.f17302d.g() || !this.e.a();
    }

    @Override // com.criteo.publisher.c.a
    public final void a() {
        if (!b()) {
            this.f.execute(new a());
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(n nVar, com.criteo.publisher.model.s sVar) {
        if (!b()) {
            this.f.execute(new e(sVar));
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar) {
        if (!b()) {
            this.f.execute(new b(oVar));
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar, r rVar) {
        if (!b()) {
            this.f.execute(new c(oVar, rVar));
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(o oVar, Exception exc) {
        if (!b()) {
            this.f.execute(new d(exc, oVar));
        }
    }

    @Override // com.criteo.publisher.c.a
    public final void a(com.criteo.publisher.model.s sVar) {
        if (!b()) {
            this.f.execute(new f(sVar));
        }
    }
}
