package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/n.class */
final class RunnableC4479n implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4469g f19521a;

    /* renamed from: b */
    private final /* synthetic */ C4478m f19522b;

    public RunnableC4479n(C4478m c4478m, AbstractC4469g abstractC4469g) {
        this.f19522b = c4478m;
        this.f19521a = abstractC4469g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4461ab c4461ab;
        C4461ab c4461ab2;
        C4461ab c4461ab3;
        AbstractC4459a abstractC4459a;
        try {
            abstractC4459a = this.f19522b.f19519b;
            AbstractC4469g abstractC4469g = (AbstractC4469g) abstractC4459a.mo1911a(this.f19521a);
            if (abstractC4469g == null) {
                this.f19522b.mo3862a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            abstractC4469g.mo3896a(C4471i.f19510b, (AbstractC4467e) this.f19522b);
            abstractC4469g.mo3897a(C4471i.f19510b, (AbstractC4466d) this.f19522b);
            abstractC4469g.mo3899a(C4471i.f19510b, (AbstractC4464b) this.f19522b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                c4461ab3 = this.f19522b.f19520c;
                c4461ab3.m3917a((Exception) e.getCause());
                return;
            }
            c4461ab2 = this.f19522b.f19520c;
            c4461ab2.m3917a((Exception) e);
        } catch (Exception e2) {
            c4461ab = this.f19522b.f19520c;
            c4461ab.m3917a(e2);
        }
    }
}
