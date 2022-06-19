package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/TaskUtil.class */
public class TaskUtil {
    @KeepForSdk
    /* renamed from: a */
    public static <TResult> void m39015a(@RecentlyNonNull Status status, TResult tresult, @RecentlyNonNull TaskCompletionSource<TResult> taskCompletionSource) {
        if (status.m39042q2()) {
            taskCompletionSource.f6493a.w(tresult);
            return;
        }
        taskCompletionSource.f6493a.v(new ApiException(status));
    }
}
