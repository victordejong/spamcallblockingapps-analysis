package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
/* renamed from: com.google.android.gms.tasks.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/x.class */
final class RunnableC4489x implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4469g f19545a;

    /* renamed from: b */
    private final /* synthetic */ C4488w f19546b;

    public RunnableC4489x(C4488w c4488w, AbstractC4469g abstractC4469g) {
        this.f19546b = c4488w;
        this.f19545a = abstractC4469g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4468f abstractC4468f;
        try {
            abstractC4468f = this.f19546b.f19543b;
            AbstractC4469g mo1955a = abstractC4468f.mo1955a(this.f19545a.mo3891d());
            if (mo1955a == null) {
                this.f19546b.mo3862a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            mo1955a.mo3896a(C4471i.f19510b, (AbstractC4467e) this.f19546b);
            mo1955a.mo3897a(C4471i.f19510b, (AbstractC4466d) this.f19546b);
            mo1955a.mo3899a(C4471i.f19510b, (AbstractC4464b) this.f19546b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f19546b.mo3862a((Exception) e.getCause());
            } else {
                this.f19546b.mo3862a((Exception) e);
            }
        } catch (CancellationException e2) {
            this.f19546b.mo3861y_();
        } catch (Exception e3) {
            this.f19546b.mo3862a(e3);
        }
    }
}
