package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/DataHolderResult.class */
public abstract class DataHolderResult implements Result, Releasable {
    @Override // com.google.android.gms.common.api.Result
    @RecentlyNonNull
    @KeepForSdk
    public Status getStatus() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Releasable
    @KeepForSdk
    public void release() {
    }
}
