package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzo.class */
public final class zzo<TResult, TContinuationResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TContinuationResult>, zzq<TResult> {

    /* renamed from: a */
    private final Executor f9883a;

    /* renamed from: b */
    private final SuccessContinuation<TResult, TContinuationResult> f9884b;

    /* renamed from: c */
    private final zzu<TContinuationResult> f9885c;

    public zzo(@NonNull Executor executor, @NonNull SuccessContinuation<TResult, TContinuationResult> successContinuation, @NonNull zzu<TContinuationResult> zzuVar) {
        this.f9883a = executor;
        this.f9884b = successContinuation;
        this.f9885c = zzuVar;
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    /* renamed from: a */
    public final void mo10800a() {
        this.f9885c.m10775u();
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void cancel() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void onComplete(@NonNull Task<TResult> task) {
        this.f9883a.execute(new zzp(this, task));
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        this.f9885c.m10779q(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f9885c.m10778r(tcontinuationresult);
    }
}
