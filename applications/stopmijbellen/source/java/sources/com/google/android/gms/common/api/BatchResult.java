package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BatchResult.class */
public final class BatchResult implements Result {
    private final Status zaa;
    private final PendingResult<?>[] zab;

    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.zaa = status;
        this.zab = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    @RecentlyNonNull
    public Status getStatus() {
        return this.zaa;
    }

    @RecentlyNonNull
    public <R extends Result> R take(@RecentlyNonNull BatchResultToken<R> batchResultToken) {
        Preconditions.checkArgument(batchResultToken.mId < this.zab.length, "The result token does not belong to this batch");
        return (R) this.zab[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
