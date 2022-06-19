package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzk.class */
final class zzk implements Runnable {
    public final /* synthetic */ Task zza;
    public final /* synthetic */ zzl zzb;

    public zzk(zzl zzlVar, Task task) {
        this.zzb = zzlVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnFailureListener onFailureListener;
        OnFailureListener onFailureListener2;
        obj = this.zzb.zzb;
        synchronized (obj) {
            onFailureListener = this.zzb.zzc;
            if (onFailureListener != null) {
                onFailureListener2 = this.zzb.zzc;
                onFailureListener2.onFailure((Exception) Preconditions.checkNotNull(this.zza.getException()));
            }
        }
    }
}
