package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Continuation.class */
public interface Continuation<TResult, TContinuationResult> {
    @RecentlyNonNull
    TContinuationResult then(@RecentlyNonNull Task<TResult> task) throws Exception;
}
