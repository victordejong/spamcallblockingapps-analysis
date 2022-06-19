package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/StatusPendingResult.class */
public class StatusPendingResult extends BasePendingResult<Status> {
    @KeepForSdk
    public StatusPendingResult(@RecentlyNonNull GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    @RecentlyNonNull
    public final /* bridge */ /* synthetic */ Status createFailedResult(@RecentlyNonNull Status status) {
        return status;
    }
}
