package p081h.p203i.p204a.p224e.p293r;
/* renamed from: h.i.a.e.r.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/v.class */
public final class RunnableC9162v implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h f20867a;

    /* renamed from: b */
    public final /* synthetic */ C9161u f20868b;

    public RunnableC9162v(C9161u uVar, AbstractC9143h hVar) {
        this.f20868b = uVar;
        this.f20867a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC9134d dVar;
        AbstractC9134d dVar2;
        obj = this.f20868b.f20865b;
        synchronized (obj) {
            dVar = this.f20868b.f20866c;
            if (dVar != null) {
                dVar2 = this.f20868b.f20866c;
                dVar2.mo3757a(this.f20867a.mo16030a());
            }
        }
    }
}
