package p081h.p119d.p120a.p124s.p126i;

import android.util.Log;
import p081h.p119d.p120a.EnumC5779n;
import p081h.p119d.p120a.p124s.p126i.p129p.AbstractC5898b;
import p081h.p119d.p120a.p145w.AbstractC6058g;
/* renamed from: h.d.a.s.i.i */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/i.class */
public class RunnableC5843i implements Runnable, AbstractC5898b {

    /* renamed from: a */
    public final EnumC5779n f14749a;

    /* renamed from: b */
    public final AbstractC5844a f14750b;

    /* renamed from: c */
    public final C5823a<?, ?, ?> f14751c;

    /* renamed from: d */
    public EnumC5845b f14752d = EnumC5845b.CACHE;

    /* renamed from: e */
    public volatile boolean f14753e;

    /* renamed from: h.d.a.s.i.i$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/i$a.class */
    public interface AbstractC5844a extends AbstractC6058g {
        /* renamed from: a */
        void mo24243a(RunnableC5843i iVar);
    }

    /* renamed from: h.d.a.s.i.i$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/i$b.class */
    public enum EnumC5845b {
        CACHE,
        SOURCE
    }

    public RunnableC5843i(AbstractC5844a aVar, C5823a<?, ?, ?> aVar2, EnumC5779n nVar) {
        this.f14750b = aVar;
        this.f14751c = aVar2;
        this.f14749a = nVar;
    }

    /* renamed from: a */
    public void m24250a() {
        this.f14753e = true;
        this.f14751c.m24299a();
    }

    /* renamed from: a */
    public final void m24249a(AbstractC5848l lVar) {
        this.f14750b.mo23945a(lVar);
    }

    /* renamed from: a */
    public final void m24248a(Exception exc) {
        if (m24244e()) {
            this.f14752d = EnumC5845b.SOURCE;
            this.f14750b.mo24243a(this);
            return;
        }
        this.f14750b.mo23944a(exc);
    }

    /* renamed from: b */
    public final AbstractC5848l<?> m24247b() throws Exception {
        return m24244e() ? m24246c() : m24245d();
    }

    /* renamed from: c */
    public final AbstractC5848l<?> m24246c() throws Exception {
        AbstractC5848l<?> lVar;
        try {
            lVar = this.f14751c.m24290c();
        } catch (Exception e) {
            if (Log.isLoggable("EngineRunnable", 3)) {
                String str = "Exception decoding result from cache: " + e;
            }
            lVar = null;
        }
        AbstractC5848l<?> lVar2 = lVar;
        if (lVar == null) {
            lVar2 = this.f14751c.m24286e();
        }
        return lVar2;
    }

    /* renamed from: d */
    public final AbstractC5848l<?> m24245d() throws Exception {
        return this.f14751c.m24293b();
    }

    /* renamed from: e */
    public final boolean m24244e() {
        return this.f14752d == EnumC5845b.CACHE;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p129p.AbstractC5898b
    public int getPriority() {
        return this.f14749a.ordinal();
    }

    @Override // java.lang.Runnable
    public void run() {
        Exception e;
        if (!this.f14753e) {
            AbstractC5848l<?> lVar = null;
            try {
                lVar = m24247b();
                e = null;
            } catch (Exception e2) {
                e = e2;
                Log.isLoggable("EngineRunnable", 2);
            } catch (OutOfMemoryError e3) {
                Log.isLoggable("EngineRunnable", 2);
                e = new C5846j(e3);
            }
            if (this.f14753e) {
                if (lVar != null) {
                    lVar.mo24036b();
                }
            } else if (lVar == null) {
                m24248a(e);
            } else {
                m24249a(lVar);
            }
        }
    }
}
