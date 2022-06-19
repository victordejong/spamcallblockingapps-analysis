package p193e.p1451f.p1452a.p1457n.p1460o;

import android.os.SystemClock;
import android.util.Log;
import java.util.Collections;
import java.util.List;
import p193e.p1451f.p1452a.p1457n.AbstractC22261d;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1480t.C22619f;
/* renamed from: e.f.a.n.o.a0 */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/a0.class */
public class C22298a0 implements AbstractC22351g, AbstractC22274d.AbstractC22275a<Object>, AbstractC22351g.AbstractC22352a {

    /* renamed from: a */
    public final C22353h<?> f61952a;

    /* renamed from: b */
    public final AbstractC22351g.AbstractC22352a f61953b;

    /* renamed from: c */
    public int f61954c;

    /* renamed from: d */
    public C22343d f61955d;

    /* renamed from: e */
    public Object f61956e;

    /* renamed from: f */
    public volatile AbstractC22436n.C22437a<?> f61957f;

    /* renamed from: g */
    public C22349e f61958g;

    public C22298a0(C22353h<?> c22353h, AbstractC22351g.AbstractC22352a abstractC22352a) {
        this.f61952a = c22353h;
        this.f61953b = abstractC22352a;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g
    /* renamed from: a */
    public boolean mo8247a() {
        Object obj = this.f61956e;
        if (obj != null) {
            this.f61956e = null;
            int i = C22619f.f62640b;
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            try {
                AbstractC22261d<X> m8298e = this.f61952a.m8298e(obj);
                C22350f c22350f = new C22350f(m8298e, obj, this.f61952a.f62059i);
                AbstractC22263f abstractC22263f = this.f61957f.f62283a;
                C22353h<?> c22353h = this.f61952a;
                this.f61958g = new C22349e(abstractC22263f, c22353h.f62064n);
                c22353h.m8301b().mo8310a(this.f61958g, c22350f);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    String str = "Finished encoding source to cache, key: " + this.f61958g + ", data: " + obj + ", encoder: " + m8298e + ", duration: " + C22619f.m8031a(elapsedRealtimeNanos);
                }
                this.f61957f.f62285c.mo8219b();
                this.f61955d = new C22343d(Collections.singletonList(this.f61957f.f62283a), this.f61952a, this);
            } catch (Throwable th) {
                this.f61957f.f62285c.mo8219b();
                throw th;
            }
        }
        C22343d c22343d = this.f61955d;
        if (c22343d == null || !c22343d.mo8247a()) {
            this.f61955d = null;
            this.f61957f = null;
            boolean z = false;
            while (!z) {
                if (!(this.f61954c < this.f61952a.m8300c().size())) {
                    break;
                }
                List<AbstractC22436n.C22437a<?>> m8300c = this.f61952a.m8300c();
                int i2 = this.f61954c;
                this.f61954c = i2 + 1;
                this.f61957f = m8300c.get(i2);
                if (this.f61957f != null && (this.f61952a.f62066p.mo8276c(this.f61957f.f62285c.mo8218c()) || this.f61952a.m8296g(this.f61957f.f62285c.mo8220a()))) {
                    this.f61957f.f62285c.mo8217d(this.f61952a.f62065o, this);
                    z = true;
                }
            }
            return z;
        }
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g.AbstractC22352a
    /* renamed from: c */
    public void mo8294c(AbstractC22263f abstractC22263f, Exception exc, AbstractC22274d<?> abstractC22274d, EnumC22258a enumC22258a) {
        this.f61953b.mo8294c(abstractC22263f, exc, abstractC22274d, this.f61957f.f62285c.mo8218c());
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g
    public void cancel() {
        AbstractC22436n.C22437a<?> c22437a = this.f61957f;
        if (c22437a != null) {
            c22437a.f62285c.cancel();
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
    /* renamed from: e */
    public void mo8231e(Object obj) {
        AbstractC22364k abstractC22364k = this.f61952a.f62066p;
        if (obj == null || !abstractC22364k.mo8276c(this.f61957f.f62285c.mo8218c())) {
            this.f61953b.mo8290h(this.f61957f.f62283a, obj, this.f61957f.f62285c, this.f61957f.f62285c.mo8218c(), this.f61958g);
            return;
        }
        this.f61956e = obj;
        this.f61953b.mo8291g();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d.AbstractC22275a
    /* renamed from: f */
    public void mo8230f(Exception exc) {
        this.f61953b.mo8294c(this.f61958g, exc, this.f61957f.f62285c, this.f61957f.f62285c.mo8218c());
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g.AbstractC22352a
    /* renamed from: g */
    public void mo8291g() {
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g.AbstractC22352a
    /* renamed from: h */
    public void mo8290h(AbstractC22263f abstractC22263f, Object obj, AbstractC22274d<?> abstractC22274d, EnumC22258a enumC22258a, AbstractC22263f abstractC22263f2) {
        this.f61953b.mo8290h(abstractC22263f, obj, abstractC22274d, this.f61957f.f62285c.mo8218c(), abstractC22263f);
    }
}
