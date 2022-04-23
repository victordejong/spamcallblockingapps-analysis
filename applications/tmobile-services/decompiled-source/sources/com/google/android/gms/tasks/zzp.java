package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzp.class */
final class zzp implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Task f9886f;

    /* renamed from: g */
    private final /* synthetic */ zzo f9887g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(zzo zzoVar, Task task) {
        this.f9887g = zzoVar;
        this.f9886f = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SuccessContinuation successContinuation;
        try {
            successContinuation = this.f9887g.f9884b;
            Task then = successContinuation.then(this.f9886f.mo10786j());
            if (then == null) {
                this.f9887g.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            then.mo10791e(TaskExecutors.f9842b, this.f9887g);
            then.mo10792d(TaskExecutors.f9842b, this.f9887g);
            then.mo10795a(TaskExecutors.f9842b, this.f9887g);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f9887g.onFailure((Exception) e.getCause());
            } else {
                this.f9887g.onFailure(e);
            }
        } catch (CancellationException e2) {
            this.f9887g.mo10800a();
        } catch (Exception e3) {
            this.f9887g.onFailure(e3);
        }
    }
}
