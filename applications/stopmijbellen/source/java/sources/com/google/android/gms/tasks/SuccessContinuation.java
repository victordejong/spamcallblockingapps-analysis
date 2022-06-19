package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/SuccessContinuation.class */
public interface SuccessContinuation<TResult, TContinuationResult> {
    Task<TContinuationResult> then(@RecentlyNonNull TResult tresult) throws Exception;
}
