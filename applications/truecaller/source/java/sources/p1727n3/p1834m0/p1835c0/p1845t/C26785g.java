package p1727n3.p1834m0.p1835c0.p1845t;

import n3.v.i0;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
import p1727n3.p1868v.AbstractC27012l0;
/* renamed from: n3.m0.c0.t.g */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/g.class */
public class C26785g implements AbstractC27012l0<In> {

    /* renamed from: a */
    public Out f74957a = null;

    /* renamed from: b */
    public final /* synthetic */ AbstractC26821a f74958b;

    /* renamed from: c */
    public final /* synthetic */ Object f74959c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC25640a f74960d;

    /* renamed from: e */
    public final /* synthetic */ i0 f74961e;

    /* renamed from: n3.m0.c0.t.g$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/g$a.class */
    public class RunnableC26786a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Object f74962a;

        public RunnableC26786a(Object obj) {
            C26785g.this = r4;
            this.f74962a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, Out] */
        @Override // java.lang.Runnable
        public void run() {
            synchronized (C26785g.this.f74959c) {
                ?? apply = C26785g.this.f74960d.apply(this.f74962a);
                C26785g c26785g = C26785g.this;
                Out out = c26785g.f74957a;
                if (out == 0 && apply != 0) {
                    c26785g.f74957a = apply;
                    c26785g.f74961e.mo1001j(apply);
                } else if (out != 0 && !out.equals(apply)) {
                    C26785g c26785g2 = C26785g.this;
                    c26785g2.f74957a = apply;
                    c26785g2.f74961e.mo1001j(apply);
                }
            }
        }
    }

    public C26785g(AbstractC26821a abstractC26821a, Object obj, AbstractC25640a abstractC25640a, i0 i0Var) {
        this.f74958b = abstractC26821a;
        this.f74959c = obj;
        this.f74960d = abstractC25640a;
        this.f74961e = i0Var;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(In in) {
        AbstractC26821a abstractC26821a = this.f74958b;
        ((C26822b) abstractC26821a).f75051a.execute(new RunnableC26786a(in));
    }
}
