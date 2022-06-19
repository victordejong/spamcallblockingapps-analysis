package com.huawei.hms.support.api.client;

import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.support.api.client.Result;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/client/ResultConvert.class */
public abstract class ResultConvert<R extends Result, S extends Result> {
    public final PendingResult newFailedPendingResult(Status status) {
        Preconditions.checkNotNull(status, "The input status cannot be null");
        Preconditions.checkArgument(!status.isSuccess(), "The input status must be call with success status");
        return new FailPendingResult(this, status);
    }

    public Status onFailed(Status status) {
        Preconditions.checkNotNull(status, "The input status cannot be null");
        return status.getStatusCode() != 0 ? status : Status.CoreException;
    }

    public abstract PendingResult onSuccess(Result result);
}
