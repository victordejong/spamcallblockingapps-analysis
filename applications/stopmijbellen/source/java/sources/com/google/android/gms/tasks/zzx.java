package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzx.class */
public final class zzx implements Runnable {
    public final /* synthetic */ zzw zza;
    public final /* synthetic */ Callable zzb;

    public zzx(zzw zzwVar, Callable callable) {
        this.zza = zzwVar;
        this.zzb = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.zza(this.zzb.call());
        } catch (Exception e) {
            this.zza.zzc(e);
        } catch (Throwable th) {
            this.zza.zzc(new RuntimeException(th));
        }
    }
}
