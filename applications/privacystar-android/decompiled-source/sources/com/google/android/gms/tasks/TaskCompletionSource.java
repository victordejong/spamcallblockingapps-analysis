package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskCompletionSource.class */
public class TaskCompletionSource<TResult> {
    private final zzu<TResult> zza = new zzu<>();

    public TaskCompletionSource() {
    }

    public TaskCompletionSource(@NonNull CancellationToken cancellationToken) {
        cancellationToken.onCanceledRequested(new zzs(this));
    }

    @NonNull
    public Task<TResult> getTask() {
        return this.zza;
    }

    public void setException(@NonNull Exception exc) {
        this.zza.setException(exc);
    }

    public void setResult(TResult tresult) {
        this.zza.setResult(tresult);
    }

    public boolean trySetException(@NonNull Exception exc) {
        return this.zza.trySetException(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.zza.trySetResult(tresult);
    }
}
