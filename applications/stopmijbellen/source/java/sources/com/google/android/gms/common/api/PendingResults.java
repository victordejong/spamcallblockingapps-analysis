package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.OptionalPendingResultImpl;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults.class */
public final class PendingResults {
    @KeepForSdk
    private PendingResults() {
    }

    @RecentlyNonNull
    public static PendingResult<Status> canceledPendingResult() {
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.cancel();
        return statusPendingResult;
    }

    @RecentlyNonNull
    public static <R extends Result> PendingResult<R> canceledPendingResult(@RecentlyNonNull R r) {
        Preconditions.checkNotNull(r, "Result must not be null");
        Preconditions.checkArgument(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        zae zaeVar = new zae(r);
        zaeVar.cancel();
        return zaeVar;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <R extends Result> PendingResult<R> immediateFailedResult(@RecentlyNonNull R r, @RecentlyNonNull GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, "Result must not be null");
        Preconditions.checkArgument(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        zaf zafVar = new zaf(googleApiClient, r);
        zafVar.setResult(r);
        return zafVar;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(@RecentlyNonNull R r) {
        Preconditions.checkNotNull(r, "Result must not be null");
        zag zagVar = new zag(null);
        zagVar.setResult(r);
        return new OptionalPendingResultImpl(zagVar);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(@RecentlyNonNull R r, @RecentlyNonNull GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, "Result must not be null");
        zag zagVar = new zag(googleApiClient);
        zagVar.setResult(r);
        return new OptionalPendingResultImpl(zagVar);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static PendingResult<Status> immediatePendingResult(@RecentlyNonNull Status status) {
        Preconditions.checkNotNull(status, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static PendingResult<Status> immediatePendingResult(@RecentlyNonNull Status status, @RecentlyNonNull GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(status, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }
}
