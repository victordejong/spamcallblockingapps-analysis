package p081h.p203i.p204a.p224e.p293r;
/* renamed from: h.i.a.e.r.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/r.class */
public final class RunnableC9158r implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C9156p f20858a;

    public RunnableC9158r(C9156p pVar) {
        this.f20858a = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC9130b bVar;
        AbstractC9130b bVar2;
        obj = this.f20858a.f20854b;
        synchronized (obj) {
            bVar = this.f20858a.f20855c;
            if (bVar != null) {
                bVar2 = this.f20858a.f20855c;
                bVar2.mo15258a();
            }
        }
    }
}
