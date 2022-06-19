package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil.class */
public class PendingResultUtil {
    private static final zaa zaa = new zao();

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil$ResultConverter.class */
    public interface ResultConverter<R extends Result, T> {
        @KeepForSdk
        T convert(R r);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil$zaa.class */
    public interface zaa {
        ApiException zaa(Status status);
    }

    @KeepForSdk
    public static <R extends Result, T extends Response<R>> Task<T> toResponseTask(PendingResult<R> pendingResult, T t) {
        return toTask(pendingResult, new zaq(t));
    }

    @KeepForSdk
    public static <R extends Result, T> Task<T> toTask(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter) {
        zaa zaaVar = zaa;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.addStatusListener(new zan(pendingResult, taskCompletionSource, resultConverter, zaaVar));
        return taskCompletionSource.getTask();
    }

    @KeepForSdk
    public static <R extends Result> Task<Void> toVoidTask(PendingResult<R> pendingResult) {
        return toTask(pendingResult, new zap());
    }
}
