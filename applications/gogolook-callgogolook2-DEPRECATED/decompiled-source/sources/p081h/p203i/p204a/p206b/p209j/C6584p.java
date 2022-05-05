package p081h.p203i.p204a.p206b.p209j;

import p081h.p203i.p204a.p206b.AbstractC6494c;
import p081h.p203i.p204a.p206b.AbstractC6496e;
import p081h.p203i.p204a.p206b.AbstractC6497f;
import p081h.p203i.p204a.p206b.AbstractC6499h;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p209j.AbstractC6578l;
/* renamed from: h.i.a.b.j.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/p.class */
public final class C6584p<T> implements AbstractC6497f<T> {

    /* renamed from: a */
    public final AbstractC6580m f16381a;

    /* renamed from: b */
    public final String f16382b;

    /* renamed from: c */
    public final C6493b f16383c;

    /* renamed from: d */
    public final AbstractC6496e<T, byte[]> f16384d;

    /* renamed from: e */
    public final AbstractC6585q f16385e;

    public C6584p(AbstractC6580m mVar, String str, C6493b bVar, AbstractC6496e<T, byte[]> eVar, AbstractC6585q qVar) {
        this.f16381a = mVar;
        this.f16382b = str;
        this.f16383c = bVar;
        this.f16384d = eVar;
        this.f16385e = qVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m22283a(Exception exc) {
    }

    @Override // p081h.p203i.p204a.p206b.AbstractC6497f
    /* renamed from: a */
    public void mo22285a(AbstractC6494c<T> cVar) {
        mo22284a(cVar, C6583o.m22286a());
    }

    @Override // p081h.p203i.p204a.p206b.AbstractC6497f
    /* renamed from: a */
    public void mo22284a(AbstractC6494c<T> cVar, AbstractC6499h hVar) {
        AbstractC6585q qVar = this.f16385e;
        AbstractC6578l.AbstractC6579a g = AbstractC6578l.m22303g();
        g.mo22298a(this.f16381a);
        g.mo22300a((AbstractC6494c<?>) cVar);
        g.mo22297a(this.f16382b);
        g.mo22299a((AbstractC6496e<?, byte[]>) this.f16384d);
        g.mo22301a(this.f16383c);
        qVar.mo22278a(g.mo22302a(), hVar);
    }
}
