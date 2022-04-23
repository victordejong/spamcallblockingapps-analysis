package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch.class */
public final class Batch extends BasePendingResult<BatchResult> {

    /* renamed from: q */
    private int f7003q;

    /* renamed from: r */
    private boolean f7004r;

    /* renamed from: s */
    private boolean f7005s;

    /* renamed from: t */
    private final PendingResult<?>[] f7006t;

    /* renamed from: u */
    private final Object f7007u;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch$Builder.class */
    public static final class Builder {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static /* synthetic */ int m15018w(Batch batch) {
        int i = batch.f7003q;
        batch.f7003q = i - 1;
        return i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    /* renamed from: b */
    public final void mo14772b() {
        super.mo14772b();
        for (PendingResult<?> pendingResult : this.f7006t) {
            pendingResult.mo14772b();
        }
    }

    /* renamed from: t */
    public final BatchResult mo14042e(Status status) {
        return new BatchResult(status, this.f7006t);
    }
}
