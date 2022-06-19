package p130j0;

import p029c4.C0821e;
import p076e0.C2511f;
import p087f0.C2699e;
/* renamed from: j0.b */
/* loaded from: classes-dex2jar.jar:j0/b.class */
public class RunnableC3146b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C0821e f10593a;

    /* renamed from: b */
    public final /* synthetic */ int f10594b;

    public RunnableC3146b(C3147c c3147c, C0821e c0821e, int i) {
        this.f10593a = c0821e;
        this.f10594b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0821e c0821e = this.f10593a;
        int i = this.f10594b;
        C2511f.AbstractC2514c abstractC2514c = ((C2699e.C2700a) c0821e).f9281i;
        if (abstractC2514c != null) {
            abstractC2514c.mo60d(i);
        }
    }
}
