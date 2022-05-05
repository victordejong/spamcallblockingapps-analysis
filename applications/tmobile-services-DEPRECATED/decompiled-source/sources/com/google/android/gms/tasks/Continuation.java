package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Continuation.class */
public interface Continuation<TResult, TContinuationResult> {
    TContinuationResult then(@NonNull Task<TResult> task) throws Exception;
}
