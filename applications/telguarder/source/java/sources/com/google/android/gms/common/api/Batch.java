package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch.class */
public final class Batch extends BasePendingResult<BatchResult> {
    private int zae;
    private boolean zaf;
    private boolean zag;
    private final PendingResult<?>[] zah;
    private final Object zai = new Object();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch$Builder.class */
    public static final class Builder {
        private List<PendingResult<?>> zaa = new ArrayList();
        private GoogleApiClient zab;

        public Builder(GoogleApiClient googleApiClient) {
            this.zab = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.zaa.size());
            this.zaa.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.zaa, this.zab, null);
        }
    }

    /* synthetic */ Batch(List list, GoogleApiClient googleApiClient, zab zabVar) {
        super(googleApiClient);
        int size = list.size();
        this.zae = size;
        PendingResult<?>[] pendingResultArr = new PendingResult[size];
        this.zah = pendingResultArr;
        if (list.isEmpty()) {
            setResult(new BatchResult(Status.RESULT_SUCCESS, pendingResultArr));
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            PendingResult<?> pendingResult = (PendingResult) list.get(i);
            this.zah[i] = pendingResult;
            pendingResult.addStatusListener(new zab(this));
        }
    }

    public static /* synthetic */ int zad(Batch batch) {
        int i = batch.zae;
        batch.zae = i - 1;
        return i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.zah) {
            pendingResult.cancel();
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.zah);
    }
}
