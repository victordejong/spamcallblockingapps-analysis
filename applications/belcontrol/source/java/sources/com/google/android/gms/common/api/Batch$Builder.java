package com.google.android.gms.common.api;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch$Builder.class */
public final class Batch$Builder {
    private List<PendingResult<?>> zaa = new ArrayList();
    private GoogleApiClient zab;

    public Batch$Builder(GoogleApiClient googleApiClient) {
        this.zab = googleApiClient;
    }

    public final <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
        BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.zaa.size());
        this.zaa.add(pendingResult);
        return batchResultToken;
    }

    public final Batch build() {
        return new Batch(this.zaa, this.zab, (zab) null);
    }
}
