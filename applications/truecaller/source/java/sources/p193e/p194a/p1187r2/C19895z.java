package p193e.p194a.p1187r2;
/* renamed from: e.a.r2.z */
/* loaded from: classes5-dex2jar.jar:e/a/r2/z.class */
public class C19895z<T, R> extends AbstractC19891x<R> implements AbstractC19888u<T, R>, AbstractC19844a, AbstractC19851d0<R> {

    /* renamed from: a */
    public final AbstractC19890w f56325a;

    /* renamed from: b */
    public final AbstractC19888u<T, R> f56326b;

    /* renamed from: c */
    public AbstractC19868j f56327c = null;

    /* renamed from: d */
    public volatile AbstractC19851d0<R> f56328d = null;

    /* renamed from: e.a.r2.z$a */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/z$a.class */
    public static class C19896a<R> implements AbstractC19851d0<R> {

        /* renamed from: b */
        public static final Object f56329b = new Object();

        /* renamed from: a */
        public volatile Object f56330a = f56329b;

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(R r) {
            synchronized (this) {
                this.f56330a = r;
                notifyAll();
            }
        }
    }

    public C19895z(AbstractC19890w abstractC19890w, AbstractC19888u<T, R> abstractC19888u) {
        this.f56325a = abstractC19890w;
        this.f56326b = abstractC19888u;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19879p
    /* renamed from: a */
    public C19850d mo11833a() {
        return this.f56326b.mo11833a();
    }

    @Override // p193e.p194a.p1187r2.AbstractC19844a
    /* renamed from: b */
    public void mo11832b() {
        this.f56328d = null;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: c */
    public R mo11831c() throws InterruptedException {
        R r;
        C19896a c19896a = new C19896a();
        this.f56328d = c19896a;
        this.f56325a.mo11835a(this);
        synchronized (c19896a) {
            while (true) {
                r = (R) c19896a.f56330a;
                if (r == C19896a.f56329b) {
                    c19896a.wait();
                } else {
                    c19896a.f56330a = null;
                }
            }
        }
        return r;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19888u
    /* renamed from: d */
    public AbstractC19891x<R> mo10183d(T t) {
        AbstractC19868j abstractC19868j;
        AbstractC19891x<R> mo10183d = this.f56326b.mo10183d(t);
        if (mo10183d != null) {
            AbstractC19851d0<R> abstractC19851d0 = this.f56328d;
            if (abstractC19851d0 == null || (abstractC19868j = this.f56327c) == null) {
                this.f56328d = null;
                mo10183d.mo11829f(abstractC19851d0);
            } else {
                mo10183d.mo11830e(abstractC19868j, this);
            }
        }
        this.f56327c = null;
        return null;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: e */
    public AbstractC19844a mo11830e(AbstractC19868j abstractC19868j, AbstractC19851d0<R> abstractC19851d0) {
        this.f56327c = abstractC19868j;
        this.f56328d = abstractC19851d0;
        this.f56325a.mo11835a(this);
        return this;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: f */
    public AbstractC19844a mo11829f(AbstractC19851d0<R> abstractC19851d0) {
        this.f56328d = abstractC19851d0;
        this.f56325a.mo11835a(this);
        return this;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: g */
    public void mo11828g() {
        this.f56325a.mo11835a(this);
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(R r) {
        AbstractC19851d0<R> abstractC19851d0 = this.f56328d;
        this.f56328d = null;
        if (abstractC19851d0 != null) {
            abstractC19851d0.onResult(r);
            return;
        }
        throw new C19853e0();
    }

    public String toString() {
        return this.f56326b.toString();
    }
}
