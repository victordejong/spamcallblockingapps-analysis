package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzm.class */
final class zzm implements Runnable {
    public final /* synthetic */ Task zza;
    public final /* synthetic */ zzn zzb;

    public zzm(zzn zznVar, Task task) {
        this.zzb = zznVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnSuccessListener onSuccessListener;
        OnSuccessListener onSuccessListener2;
        obj = this.zzb.zzb;
        synchronized (obj) {
            onSuccessListener = this.zzb.zzc;
            if (onSuccessListener != null) {
                onSuccessListener2 = this.zzb.zzc;
                onSuccessListener2.onSuccess(this.zza.getResult());
            }
        }
    }
}
