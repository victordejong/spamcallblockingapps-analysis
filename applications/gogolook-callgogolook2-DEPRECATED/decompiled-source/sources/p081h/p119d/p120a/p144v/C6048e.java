package p081h.p119d.p120a.p144v;

import java.io.File;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
/* renamed from: h.d.a.v.e */
/* loaded from: classes-dex2jar.jar:h/d/a/v/e.class */
public class C6048e<A, T, Z, R> implements AbstractC6049f<A, T, Z, R> {

    /* renamed from: a */
    public final AbstractC5918l<A, T> f15050a;

    /* renamed from: b */
    public final AbstractC6019d<Z, R> f15051b;

    /* renamed from: c */
    public final AbstractC6045b<T, Z> f15052c;

    public C6048e(AbstractC5918l<A, T> lVar, AbstractC6019d<Z, R> dVar, AbstractC6045b<T, Z> bVar) {
        if (lVar != null) {
            this.f15050a = lVar;
            if (dVar != null) {
                this.f15051b = dVar;
                if (bVar != null) {
                    this.f15052c = bVar;
                    return;
                }
                throw new NullPointerException("DataLoadProvider must not be null");
            }
            throw new NullPointerException("Transcoder must not be null");
        }
        throw new NullPointerException("ModelLoader must not be null");
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<T> mo23971d() {
        return this.f15052c.mo23971d();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6049f
    /* renamed from: e */
    public AbstractC6019d<Z, R> mo23967e() {
        return this.f15051b;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<Z> mo23970f() {
        return this.f15052c.mo23970f();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<T, Z> mo23969g() {
        return this.f15052c.mo23969g();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, Z> mo23968h() {
        return this.f15052c.mo23968h();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6049f
    /* renamed from: i */
    public AbstractC5918l<A, T> mo23966i() {
        return this.f15050a;
    }
}
