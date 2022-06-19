package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.TransformedResult;
import java.util.concurrent.TimeUnit;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/OptionalPendingResultImpl.class */
public final class OptionalPendingResultImpl<R extends Result> extends OptionalPendingResult<R> {
    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(@RecentlyNonNull PendingResult.StatusListener statusListener) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @RecentlyNonNull
    public final R await() {
        throw null;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @RecentlyNonNull
    public final R await(long j, @RecentlyNonNull TimeUnit timeUnit) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void cancel() {
        throw null;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        throw null;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(@RecentlyNonNull ResultCallback<? super R> resultCallback) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(@RecentlyNonNull ResultCallback<? super R> resultCallback, long j, @RecentlyNonNull TimeUnit timeUnit) {
        throw null;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final <S extends Result> TransformedResult<S> then(@RecentlyNonNull ResultTransform<? super R, ? extends S> resultTransform) {
        throw null;
    }
}
