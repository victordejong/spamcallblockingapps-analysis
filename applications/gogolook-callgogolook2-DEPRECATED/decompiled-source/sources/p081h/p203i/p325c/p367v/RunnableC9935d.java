package p081h.p203i.p325c.p367v;
/* renamed from: h.i.c.v.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/d.class */
public final /* synthetic */ class RunnableC9935d implements Runnable {

    /* renamed from: a */
    public final C9938g f22477a;

    /* renamed from: b */
    public final boolean f22478b;

    public RunnableC9935d(C9938g gVar, boolean z) {
        this.f22477a = gVar;
        this.f22478b = z;
    }

    /* renamed from: a */
    public static Runnable m13927a(C9938g gVar, boolean z) {
        return new RunnableC9935d(gVar, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f22477a.m13910c(this.f22478b);
    }
}
