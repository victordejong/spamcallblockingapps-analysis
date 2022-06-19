package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/zaf.class */
final class zaf<R extends Result> extends BasePendingResult<R> {
    private final R zae;

    public zaf(GoogleApiClient googleApiClient, R r) {
        super(googleApiClient);
        this.zae = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        return this.zae;
    }
}
