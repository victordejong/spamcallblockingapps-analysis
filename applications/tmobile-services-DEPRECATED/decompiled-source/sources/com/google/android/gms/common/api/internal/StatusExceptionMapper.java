package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/StatusExceptionMapper.class */
public interface StatusExceptionMapper {
    @KeepForSdk
    Exception getException(Status status);
}
