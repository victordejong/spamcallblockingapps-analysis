package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzd.class */
final class zzd implements Runnable {
    private final /* synthetic */ Task zzg;
    private final /* synthetic */ zzc zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzc zzcVar, Task task) {
        this.zzh = zzcVar;
        this.zzg = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzu zzuVar;
        zzu zzuVar2;
        zzu zzuVar3;
        Continuation continuation;
        zzu zzuVar4;
        zzu zzuVar5;
        if (this.zzg.isCanceled()) {
            zzuVar5 = this.zzh.zzf;
            zzuVar5.zza();
            return;
        }
        try {
            continuation = this.zzh.zze;
            Object then = continuation.then(this.zzg);
            zzuVar4 = this.zzh.zzf;
            zzuVar4.setResult(then);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzuVar2 = this.zzh.zzf;
                zzuVar2.setException((Exception) e.getCause());
                return;
            }
            zzuVar = this.zzh.zzf;
            zzuVar.setException(e);
        } catch (Exception e2) {
            zzuVar3 = this.zzh.zzf;
            zzuVar3.setException(e2);
        }
    }
}
