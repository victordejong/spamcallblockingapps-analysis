package com.google.android.gms.common.api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BatchResult.class */
public final class BatchResult implements Result {

    /* renamed from: f */
    private final Status f7008f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.f7008f = status;
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: k */
    public final Status mo10851k() {
        return this.f7008f;
    }
}
