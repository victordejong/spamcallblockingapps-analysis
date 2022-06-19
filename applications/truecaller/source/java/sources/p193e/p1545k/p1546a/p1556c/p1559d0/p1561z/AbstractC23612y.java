package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
/* renamed from: e.k.a.c.d0.z.y */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/y.class */
public abstract class AbstractC23612y<T> extends AbstractC23541b0<T> implements AbstractC23474i {

    /* renamed from: d */
    public final AbstractC23698i f65469d;

    /* renamed from: e */
    public final AbstractC23491w f65470e;

    /* renamed from: f */
    public final AbstractC23709e f65471f;

    /* renamed from: g */
    public final AbstractC23700j<Object> f65472g;

    public AbstractC23612y(AbstractC23698i abstractC23698i, AbstractC23491w abstractC23491w, AbstractC23709e abstractC23709e, AbstractC23700j<?> abstractC23700j) {
        super(abstractC23698i);
        this.f65470e = abstractC23491w;
        this.f65469d = abstractC23698i;
        this.f65472g = abstractC23700j;
        this.f65471f = abstractC23709e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23700j<?> abstractC23700j = this.f65472g;
        AbstractC23700j<?> m6461s = abstractC23700j == null ? abstractC23632g.m6461s(this.f65469d.mo5953a(), abstractC23462d) : abstractC23632g.m6499G(abstractC23700j, abstractC23462d, this.f65469d.mo5953a());
        AbstractC23709e abstractC23709e = this.f65471f;
        AbstractC23709e abstractC23709e2 = abstractC23709e;
        if (abstractC23709e != null) {
            abstractC23709e2 = abstractC23709e.mo6204f(abstractC23462d);
        }
        if (m6461s == this.f65472g && abstractC23709e2 == this.f65471f) {
            return this;
        }
        C23551e c23551e = (C23551e) this;
        return new C23551e(c23551e.f65469d, c23551e.f65470e, abstractC23709e2, m6461s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public T mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        AbstractC23491w abstractC23491w = this.f65470e;
        if (abstractC23491w != null) {
            return (T) mo6231e(abstractC23376j, abstractC23632g, abstractC23491w.mo6596v(abstractC23632g));
        }
        AbstractC23709e abstractC23709e = this.f65471f;
        return (T) new AtomicReference(abstractC23709e == null ? this.f65472g.mo6232d(abstractC23376j, abstractC23632g) : this.f65472g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e));
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.util.concurrent.atomic.AtomicReference] */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public T mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, T t) throws IOException {
        Object obj;
        if (this.f65472g.mo6220p(abstractC23632g.f65501c).equals(Boolean.FALSE) || this.f65471f != null) {
            AbstractC23709e abstractC23709e = this.f65471f;
            obj = abstractC23709e == null ? this.f65472g.mo6232d(abstractC23376j, abstractC23632g) : this.f65472g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
        } else {
            Object obj2 = ((AtomicReference) t).get();
            if (obj2 == null) {
                AbstractC23709e abstractC23709e2 = this.f65471f;
                return (T) new AtomicReference(abstractC23709e2 == null ? this.f65472g.mo6232d(abstractC23376j, abstractC23632g) : this.f65472g.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e2));
            }
            obj = this.f65472g.mo6231e(abstractC23376j, abstractC23632g, obj2);
        }
        ?? r0 = (T) ((AtomicReference) t);
        r0.set(obj);
        return r0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
            return mo6233c(abstractC23632g);
        }
        AbstractC23709e abstractC23709e2 = this.f65471f;
        return abstractC23709e2 == null ? mo6232d(abstractC23376j, abstractC23632g) : new AtomicReference(abstractC23709e2.mo6208b(abstractC23376j, abstractC23632g));
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: i */
    public EnumC23892a mo6227i() {
        return EnumC23892a.DYNAMIC;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: i0 */
    public AbstractC23491w mo6533i0() {
        return this.f65470e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: j0 */
    public AbstractC23698i mo6532j0() {
        return this.f65469d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        AbstractC23700j<Object> abstractC23700j = this.f65472g;
        if (abstractC23700j != null) {
            return abstractC23700j.mo6221o();
        }
        return null;
    }
}
