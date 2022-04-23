package p081h.p119d.p120a.p145w;
/* renamed from: h.d.a.w.h */
/* loaded from: classes-dex2jar.jar:h/d/a/w/h.class */
public class C6059h implements AbstractC6054d, AbstractC6053c {

    /* renamed from: a */
    public AbstractC6053c f15104a;

    /* renamed from: b */
    public AbstractC6053c f15105b;

    /* renamed from: c */
    public AbstractC6054d f15106c;

    public C6059h(AbstractC6054d dVar) {
        this.f15106c = dVar;
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: a */
    public void mo23943a() {
        if (!this.f15105b.isRunning()) {
            this.f15105b.mo23943a();
        }
        if (!this.f15104a.isRunning()) {
            this.f15104a.mo23943a();
        }
    }

    /* renamed from: a */
    public void m23941a(AbstractC6053c cVar, AbstractC6053c cVar2) {
        this.f15104a = cVar;
        this.f15105b = cVar2;
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6054d
    /* renamed from: a */
    public boolean mo23942a(AbstractC6053c cVar) {
        return m23934f() && cVar.equals(this.f15104a) && !mo23935e();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: b */
    public void mo23940b() {
        this.f15104a.mo23940b();
        this.f15105b.mo23940b();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6054d
    /* renamed from: b */
    public boolean mo23939b(AbstractC6053c cVar) {
        return m23933g() && (cVar.equals(this.f15104a) || !this.f15104a.mo23938c());
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6054d
    /* renamed from: c */
    public void mo23937c(AbstractC6053c cVar) {
        if (!cVar.equals(this.f15105b)) {
            AbstractC6054d dVar = this.f15106c;
            if (dVar != null) {
                dVar.mo23937c(this);
            }
            if (!this.f15105b.mo23936d()) {
                this.f15105b.clear();
            }
        }
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: c */
    public boolean mo23938c() {
        return this.f15104a.mo23938c() || this.f15105b.mo23938c();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public void clear() {
        this.f15105b.clear();
        this.f15104a.clear();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    /* renamed from: d */
    public boolean mo23936d() {
        return this.f15104a.mo23936d() || this.f15105b.mo23936d();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6054d
    /* renamed from: e */
    public boolean mo23935e() {
        return m23932h() || mo23938c();
    }

    /* renamed from: f */
    public final boolean m23934f() {
        AbstractC6054d dVar = this.f15106c;
        return dVar == null || dVar.mo23942a(this);
    }

    /* renamed from: g */
    public final boolean m23933g() {
        AbstractC6054d dVar = this.f15106c;
        return dVar == null || dVar.mo23939b(this);
    }

    /* renamed from: h */
    public final boolean m23932h() {
        AbstractC6054d dVar = this.f15106c;
        return dVar != null && dVar.mo23935e();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public boolean isCancelled() {
        return this.f15104a.isCancelled();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public boolean isRunning() {
        return this.f15104a.isRunning();
    }

    @Override // p081h.p119d.p120a.p145w.AbstractC6053c
    public void pause() {
        this.f15104a.pause();
        this.f15105b.pause();
    }
}
