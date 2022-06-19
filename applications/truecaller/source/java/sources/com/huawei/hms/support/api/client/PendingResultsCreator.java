package com.huawei.hms.support.api.client;

import com.huawei.hms.common.api.OptionalPendingResult;
import com.huawei.hms.common.api.internal.OptionalPendingResultImpl;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/client/PendingResultsCreator.class */
public final class PendingResultsCreator {
    public static PendingResult<Status> discardedPendingResult() {
        return new DiscardedPendingResult();
    }

    public static <R extends Result> PendingResult<R> discardedPendingResult(R r) {
        return new DiscardedPendingResult(r);
    }

    public static <R extends Result> OptionalPendingResult<R> instantPendingResult(R r) {
        return new OptionalPendingResultImpl(new InstantPendingResult(r));
    }

    public static PendingResult<Status> instantPendingResult(Status status) {
        return new InstantPendingResult(status);
    }
}
