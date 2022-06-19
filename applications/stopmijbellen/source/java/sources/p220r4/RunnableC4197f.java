package p220r4;
/* renamed from: r4.f */
/* loaded from: classes-dex2jar.jar:r4/f.class */
public final class RunnableC4197f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4206o f13183a;

    /* renamed from: b */
    public final /* synthetic */ C4198g f13184b;

    public RunnableC4197f(C4198g c4198g, C4206o c4206o) {
        this.f13184b = c4198g;
        this.f13183a = c4206o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception exc;
        synchronized (this.f13184b.f13186b) {
            AbstractC4192a abstractC4192a = this.f13184b.f13187c;
            if (abstractC4192a != null) {
                C4206o c4206o = this.f13183a;
                synchronized (c4206o.f13198a) {
                    exc = c4206o.f13202e;
                }
                abstractC4192a.onFailure(exc);
            }
        }
    }
}
