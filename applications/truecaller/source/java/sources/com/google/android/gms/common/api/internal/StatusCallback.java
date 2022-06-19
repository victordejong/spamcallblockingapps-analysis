package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.IStatusCallback;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/StatusCallback.class */
public class StatusCallback extends IStatusCallback.Stub {
    @KeepForSdk

    /* renamed from: a */
    public final BaseImplementation.ResultHolder<Status> f5774a;

    @KeepForSdk
    public StatusCallback(@RecentlyNonNull BaseImplementation.ResultHolder<Status> resultHolder) {
        this.f5774a = resultHolder;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    @KeepForSdk
    public void onResult(@RecentlyNonNull Status status) {
        this.f5774a.setResult(status);
    }
}
