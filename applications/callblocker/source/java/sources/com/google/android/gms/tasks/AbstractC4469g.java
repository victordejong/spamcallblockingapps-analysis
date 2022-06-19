package com.google.android.gms.tasks;

import android.app.Activity;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/g.class */
public abstract class AbstractC4469g<TResult> {
    /* renamed from: a */
    public abstract AbstractC4469g<TResult> mo3904a(Activity activity, AbstractC4467e<? super TResult> abstractC4467e);

    /* renamed from: a */
    public AbstractC4469g<TResult> mo3903a(AbstractC4465c<TResult> abstractC4465c) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: a */
    public abstract AbstractC4469g<TResult> mo3902a(AbstractC4466d abstractC4466d);

    /* renamed from: a */
    public <TContinuationResult> AbstractC4469g<TContinuationResult> mo3900a(Executor executor, AbstractC4459a<TResult, TContinuationResult> abstractC4459a) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: a */
    public AbstractC4469g<TResult> mo3899a(Executor executor, AbstractC4464b abstractC4464b) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: a */
    public AbstractC4469g<TResult> mo3898a(Executor executor, AbstractC4465c<TResult> abstractC4465c) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: a */
    public abstract AbstractC4469g<TResult> mo3897a(Executor executor, AbstractC4466d abstractC4466d);

    /* renamed from: a */
    public abstract AbstractC4469g<TResult> mo3896a(Executor executor, AbstractC4467e<? super TResult> abstractC4467e);

    /* renamed from: a */
    public <TContinuationResult> AbstractC4469g<TContinuationResult> mo3895a(Executor executor, AbstractC4468f<TResult, TContinuationResult> abstractC4468f) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: a */
    public abstract <X extends Throwable> TResult mo3901a(Class<X> cls);

    /* renamed from: a */
    public abstract boolean mo3905a();

    /* renamed from: b */
    public <TContinuationResult> AbstractC4469g<TContinuationResult> mo3893b(Executor executor, AbstractC4459a<TResult, AbstractC4469g<TContinuationResult>> abstractC4459a) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: b */
    public abstract boolean mo3894b();

    /* renamed from: c */
    public abstract boolean mo3892c();

    /* renamed from: d */
    public abstract TResult mo3891d();

    /* renamed from: e */
    public abstract Exception mo3890e();
}
