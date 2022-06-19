package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskCompletionSource.class */
public class TaskCompletionSource<TResult> {
    private final zzw<TResult> zza = new zzw<>();

    public TaskCompletionSource() {
    }

    public TaskCompletionSource(@RecentlyNonNull CancellationToken cancellationToken) {
        cancellationToken.onCanceledRequested(new zzs(this));
    }

    public Task<TResult> getTask() {
        return this.zza;
    }

    public void setException(@RecentlyNonNull Exception exc) {
        this.zza.zzc(exc);
    }

    public void setResult(TResult tresult) {
        this.zza.zza(tresult);
    }

    public boolean trySetException(@RecentlyNonNull Exception exc) {
        return this.zza.zzd(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.zza.zzb(tresult);
    }
}
