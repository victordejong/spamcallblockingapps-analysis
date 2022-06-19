package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/ApiExceptionMapper.class */
public class ApiExceptionMapper implements StatusExceptionMapper {
    @Override // com.google.android.gms.common.api.internal.StatusExceptionMapper
    @RecentlyNonNull
    /* renamed from: a */
    public final Exception mo39017a(@RecentlyNonNull Status status) {
        return ApiExceptionUtil.m38920a(status);
    }
}
