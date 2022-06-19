package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/zzd.class */
final class zzd<TResult, TContinuationResult> implements zzq<TResult> {
    private final Executor zza;
    private final Continuation<TResult, TContinuationResult> zzb;
    private final zzw<TContinuationResult> zzc;

    public zzd(Executor executor, Continuation<TResult, TContinuationResult> continuation, zzw<TContinuationResult> zzwVar) {
        this.zza = executor;
        this.zzb = continuation;
        this.zzc = zzwVar;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zza(Task<TResult> task) {
        this.zza.execute(new zzc(this, task));
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzb() {
        throw new UnsupportedOperationException();
    }
}
