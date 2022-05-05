package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzf.class */
final class zzf implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Task f9862f;

    /* renamed from: g */
    private final /* synthetic */ zze f9863g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(zze zzeVar, Task task) {
        this.f9863g = zzeVar;
        this.f9862f = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzu zzuVar;
        zzu zzuVar2;
        zzu zzuVar3;
        Continuation continuation;
        try {
            continuation = this.f9863g.f9860b;
            Task task = (Task) continuation.then(this.f9862f);
            if (task == null) {
                this.f9863g.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            task.mo10791e(TaskExecutors.f9842b, this.f9863g);
            task.mo10792d(TaskExecutors.f9842b, this.f9863g);
            task.mo10795a(TaskExecutors.f9842b, this.f9863g);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzuVar2 = this.f9863g.f9861c;
                zzuVar2.m10779q((Exception) e.getCause());
                return;
            }
            zzuVar = this.f9863g.f9861c;
            zzuVar.m10779q(e);
        } catch (Exception e2) {
            zzuVar3 = this.f9863g.f9861c;
            zzuVar3.m10779q(e2);
        }
    }
}
