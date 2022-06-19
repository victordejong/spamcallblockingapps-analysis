package p1727n3.p1874y.p1906c;

import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u;
/* renamed from: n3.y.c.i0 */
/* loaded from: classes-dex2jar.jar:n3/y/c/i0.class */
public class RunnableC27476i0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C27142u f77341a;

    /* renamed from: b */
    public final /* synthetic */ int f77342b;

    public RunnableC27476i0(C27142u c27142u, int i) {
        this.f77341a = c27142u;
        this.f77342b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        C27142u c27142u = this.f77341a;
        int i = this.f77342b;
        if (c27142u.f75912M != i) {
            c27142u.f75912M = i;
            c27142u.m808d();
        }
    }
}
