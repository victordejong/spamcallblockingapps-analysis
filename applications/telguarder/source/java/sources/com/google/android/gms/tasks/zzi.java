package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/zzi.class */
final class zzi implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzj zzb;

    public zzi(zzj zzjVar, Task task) {
        this.zzb = zzjVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCompleteListener onCompleteListener;
        OnCompleteListener onCompleteListener2;
        obj = this.zzb.zzb;
        synchronized (obj) {
            onCompleteListener = this.zzb.zzc;
            if (onCompleteListener != null) {
                onCompleteListener2 = this.zzb.zzc;
                onCompleteListener2.onComplete(this.zza);
            }
        }
    }
}
