package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzc.class */
final class zzc implements Runnable {
    public final /* synthetic */ Task zza;
    public final /* synthetic */ zzd zzb;

    public zzc(zzd zzdVar, Task task) {
        this.zzb = zzdVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzw zzwVar;
        zzw zzwVar2;
        zzw zzwVar3;
        Continuation continuation;
        zzw zzwVar4;
        zzw zzwVar5;
        if (this.zza.isCanceled()) {
            zzwVar5 = this.zzb.zzc;
            zzwVar5.zze();
            return;
        }
        try {
            continuation = this.zzb.zzb;
            Object then = continuation.then(this.zza);
            zzwVar4 = this.zzb.zzc;
            zzwVar4.zza(then);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzwVar2 = this.zzb.zzc;
                zzwVar2.zzc((Exception) e.getCause());
                return;
            }
            zzwVar = this.zzb.zzc;
            zzwVar.zzc(e);
        } catch (Exception e2) {
            zzwVar3 = this.zzb.zzc;
            zzwVar3.zzc(e2);
        }
    }
}
