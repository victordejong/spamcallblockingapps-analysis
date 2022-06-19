package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/l.class */
final class RunnableC4477l implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4469g f19516a;

    /* renamed from: b */
    private final /* synthetic */ C4476k f19517b;

    public RunnableC4477l(C4476k c4476k, AbstractC4469g abstractC4469g) {
        this.f19517b = c4476k;
        this.f19516a = abstractC4469g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4461ab c4461ab;
        C4461ab c4461ab2;
        C4461ab c4461ab3;
        AbstractC4459a abstractC4459a;
        C4461ab c4461ab4;
        C4461ab c4461ab5;
        if (this.f19516a.mo3892c()) {
            c4461ab5 = this.f19517b.f19515c;
            c4461ab5.m3913f();
            return;
        }
        try {
            abstractC4459a = this.f19517b.f19514b;
            Object mo1911a = abstractC4459a.mo1911a(this.f19516a);
            c4461ab4 = this.f19517b.f19515c;
            c4461ab4.m3916a((C4461ab) mo1911a);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                c4461ab3 = this.f19517b.f19515c;
                c4461ab3.m3917a((Exception) e.getCause());
                return;
            }
            c4461ab2 = this.f19517b.f19515c;
            c4461ab2.m3917a((Exception) e);
        } catch (Exception e2) {
            c4461ab = this.f19517b.f19515c;
            c4461ab.m3917a(e2);
        }
    }
}
