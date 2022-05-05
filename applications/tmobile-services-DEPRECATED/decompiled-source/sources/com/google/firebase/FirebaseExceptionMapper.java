package com.google.firebase;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseExceptionMapper.class */
public class FirebaseExceptionMapper implements StatusExceptionMapper {
    @Override // com.google.android.gms.common.api.internal.StatusExceptionMapper
    public Exception getException(Status status) {
        return status.m15000B() == 8 ? new FirebaseException(status.m14994u0()) : new FirebaseApiNotAvailableException(status.m14994u0());
    }
}
