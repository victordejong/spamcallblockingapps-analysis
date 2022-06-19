package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/BatchResult.class */
public final class BatchResult implements Result {

    /* renamed from: a */
    public final Status f5695a;

    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.f5695a = status;
    }

    @Override // com.google.android.gms.common.api.Result
    @RecentlyNonNull
    public Status getStatus() {
        return this.f5695a;
    }
}
