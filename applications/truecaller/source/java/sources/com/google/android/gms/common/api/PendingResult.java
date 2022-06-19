package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import java.util.concurrent.TimeUnit;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/PendingResult.class */
public abstract class PendingResult<R extends Result> {

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/PendingResult$StatusListener.class */
    public interface StatusListener {
        @KeepForSdk
        /* renamed from: a */
        void mo4256a(@RecentlyNonNull Status status);
    }

    @KeepForSdk
    public void addStatusListener(@RecentlyNonNull StatusListener statusListener) {
        throw new UnsupportedOperationException();
    }

    public abstract R await();

    public abstract R await(long j, @RecentlyNonNull TimeUnit timeUnit);

    public abstract void cancel();

    public abstract boolean isCanceled();

    public abstract void setResultCallback(@RecentlyNonNull ResultCallback<? super R> resultCallback);

    public abstract void setResultCallback(@RecentlyNonNull ResultCallback<? super R> resultCallback, long j, @RecentlyNonNull TimeUnit timeUnit);

    public <S extends Result> TransformedResult<S> then(@RecentlyNonNull ResultTransform<? super R, ? extends S> resultTransform) {
        throw new UnsupportedOperationException();
    }
}
