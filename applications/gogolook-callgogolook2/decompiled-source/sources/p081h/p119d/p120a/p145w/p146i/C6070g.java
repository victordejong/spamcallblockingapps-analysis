package p081h.p119d.p120a.p145w.p146i;

import p081h.p119d.p120a.p145w.p146i.C6068f;
/* renamed from: h.d.a.w.i.g */
/* loaded from: classes-dex2jar.jar:h/d/a/w/i/g.class */
public class C6070g<R> implements AbstractC6065d<R> {

    /* renamed from: a */
    public final C6068f.AbstractC6069a f15117a;

    /* renamed from: b */
    public AbstractC6063c<R> f15118b;

    public C6070g(C6068f.AbstractC6069a aVar) {
        this.f15117a = aVar;
    }

    @Override // p081h.p119d.p120a.p145w.p146i.AbstractC6065d
    /* renamed from: a */
    public AbstractC6063c<R> mo23923a(boolean z, boolean z2) {
        if (z || !z2) {
            return C6066e.m23926b();
        }
        if (this.f15118b == null) {
            this.f15118b = new C6068f(this.f15117a);
        }
        return this.f15118b;
    }
}
