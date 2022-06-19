package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/h.class */
public abstract class AbstractC14185h<TResult> {
    /* renamed from: a */
    public <TContinuationResult> AbstractC14185h<TContinuationResult> mo11490a(AbstractC14179b<TResult, TContinuationResult> abstractC14179b) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: a */
    public AbstractC14185h<TResult> mo11489a(AbstractC14181d<TResult> abstractC14181d) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: a */
    public abstract AbstractC14185h<TResult> mo11488a(AbstractC14182e abstractC14182e);

    /* renamed from: a */
    public abstract AbstractC14185h<TResult> mo11487a(AbstractC14183f<? super TResult> abstractC14183f);

    /* renamed from: a */
    public <TContinuationResult> AbstractC14185h<TContinuationResult> mo11486a(AbstractC14184g<TResult, TContinuationResult> abstractC14184g) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: a */
    public <TContinuationResult> AbstractC14185h<TContinuationResult> mo11484a(Executor executor, AbstractC14179b<TResult, TContinuationResult> abstractC14179b) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: a */
    public AbstractC14185h<TResult> mo11483a(Executor executor, AbstractC14180c abstractC14180c) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: a */
    public AbstractC14185h<TResult> mo11482a(Executor executor, AbstractC14181d<TResult> abstractC14181d) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: a */
    public abstract AbstractC14185h<TResult> mo11481a(Executor executor, AbstractC14182e abstractC14182e);

    /* renamed from: a */
    public abstract AbstractC14185h<TResult> mo11480a(Executor executor, AbstractC14183f<? super TResult> abstractC14183f);

    /* renamed from: a */
    public <TContinuationResult> AbstractC14185h<TContinuationResult> mo11479a(Executor executor, AbstractC14184g<TResult, TContinuationResult> abstractC14184g) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: a */
    public abstract <X extends Throwable> TResult mo11485a(Class<X> cls) throws Throwable;

    /* renamed from: a */
    public abstract boolean mo11491a();

    /* renamed from: b */
    public <TContinuationResult> AbstractC14185h<TContinuationResult> mo11477b(Executor executor, AbstractC14179b<TResult, AbstractC14185h<TContinuationResult>> abstractC14179b) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: b */
    public abstract boolean mo11478b();

    /* renamed from: c */
    public abstract boolean mo11476c();

    /* renamed from: d */
    public abstract TResult mo11475d();

    /* renamed from: e */
    public abstract Exception mo11474e();
}
