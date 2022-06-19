package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/TaskUtil.class */
public class TaskUtil {
    @KeepForSdk
    public static void setResultOrApiException(@RecentlyNonNull Status status, @RecentlyNonNull TaskCompletionSource<Void> taskCompletionSource) {
        setResultOrApiException(status, null, taskCompletionSource);
    }

    @KeepForSdk
    public static <TResult> void setResultOrApiException(@RecentlyNonNull Status status, TResult tresult, @RecentlyNonNull TaskCompletionSource<TResult> taskCompletionSource) {
        if (status.isSuccess()) {
            taskCompletionSource.setResult(tresult);
        } else {
            taskCompletionSource.setException(new ApiException(status));
        }
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public static Task<Void> toVoidTaskThatFailsOnFalse(@RecentlyNonNull Task<Boolean> task) {
        return task.continueWith(new zacs());
    }

    @KeepForSdk
    public static <ResultT> boolean trySetResultOrApiException(@RecentlyNonNull Status status, ResultT resultt, @RecentlyNonNull TaskCompletionSource<ResultT> taskCompletionSource) {
        return status.isSuccess() ? taskCompletionSource.trySetResult(resultt) : taskCompletionSource.trySetException(new ApiException(status));
    }
}
