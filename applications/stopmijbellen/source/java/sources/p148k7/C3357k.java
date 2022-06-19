package p148k7;

import androidx.emoji2.text.RunnableC0375k;
import com.google.android.gms.common.api.Api;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3517f;
import p293y2.C4999p;
import p293y2.RunnableC5000q;
/* renamed from: k7.k */
/* loaded from: classes2-dex2jar.jar:k7/k.class */
public class C3357k implements AbstractC3362o {

    /* renamed from: a */
    public AbstractC3362o f11367a;

    /* renamed from: b */
    public boolean f11368b;

    /* renamed from: d */
    public AbstractC3517f f11370d;

    /* renamed from: f */
    public boolean f11372f;

    /* renamed from: c */
    public final C3358l f11369c = new C3358l();

    /* renamed from: e */
    public int f11371e = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    public C3357k(AbstractC3362o abstractC3362o) {
        this.f11367a = abstractC3362o;
        abstractC3362o.mo1478m(new C4999p(this));
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: a */
    public C3343h mo940a() {
        return this.f11367a.mo940a();
    }

    /* renamed from: b */
    public void mo1268b(C3358l c3358l) {
    }

    /* renamed from: c */
    public final void m2353c() {
        boolean m2343j;
        AbstractC3517f abstractC3517f;
        if (this.f11368b) {
            return;
        }
        synchronized (this.f11369c) {
            this.f11367a.mo1479k(this.f11369c);
            m2343j = this.f11369c.m2343j();
        }
        if (m2343j && this.f11372f) {
            this.f11367a.mo1267j();
        }
        if (!m2343j || (abstractC3517f = this.f11370d) == null) {
            return;
        }
        abstractC3517f.mo148f();
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: g */
    public void mo1480g(AbstractC3510a abstractC3510a) {
        this.f11367a.mo1480g(abstractC3510a);
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: j */
    public void mo1267j() {
        if (mo940a().f11338e != Thread.currentThread()) {
            mo940a().m2359g(new RunnableC5000q(this, 1));
            return;
        }
        synchronized (this.f11369c) {
            if (this.f11369c.m2344i()) {
                this.f11372f = true;
            } else {
                this.f11367a.mo1267j();
            }
        }
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: k */
    public void mo1479k(C3358l c3358l) {
        if (mo940a().f11338e == Thread.currentThread()) {
            mo1268b(c3358l);
            if (!(this.f11369c.m2344i() || this.f11368b)) {
                this.f11367a.mo1479k(c3358l);
            }
            synchronized (this.f11369c) {
                c3358l.m2349d(this.f11369c, c3358l.f11382c);
            }
            return;
        }
        synchronized (this.f11369c) {
            if (this.f11369c.f11382c >= this.f11371e) {
                return;
            }
            mo1268b(c3358l);
            c3358l.m2349d(this.f11369c, c3358l.f11382c);
            mo940a().m2359g(new RunnableC0375k(this, 4));
        }
    }

    @Override // p148k7.AbstractC3362o
    /* renamed from: m */
    public void mo1478m(AbstractC3517f abstractC3517f) {
        this.f11370d = abstractC3517f;
    }
}
