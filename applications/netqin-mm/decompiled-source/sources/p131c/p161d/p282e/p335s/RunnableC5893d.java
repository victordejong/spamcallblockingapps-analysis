package p131c.p161d.p282e.p335s;
/* renamed from: c.d.e.s.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/d.class */
public final /* synthetic */ class RunnableC5893d implements Runnable {

    /* renamed from: a */
    public final C5895f f19198a;

    /* renamed from: b */
    public final boolean f19199b;

    public RunnableC5893d(C5895f fVar, boolean z) {
        this.f19198a = fVar;
        this.f19199b = z;
    }

    /* renamed from: a */
    public static Runnable m22809a(C5895f fVar, boolean z) {
        return new RunnableC5893d(fVar, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f19198a.m22793c(this.f19199b);
    }
}
