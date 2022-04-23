package p131c.p161d.p282e.p335s;
/* renamed from: c.d.e.s.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/e.class */
public final /* synthetic */ class RunnableC5894e implements Runnable {

    /* renamed from: a */
    public final C5895f f19200a;

    /* renamed from: b */
    public final boolean f19201b;

    public RunnableC5894e(C5895f fVar, boolean z) {
        this.f19200a = fVar;
        this.f19201b = z;
    }

    /* renamed from: a */
    public static Runnable m22808a(C5895f fVar, boolean z) {
        return new RunnableC5894e(fVar, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f19200a.m22796b(this.f19201b);
    }
}
