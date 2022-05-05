package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.ab */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ab.class */
public final class C8012ab<T> implements AbstractC8212kb<T> {

    /* renamed from: a */
    public final AbstractC8071e<?, ?> f18739a;

    /* renamed from: b */
    public final boolean f18740b;

    /* renamed from: c */
    public final AbstractC8068d9<?> f18741c;

    public C8012ab(AbstractC8071e<?, ?> eVar, AbstractC8068d9<?> d9Var, AbstractC8390ua uaVar) {
        this.f18739a = eVar;
        this.f18740b = d9Var.mo18618a(uaVar);
        this.f18741c = d9Var;
    }

    /* renamed from: a */
    public static <T> C8012ab<T> m18690a(AbstractC8071e<?, ?> eVar, AbstractC8068d9<?> d9Var, AbstractC8390ua uaVar) {
        return new C8012ab<>(eVar, d9Var, uaVar);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: a */
    public final int mo17982a(T t) {
        int hashCode = this.f18739a.mo18534b(t).hashCode();
        int i = hashCode;
        if (this.f18740b) {
            i = (hashCode * 53) + this.f18741c.mo18616a(t).hashCode();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: a */
    public final void mo17976a(T t, AbstractC8468z zVar) throws IOException {
        Iterator<Map.Entry<?, Object>> d = this.f18741c.mo18616a(t).m18567d();
        if (!d.hasNext()) {
            AbstractC8071e<?, ?> eVar = this.f18739a;
            eVar.mo18533b((AbstractC8071e<?, ?>) eVar.mo18534b(t), zVar);
            return;
        }
        ((AbstractC8127g9) d.next().getKey()).mo18340S();
        throw null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: a */
    public final boolean mo17975a(T t, T t2) {
        if (!this.f18739a.mo18534b(t).equals(this.f18739a.mo18534b(t2))) {
            return false;
        }
        if (this.f18740b) {
            return this.f18741c.mo18616a(t).equals(this.f18741c.mo18616a(t2));
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: b */
    public final int mo17972b(T t) {
        AbstractC8071e<?, ?> eVar = this.f18739a;
        int c = eVar.mo18531c(eVar.mo18534b(t)) + 0;
        int i = c;
        if (this.f18740b) {
            i = c + this.f18741c.mo18616a(t).m18565f();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: b */
    public final void mo17967b(T t, T t2) {
        C8236lb.m18327a(this.f18739a, t, t2);
        if (this.f18740b) {
            C8236lb.m18328a(this.f18741c, t, t2);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: c */
    public final boolean mo17964c(T t) {
        return this.f18741c.mo18616a(t).m18569c();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8212kb
    /* renamed from: d */
    public final void mo17960d(T t) {
        this.f18739a.mo18530d(t);
        this.f18741c.mo18613c(t);
    }
}
