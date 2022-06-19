package p1727n3.p1834m0.p1835c0.p1836p.p1837a;

import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
/* renamed from: n3.m0.c0.p.a.a */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/p/a/a.class */
public class RunnableC26708a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C26760p f74766a;

    /* renamed from: b */
    public final /* synthetic */ C26709b f74767b;

    public RunnableC26708a(C26709b c26709b, C26760p c26760p) {
        this.f74767b = c26709b;
        this.f74766a = c26760p;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC26839p.m1296c().mo1294a(C26709b.f74768d, String.format("Scheduling work %s", this.f74766a.f74902a), new Throwable[0]);
        this.f74767b.f74769a.mo1399e(this.f74766a);
    }
}
