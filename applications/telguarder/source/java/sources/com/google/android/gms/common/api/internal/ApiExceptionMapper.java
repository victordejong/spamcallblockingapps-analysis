package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ApiExceptionMapper.class */
public class ApiExceptionMapper implements StatusExceptionMapper {
    @Override // com.google.android.gms.common.api.internal.StatusExceptionMapper
    public final Exception getException(Status status) {
        return ApiExceptionUtil.fromStatus(status);
    }
}
