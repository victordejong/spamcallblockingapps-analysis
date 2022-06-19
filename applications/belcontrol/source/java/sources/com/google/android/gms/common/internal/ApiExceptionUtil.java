package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ApiExceptionUtil.class */
public class ApiExceptionUtil {
    @KeepForSdk
    public static ApiException fromStatus(Status status) {
        return status.hasResolution() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
