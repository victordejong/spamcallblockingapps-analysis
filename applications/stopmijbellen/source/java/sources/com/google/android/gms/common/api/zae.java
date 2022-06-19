package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/zae.class */
final class zae<R extends Result> extends BasePendingResult<R> {
    private final R zae;

    public zae(R r) {
        super(Looper.getMainLooper());
        this.zae = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        if (status.getStatusCode() == this.zae.getStatus().getStatusCode()) {
            return this.zae;
        }
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
