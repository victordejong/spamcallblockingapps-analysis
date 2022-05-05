package p081h.p119d.p120a.p124s.p126i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.p126i.RunnableC5843i;
import p081h.p119d.p120a.p145w.AbstractC6058g;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.i.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/d.class */
public class C5834d implements RunnableC5843i.AbstractC5844a {

    /* renamed from: q */
    public static final C5836b f14712q = new C5836b();

    /* renamed from: r */
    public static final Handler f14713r = new Handler(Looper.getMainLooper(), new C5837c());

    /* renamed from: a */
    public final List<AbstractC6058g> f14714a;

    /* renamed from: b */
    public final C5836b f14715b;

    /* renamed from: c */
    public final AbstractC5838e f14716c;

    /* renamed from: d */
    public final AbstractC5806c f14717d;

    /* renamed from: e */
    public final ExecutorService f14718e;

    /* renamed from: f */
    public final ExecutorService f14719f;

    /* renamed from: g */
    public final boolean f14720g;

    /* renamed from: h */
    public boolean f14721h;

    /* renamed from: i */
    public AbstractC5848l<?> f14722i;

    /* renamed from: j */
    public boolean f14723j;

    /* renamed from: k */
    public Exception f14724k;

    /* renamed from: l */
    public boolean f14725l;

    /* renamed from: m */
    public Set<AbstractC6058g> f14726m;

    /* renamed from: n */
    public RunnableC5843i f14727n;

    /* renamed from: o */
    public C5841h<?> f14728o;

    /* renamed from: p */
    public volatile Future<?> f14729p;

    /* renamed from: h.d.a.s.i.d$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/d$b.class */
    public static class C5836b {
        /* renamed from: a */
        public <R> C5841h<R> m24260a(AbstractC5848l<R> lVar, boolean z) {
            return new C5841h<>(lVar, z);
        }
    }

    /* renamed from: h.d.a.s.i.d$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/d$c.class */
    public static class C5837c implements Handler.Callback {
        public C5837c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (1 != i && 2 != i) {
                return false;
            }
            C5834d dVar = (C5834d) message.obj;
            if (1 == message.what) {
                dVar.m24263c();
                return true;
            }
            dVar.m24267b();
            return true;
        }
    }

    public C5834d(AbstractC5806c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z, AbstractC5838e eVar) {
        this(cVar, executorService, executorService2, z, eVar, f14712q);
    }

    public C5834d(AbstractC5806c cVar, ExecutorService executorService, ExecutorService executorService2, boolean z, AbstractC5838e eVar, C5836b bVar) {
        this.f14714a = new ArrayList();
        this.f14717d = cVar;
        this.f14718e = executorService;
        this.f14719f = executorService2;
        this.f14720g = z;
        this.f14716c = eVar;
        this.f14715b = bVar;
    }

    /* renamed from: a */
    public void m24270a() {
        if (!this.f14725l && !this.f14723j && !this.f14721h) {
            this.f14727n.m24250a();
            Future<?> future = this.f14729p;
            if (future != null) {
                future.cancel(true);
            }
            this.f14721h = true;
            this.f14716c.mo24258a(this, this.f14717d);
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.RunnableC5843i.AbstractC5844a
    /* renamed from: a */
    public void mo24243a(RunnableC5843i iVar) {
        this.f14729p = this.f14719f.submit(iVar);
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6058g
    /* renamed from: a */
    public void mo23945a(AbstractC5848l<?> lVar) {
        this.f14722i = lVar;
        f14713r.obtainMessage(1, this).sendToTarget();
    }

    /* renamed from: a */
    public void m24268a(AbstractC6058g gVar) {
        C6096h.m23856b();
        if (this.f14723j) {
            gVar.mo23945a(this.f14728o);
        } else if (this.f14725l) {
            gVar.mo23944a(this.f14724k);
        } else {
            this.f14714a.add(gVar);
        }
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6058g
    /* renamed from: a */
    public void mo23944a(Exception exc) {
        this.f14724k = exc;
        f14713r.obtainMessage(2, this).sendToTarget();
    }

    /* renamed from: b */
    public final void m24267b() {
        if (!this.f14721h) {
            if (!this.f14714a.isEmpty()) {
                this.f14725l = true;
                this.f14716c.mo24259a(this.f14717d, (C5841h<?>) null);
                for (AbstractC6058g gVar : this.f14714a) {
                    if (!m24262c(gVar)) {
                        gVar.mo23944a(this.f14724k);
                    }
                }
                return;
            }
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        }
    }

    /* renamed from: b */
    public void m24265b(RunnableC5843i iVar) {
        this.f14727n = iVar;
        this.f14729p = this.f14718e.submit(iVar);
    }

    /* renamed from: b */
    public final void m24264b(AbstractC6058g gVar) {
        if (this.f14726m == null) {
            this.f14726m = new HashSet();
        }
        this.f14726m.add(gVar);
    }

    /* renamed from: c */
    public final void m24263c() {
        if (this.f14721h) {
            this.f14722i.mo24036b();
        } else if (!this.f14714a.isEmpty()) {
            this.f14728o = this.f14715b.m24260a(this.f14722i, this.f14720g);
            this.f14723j = true;
            this.f14728o.m24254c();
            this.f14716c.mo24259a(this.f14717d, this.f14728o);
            for (AbstractC6058g gVar : this.f14714a) {
                if (!m24262c(gVar)) {
                    this.f14728o.m24254c();
                    gVar.mo23945a(this.f14728o);
                }
            }
            this.f14728o.m24252e();
        } else {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        }
    }

    /* renamed from: c */
    public final boolean m24262c(AbstractC6058g gVar) {
        Set<AbstractC6058g> set = this.f14726m;
        return set != null && set.contains(gVar);
    }

    /* renamed from: d */
    public void m24261d(AbstractC6058g gVar) {
        C6096h.m23856b();
        if (this.f14723j || this.f14725l) {
            m24264b(gVar);
            return;
        }
        this.f14714a.remove(gVar);
        if (this.f14714a.isEmpty()) {
            m24270a();
        }
    }
}
