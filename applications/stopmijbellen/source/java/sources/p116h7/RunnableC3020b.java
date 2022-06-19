package p116h7;

import p127i7.AsyncTaskC3131d;
/* renamed from: h7.b */
/* loaded from: classes-dex2jar.jar:h7/b.class */
public class RunnableC3020b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C3015a f10129a;

    public RunnableC3020b(C3015a c3015a) {
        this.f10129a = c3015a;
    }

    @Override // java.lang.Runnable
    public void run() {
        C3023d c3023d = this.f10129a.f10127e;
        c3023d.f10141b.m2590b(new AsyncTaskC3131d(c3023d));
    }
}
