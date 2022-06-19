package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ApiExceptionUtil.class */
public class ApiExceptionUtil {
    @KeepForSdk
    /* renamed from: a */
    public static ApiException m38920a(@RecentlyNonNull Status status) {
        return status.m39044o2() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
