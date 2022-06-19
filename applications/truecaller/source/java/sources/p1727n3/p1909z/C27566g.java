package p1727n3.p1909z;

import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1744b0.p1745a.AbstractC25617q;
import p1727n3.p1744b0.p1745a.C25586h;
import q3.a.g0;
import q3.a.x2.f;
import s1.z.c.l;
/* renamed from: n3.z.g */
/* loaded from: classes-dex2jar.jar:n3/z/g.class */
public final class C27566g<T> {

    /* renamed from: a */
    public final AbstractC27610x f77650a;

    /* renamed from: b */
    public boolean f77651b;

    /* renamed from: c */
    public final a f77652c;

    /* renamed from: d */
    public final AtomicInteger f77653d = new AtomicInteger(0);

    /* renamed from: e */
    public final f<C27591q> f77654e;

    /* renamed from: f */
    public final C25586h.AbstractC25591e<T> f77655f;

    /* renamed from: g */
    public final AbstractC25617q f77656g;

    /* renamed from: h */
    public final g0 f77657h;

    /* renamed from: i */
    public final g0 f77658i;

    public C27566g(C25586h.AbstractC25591e<T> abstractC25591e, AbstractC25617q abstractC25617q, g0 g0Var, g0 g0Var2) {
        l.e(abstractC25591e, "diffCallback");
        l.e(abstractC25617q, "updateCallback");
        l.e(g0Var, "mainDispatcher");
        l.e(g0Var2, "workerDispatcher");
        this.f77655f = abstractC25591e;
        this.f77656g = abstractC25617q;
        this.f77657h = g0Var;
        this.f77658i = g0Var2;
        b bVar = new b(this);
        this.f77650a = bVar;
        a aVar = new a(this, bVar, g0Var);
        this.f77652c = aVar;
        this.f77654e = aVar.f77682i;
    }
}
