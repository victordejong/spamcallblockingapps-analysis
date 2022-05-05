package com.google.android.datatransport.runtime.retries;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/retries/RetryStrategy.class */
public interface RetryStrategy<TInput, TResult> {
    @Nullable
    /* renamed from: a */
    TInput mo15369a(TInput tinput, TResult tresult);
}
