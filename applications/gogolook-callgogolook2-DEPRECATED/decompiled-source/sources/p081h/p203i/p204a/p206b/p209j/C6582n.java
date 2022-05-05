package p081h.p203i.p204a.p206b.p209j;

import java.util.Set;
import p081h.p203i.p204a.p206b.AbstractC6496e;
import p081h.p203i.p204a.p206b.AbstractC6497f;
import p081h.p203i.p204a.p206b.AbstractC6498g;
import p081h.p203i.p204a.p206b.C6493b;
/* renamed from: h.i.a.b.j.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/n.class */
public final class C6582n implements AbstractC6498g {

    /* renamed from: a */
    public final Set<C6493b> f16377a;

    /* renamed from: b */
    public final AbstractC6580m f16378b;

    /* renamed from: c */
    public final AbstractC6585q f16379c;

    public C6582n(Set<C6493b> set, AbstractC6580m mVar, AbstractC6585q qVar) {
        this.f16377a = set;
        this.f16378b = mVar;
        this.f16379c = qVar;
    }

    @Override // p081h.p203i.p204a.p206b.AbstractC6498g
    /* renamed from: a */
    public <T> AbstractC6497f<T> mo22287a(String str, Class<T> cls, C6493b bVar, AbstractC6496e<T, byte[]> eVar) {
        if (this.f16377a.contains(bVar)) {
            return new C6584p(this.f16378b, str, bVar, eVar, this.f16379c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f16377a));
    }
}
