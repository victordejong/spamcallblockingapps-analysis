package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RemoteCall.class */
public interface RemoteCall<T, U> {
    @KeepForSdk
    void accept(T t, U u);
}
