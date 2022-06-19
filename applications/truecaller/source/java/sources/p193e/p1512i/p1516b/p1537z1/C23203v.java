package p193e.p1512i.p1516b.p1537z1;

import java.io.InterruptedIOException;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import p193e.p1512i.p1516b.AbstractC22939e2;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1523l2.C22977a;
import p193e.p1512i.p1516b.p1530s1.AbstractC23068a;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1533u2.AbstractC23127q;
import p193e.p1512i.p1516b.p1533u2.AbstractC23129s;
import p193e.p1512i.p1516b.p1533u2.C23126p;
import p193e.p1512i.p1516b.p1533u2.C23130t;
import p193e.p1512i.p1516b.p1533u2.C23131w;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1512i.p1516b.p1537z1.AbstractC23172b0;
import p193e.p1512i.p1516b.p1537z1.AbstractC23184g;
import p193e.p1512i.p1516b.p1537z1.AbstractC23211x;
import p193e.p1512i.p1516b.p1537z1.C23189h0;
/* renamed from: e.i.b.z1.v */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/v.class */
public class C23203v implements AbstractC23068a {

    /* renamed from: a */
    public final AbstractC23172b0 f64246a;

    /* renamed from: b */
    public final C23189h0 f64247b;

    /* renamed from: c */
    public final AbstractC22939e2 f64248c;

    /* renamed from: d */
    public final C23132x f64249d;

    /* renamed from: e */
    public final C22977a f64250e;

    /* renamed from: f */
    public final Executor f64251f;

    /* renamed from: e.i.b.z1.v$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/v$a.class */
    public class C23204a extends AbstractRunnableC22929c3 {
        public C23204a() {
            C23203v.this = r4;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            C23203v c23203v = C23203v.this;
            C23189h0 c23189h0 = c23203v.f64247b;
            AbstractC23172b0 abstractC23172b0 = c23203v.f64246a;
            Objects.requireNonNull(c23189h0);
            for (AbstractC23211x abstractC23211x : abstractC23172b0.mo7378a()) {
                c23189h0.m7415a(abstractC23172b0, abstractC23211x.mo7369d());
            }
        }
    }

    /* renamed from: e.i.b.z1.v$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/v$b.class */
    public class C23205b extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ AbstractC23127q f64253c;

