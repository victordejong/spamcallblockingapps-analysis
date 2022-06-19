package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24970g;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24971h;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24972i;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil.class */
public class PendingResultUtil {

    /* renamed from: a */
    public static final zas f5992a = new C24970g();

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil$ResultConverter.class */
    public interface ResultConverter<R extends Result, T> {
        @RecentlyNullable
        @KeepForSdk
        /* renamed from: a */
        T mo4255a(@RecentlyNonNull R r);
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: a */
    public static <R extends Result, T extends Response<R>> Task<T> m38908a(@RecentlyNonNull PendingResult<R> pendingResult, @RecentlyNonNull T t) {
        C24972i c24972i = new C24972i(t);
        zas zasVar = f5992a;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.addStatusListener(new C24971h(pendingResult, taskCompletionSource, c24972i, zasVar));
        return taskCompletionSource.f6493a;
    }
}
