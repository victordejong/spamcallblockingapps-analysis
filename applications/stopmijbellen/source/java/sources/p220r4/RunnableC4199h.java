package p220r4;
/* renamed from: r4.h */
/* loaded from: classes-dex2jar.jar:r4/h.class */
public final class RunnableC4199h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4206o f13188a;

    /* renamed from: b */
    public final /* synthetic */ C4200i f13189b;

    public RunnableC4199h(C4200i c4200i, C4206o c4206o) {
        this.f13189b = c4200i;
        this.f13188a = c4206o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f13189b.f13191b) {
            AbstractC4193b abstractC4193b = this.f13189b.f13192c;
            if (abstractC4193b != null) {
                abstractC4193b.onSuccess(this.f13188a.m1291b());
            }
        }
    }
}
