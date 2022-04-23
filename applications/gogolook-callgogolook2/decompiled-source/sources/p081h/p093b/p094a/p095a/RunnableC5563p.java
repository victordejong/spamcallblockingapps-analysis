package p081h.p093b.p094a.p095a;

import p081h.p093b.p094a.p095a.C5534b;
/* renamed from: h.b.a.a.p */
/* loaded from: classes-dex2jar.jar:h/b/a/a/p.class */
public final class RunnableC5563p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C5542e f13896a;

    /* renamed from: b */
    public final /* synthetic */ C5534b.ServiceConnectionC5535a f13897b;

    public RunnableC5563p(C5534b.ServiceConnectionC5535a aVar, C5542e eVar) {
        this.f13897b = aVar;
        this.f13896a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC5537c cVar;
        AbstractC5537c cVar2;
        obj = this.f13897b.f13826a;
        synchronized (obj) {
            cVar = this.f13897b.f13828c;
            if (cVar != null) {
                cVar2 = this.f13897b.f13828c;
                cVar2.mo3551a(this.f13896a);
            }
        }
    }
}
