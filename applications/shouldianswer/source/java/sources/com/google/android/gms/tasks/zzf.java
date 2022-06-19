package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzf.class */
final class zzf implements Runnable {
    private final /* synthetic */ Task zzg;
    private final /* synthetic */ zze zzi;

    public zzf(zze zzeVar, Task task) {
        this.zzi = zzeVar;
        this.zzg = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzu zzuVar;
        zzu zzuVar2;
        zzu zzuVar3;
        Continuation continuation;
        try {
            continuation = this.zzi.zze;
            Task task = (Task) continuation.then(this.zzg);
            if (task == null) {
                this.zzi.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            task.addOnSuccessListener(TaskExecutors.zzw, this.zzi);
            task.addOnFailureListener(TaskExecutors.zzw, this.zzi);
            task.addOnCanceledListener(TaskExecutors.zzw, this.zzi);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzuVar2 = this.zzi.zzf;
                zzuVar2.setException((Exception) e.getCause());
                return;
            }
            zzuVar = this.zzi.zzf;
            zzuVar.setException(e);
        } catch (Exception e2) {
            zzuVar3 = this.zzi.zzf;
            zzuVar3.setException(e2);
        }
    }
}
