package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/StatusExceptionMapper.class */
public interface StatusExceptionMapper {
    @RecentlyNonNull
    @KeepForSdk
    Exception getException(@RecentlyNonNull Status status);
}
