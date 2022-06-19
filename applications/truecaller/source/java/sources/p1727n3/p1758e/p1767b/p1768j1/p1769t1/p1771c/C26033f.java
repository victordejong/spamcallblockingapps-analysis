package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c;

import com.google.common.util.concurrent.ListenableFuture;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
/* renamed from: n3.e.b.j1.t1.c.f */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/f.class */
public class C26033f implements AbstractC26029b<I, O> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC25640a f72697a;

    public C26033f(AbstractC25640a abstractC25640a) {
        this.f72697a = abstractC25640a;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b
    public ListenableFuture<O> apply(I i) {
        return C26034g.m2781c(this.f72697a.apply(i));
    }
}
