package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zze.class */
final class zze<TResult, TContinuationResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TContinuationResult>, zzq<TResult> {

    /* renamed from: a */
    private final Executor f9859a;

    /* renamed from: b */
    private final Continuation<TResult, Task<TContinuationResult>> f9860b;

    /* renamed from: c */
    private final zzu<TContinuationResult> f9861c;

    public zze(@NonNull Executor executor, @NonNull Continuation<TResult, Task<TContinuationResult>> continuation, @NonNull zzu<TContinuationResult> zzuVar) {
        this.f9859a = executor;
        this.f9860b = continuation;
        this.f9861c = zzuVar;
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    /* renamed from: a */
    public final void mo10800a() {
        this.f9861c.m10775u();
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task<TResult> task) {
        this.f9859a.execute(new zzf(this, task));
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        this.f9861c.m10779q(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f9861c.m10778r(tcontinuationresult);
    }
}
