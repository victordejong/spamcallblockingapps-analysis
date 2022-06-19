package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzg.class */
final class zzg implements Runnable {
    public final /* synthetic */ zzh zza;

    public zzg(zzh zzhVar) {
        this.zza = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCanceledListener onCanceledListener;
        OnCanceledListener onCanceledListener2;
        obj = this.zza.zzb;
        synchronized (obj) {
            onCanceledListener = this.zza.zzc;
            if (onCanceledListener != null) {
                onCanceledListener2 = this.zza.zzc;
                onCanceledListener2.onCanceled();
            }
        }
    }
}
