package p278w8;

import p024b9.C0740a;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
/* renamed from: w8.p */
/* loaded from: classes2-dex2jar.jar:w8/p.class */
public class C4789p<TModel> extends AbstractC4774e<TModel> {

    /* renamed from: c */
    public C4785l f14716c;

    /* renamed from: d */
    public AbstractC4654a f14717d;

    public C4789p(AbstractC4654a abstractC4654a, Class<TModel> cls) {
        super(cls);
        this.f14717d = abstractC4654a;
        C4785l m468j = C4785l.m468j();
        m468j.f14711i = true;
        m468j.f14710h = true;
        this.f14716c = m468j;
    }

    @Override // p278w8.AbstractC4773d, p278w8.AbstractC4770a
    /* renamed from: a */
    public C0740a.EnumC0741a mo459a() {
        return C0740a.EnumC0741a.UPDATE;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        C4655b c4655b = new C4655b(this.f14717d.mo238b());
        c4655b.f14350a.append((Object) "SET ");
        c4655b.f14350a.append((Object) this.f14716c.mo238b());
        c4655b.m678c();
        return c4655b.mo238b();
    }

    @Override // p278w8.AbstractC4774e
    /* renamed from: m */
    public AbstractC4654a mo461m() {
        return this.f14717d;
    }
}
