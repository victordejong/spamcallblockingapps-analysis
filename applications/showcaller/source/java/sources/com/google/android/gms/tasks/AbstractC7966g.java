package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/g.class */
public abstract class AbstractC7966g<TResult> {
    /* renamed from: a */
    public AbstractC7966g<TResult> mo5826a(@RecentlyNonNull Executor executor, @RecentlyNonNull AbstractC7956b abstractC7956b) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: b */
    public AbstractC7966g<TResult> mo5825b(@RecentlyNonNull AbstractC7958c<TResult> abstractC7958c) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: c */
    public AbstractC7966g<TResult> mo5824c(@RecentlyNonNull Executor executor, @RecentlyNonNull AbstractC7958c<TResult> abstractC7958c) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: d */
    public abstract AbstractC7966g<TResult> mo5823d(@RecentlyNonNull AbstractC7960d abstractC7960d);

    /* renamed from: e */
    public abstract AbstractC7966g<TResult> mo5822e(@RecentlyNonNull Executor executor, @RecentlyNonNull AbstractC7960d abstractC7960d);

    /* renamed from: f */
    public abstract AbstractC7966g<TResult> mo5821f(@RecentlyNonNull AbstractC7962e<? super TResult> abstractC7962e);

    /* renamed from: g */
    public abstract AbstractC7966g<TResult> mo5820g(@RecentlyNonNull Executor executor, @RecentlyNonNull AbstractC7962e<? super TResult> abstractC7962e);

    /* renamed from: h */
    public <TContinuationResult> AbstractC7966g<TContinuationResult> mo5819h(@RecentlyNonNull AbstractC7954a<TResult, TContinuationResult> abstractC7954a) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: i */
    public <TContinuationResult> AbstractC7966g<TContinuationResult> mo5818i(@RecentlyNonNull Executor executor, @RecentlyNonNull AbstractC7954a<TResult, TContinuationResult> abstractC7954a) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: j */
    public <TContinuationResult> AbstractC7966g<TContinuationResult> mo5817j(@RecentlyNonNull AbstractC7954a<TResult, AbstractC7966g<TContinuationResult>> abstractC7954a) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: k */
    public <TContinuationResult> AbstractC7966g<TContinuationResult> mo5816k(@RecentlyNonNull Executor executor, @RecentlyNonNull AbstractC7954a<TResult, AbstractC7966g<TContinuationResult>> abstractC7954a) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @RecentlyNullable
    /* renamed from: l */
    public abstract Exception mo5815l();

    @RecentlyNonNull
    /* renamed from: m */
    public abstract TResult mo5814m();

    @RecentlyNonNull
    /* renamed from: n */
    public abstract <X extends Throwable> TResult mo5813n(@RecentlyNonNull Class<X> cls);

    /* renamed from: o */
    public abstract boolean mo5812o();

    /* renamed from: p */
    public abstract boolean mo5811p();

    /* renamed from: q */
    public abstract boolean mo5810q();

    /* renamed from: r */
    public <TContinuationResult> AbstractC7966g<TContinuationResult> mo5809r(@RecentlyNonNull AbstractC7964f<TResult, TContinuationResult> abstractC7964f) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: s */
    public <TContinuationResult> AbstractC7966g<TContinuationResult> mo5808s(@RecentlyNonNull Executor executor, @RecentlyNonNull AbstractC7964f<TResult, TContinuationResult> abstractC7964f) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
