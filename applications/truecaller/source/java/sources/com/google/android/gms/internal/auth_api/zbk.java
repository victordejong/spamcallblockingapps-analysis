package com.google.android.gms.internal.auth_api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbk.class */
public final class zbk extends zbd {
    private final BaseImplementation.ResultHolder<Status> zba;

    public zbk(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.zba = resultHolder;
    }

    @Override // com.google.android.gms.internal.auth_api.zbd
    public final void zbc(Status status) {
        this.zba.setResult(status);
    }
}
