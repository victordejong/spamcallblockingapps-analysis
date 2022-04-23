package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/StatusPendingResult.class */
public class StatusPendingResult extends BasePendingResult<Status> {
    public StatusPendingResult(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public /* synthetic */ Status mo17597a(Status status) {
        return status;
    }
}
