package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil.class */
public class PendingResultUtil {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil$ResultConverter.class */
    public interface ResultConverter<R extends Result, T> {
        @KeepForSdk
        /* renamed from: a */
        T mo14431a(R r);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil$zaa.class */
    public interface zaa {
        /* renamed from: a */
        ApiException mo14433a(Status status);
    }
}
