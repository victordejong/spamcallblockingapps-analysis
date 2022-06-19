package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Batch.class */
public final class Batch extends BasePendingResult<BatchResult> {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/Batch$Builder.class */
    public static final class Builder {
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    @RecentlyNonNull
    public final BatchResult createFailedResult(@RecentlyNonNull Status status) {
        return new BatchResult(status, null);
    }
}