        public C23205b(AbstractC23127q abstractC23127q) {
            C23203v.this = r4;
            this.f64253c = abstractC23127q;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            final long mo7355a = C23203v.this.f64248c.mo7355a();
            C23203v c23203v = C23203v.this;
            final AbstractC23127q abstractC23127q = this.f64253c;
            c23203v.m7381f(abstractC23127q, new AbstractC23172b0.AbstractC23173a() { // from class: e.i.b.z1.b
                @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0.AbstractC23173a
                /* renamed from: a */
                public final void mo7421a(AbstractC23211x.AbstractC23212a abstractC23212a) {
                    AbstractC23127q abstractC23127q2 = AbstractC23127q.this;
                    long j = mo7355a;
                    String mo7497b = abstractC23127q2.mo7497b();
                    AbstractC23184g.C23186b c23186b = (AbstractC23184g.C23186b) abstractC23212a;
                    c23186b.f64178g = mo7497b;
                    c23186b.f64172a = Long.valueOf(j);
                    c23186b.f64180i = Integer.valueOf(abstractC23127q2.mo7496c());
                }
            });
        }
    }

    /* renamed from: e.i.b.z1.v$c */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/v$c.class */
    public class C23206c extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ AbstractC23127q f64255c;

        /* renamed from: d */
        public final /* synthetic */ C23130t f64256d;

        public C23206c(AbstractC23127q abstractC23127q, C23130t c23130t) {
            C23203v.this = r4;
            this.f64255c = abstractC23127q;
            this.f64256d = c23130t;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            C23131w c23131w;
            final long mo7355a = C23203v.this.f64248c.mo7355a();
            for (AbstractC23129s abstractC23129s : this.f64255c.mo7493f()) {
                String mo7490a = abstractC23129s.mo7490a();
                Iterator<C23131w> it = this.f64256d.f64063a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        c23131w = null;
                        break;
                    }
                    c23131w = it.next();
                    if (mo7490a.equals(c23131w.m7477h())) {
                        break;
                    }
                }
                boolean z = c23131w == null;
                boolean z2 = c23131w != null && !c23131w.m7471n();
                final boolean z3 = z;
                final boolean z4 = z2;
                final C23131w c23131w2 = c23131w;
                C23203v.this.f64246a.mo7376c(mo7490a, new AbstractC23172b0.AbstractC23173a() { // from class: e.i.b.z1.c
                    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0.AbstractC23173a
                    /* renamed from: a */
                    public final void mo7421a(AbstractC23211x.AbstractC23212a abstractC23212a) {
                        boolean z5 = z3;
                        long j = mo7355a;
                        boolean z6 = z4;
                        C23131w c23131w3 = c23131w2;
                        if (z5) {
                            ((AbstractC23184g.C23186b) abstractC23212a).f64173b = Long.valueOf(j);
                            abstractC23212a.mo7358d(true);
                        } else if (z6) {
                            abstractC23212a.mo7358d(true);
                        } else {
                            AbstractC23184g.C23186b c23186b = (AbstractC23184g.C23186b) abstractC23212a;
                            c23186b.f64173b = Long.valueOf(j);
                            c23186b.f64179h = c23131w3.m7472m();
                        }
                    }
                });
                if (z || z2) {
                    C23203v c23203v = C23203v.this;
                    c23203v.f64247b.m7415a(c23203v.f64246a, mo7490a);
                }
            }
        }
    }

    /* renamed from: e.i.b.z1.v$d */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/v$d.class */
    public class C23207d extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ Exception f64258c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC23127q f64259d;

        public C23207d(Exception exc, AbstractC23127q abstractC23127q) {
            C23203v.this = r4;
            this.f64258c = exc;
            this.f64259d = abstractC23127q;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            if (this.f64258c instanceof InterruptedIOException) {
                C23203v.this.m7381f(this.f64259d, C23169a.f64145a);
            } else {
                C23203v.this.m7381f(this.f64259d, C23182f.f64159a);
            }
            for (AbstractC23129s abstractC23129s : this.f64259d.mo7493f()) {
                String mo7490a = abstractC23129s.mo7490a();
                C23203v c23203v = C23203v.this;
                c23203v.f64247b.m7415a(c23203v.f64246a, mo7490a);
            }
        }
    }

    /* renamed from: e.i.b.z1.v$e */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/v$e.class */
    public class C23208e extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ C23131w f64261c;

        public C23208e(C23131w c23131w) {
            C23203v.this = r4;
            this.f64261c = c23131w;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            String m7477h = this.f64261c.m7477h();
            if (m7477h == null) {
                return;
            }
            boolean m7481d = this.f64261c.m7481d(C23203v.this.f64248c);
            final long mo7355a = C23203v.this.f64248c.mo7355a();
            final boolean z = !m7481d;
            C23203v.this.f64246a.mo7376c(m7477h, new AbstractC23172b0.AbstractC23173a() { // from class: e.i.b.z1.d
                @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0.AbstractC23173a
                /* renamed from: a */
                public final void mo7421a(AbstractC23211x.AbstractC23212a abstractC23212a) {
                    boolean z2 = z;
                    long j = mo7355a;
                    if (z2) {
                        ((AbstractC23184g.C23186b) abstractC23212a).f64176e = Long.valueOf(j);
                    }
                    abstractC23212a.mo7358d(true);
                }
            });
            C23203v c23203v = C23203v.this;
            C23189h0 c23189h0 = c23203v.f64247b;
            AbstractC23172b0 abstractC23172b0 = c23203v.f64246a;
            Objects.requireNonNull(c23189h0);
            abstractC23172b0.mo7377b(m7477h, new C23189h0.C23190a());
        }
    }

    /* renamed from: e.i.b.z1.v$f */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/v$f.class */
    public class C23209f extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final /* synthetic */ C23131w f64263c;

        public C23209f(C23131w c23131w) {
            C23203v.this = r4;
            this.f64263c = c23131w;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            String m7477h = this.f64263c.m7477h();
            if (m7477h != null && this.f64263c.m7471n()) {
                C23203v.this.f64246a.mo7376c(m7477h, C23180e.f64158a);
            }
        }
    }

    public C23203v(AbstractC23172b0 abstractC23172b0, C23189h0 c23189h0, AbstractC22939e2 abstractC22939e2, C23132x c23132x, C22977a c22977a, Executor executor) {
        this.f64246a = abstractC23172b0;
        this.f64247b = c23189h0;
        this.f64248c = abstractC22939e2;
        this.f64249d = c23132x;
        this.f64250e = c22977a;
        this.f64251f = executor;
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: a */
    public void mo7387a() {
        if (m7380g()) {
            return;
        }
        this.f64251f.execute(new C23204a());
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: a */
    public void mo7386a(C23131w c23131w) {
        if (m7380g()) {
            return;
        }
        this.f64251f.execute(new C23209f(c23131w));
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: b */
    public void mo7385b(C23126p c23126p, C23131w c23131w) {
        if (m7380g()) {
            return;
        }
        this.f64251f.execute(new C23208e(c23131w));
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: c */
    public void mo7384c(AbstractC23127q abstractC23127q, Exception exc) {
        if (m7380g()) {
            return;
        }
        this.f64251f.execute(new C23207d(exc, abstractC23127q));
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: d */
    public void mo7383d(AbstractC23127q abstractC23127q, C23130t c23130t) {
        if (m7380g()) {
            return;
        }
        this.f64251f.execute(new C23206c(abstractC23127q, c23130t));
    }

    @Override // p193e.p1512i.p1516b.p1530s1.AbstractC23068a
    /* renamed from: e */
    public void mo7382e(AbstractC23127q abstractC23127q) {
        if (m7380g()) {
            return;
        }
        this.f64251f.execute(new C23205b(abstractC23127q));
    }

    /* renamed from: f */
    public final void m7381f(AbstractC23127q abstractC23127q, AbstractC23172b0.AbstractC23173a abstractC23173a) {
        for (AbstractC23129s abstractC23129s : abstractC23127q.mo7493f()) {
            this.f64246a.mo7376c(abstractC23129s.mo7490a(), abstractC23173a);
        }
    }

    /* renamed from: g */
    public final boolean m7380g() {
        boolean z = false;
        if (!((Boolean) C23088k.m7561a(this.f64249d.f64080b.mo7512g(), Boolean.TRUE)).booleanValue() || !this.f64250e.f63701a.getBoolean("CRTO_ConsentGiven", false)) {
            z = true;
        }
        return z;
    }
}
