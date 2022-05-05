package p081h.p203i.p204a.p224e.p293r;

import java.util.concurrent.CancellationException;
/* renamed from: h.i.a.e.r.z */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/z.class */
public final class RunnableC9166z implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h f20877a;

    /* renamed from: b */
    public final /* synthetic */ C9165y f20878b;

    public RunnableC9166z(C9165y yVar, AbstractC9143h hVar) {
        this.f20878b = yVar;
        this.f20877a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC9141g gVar;
        try {
            gVar = this.f20878b.f20875b;
            AbstractC9143h a = gVar.mo13756a(this.f20877a.mo16014b());
            if (a == null) {
                this.f20878b.mo3757a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            a.mo16016a(C9146j.f20833b, (AbstractC9137e) this.f20878b);
            a.mo16017a(C9146j.f20833b, (AbstractC9134d) this.f20878b);
            a.mo16019a(C9146j.f20833b, (AbstractC9130b) this.f20878b);
        } catch (C9139f e) {
            if (e.getCause() instanceof Exception) {
                this.f20878b.mo3757a((Exception) e.getCause());
            } else {
                this.f20878b.mo3757a((Exception) e);
            }
        } catch (CancellationException e2) {
            this.f20878b.mo15258a();
        } catch (Exception e3) {
            this.f20878b.mo3757a(e3);
        }
    }
}
