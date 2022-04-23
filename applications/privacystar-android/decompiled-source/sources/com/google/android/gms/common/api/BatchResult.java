package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BatchResult.class */
public final class BatchResult implements Result {
    private final Status mStatus;
    private final PendingResult<?>[] zabc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.mStatus = status;
        this.zabc = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.mStatus;
    }

    public final <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        Preconditions.checkArgument(batchResultToken.mId < this.zabc.length, "The result token does not belong to this batch");
        return (R) this.zabc[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
