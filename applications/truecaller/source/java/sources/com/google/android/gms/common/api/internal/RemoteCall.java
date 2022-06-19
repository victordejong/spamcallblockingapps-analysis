package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/RemoteCall.class */
public interface RemoteCall<T, U> {
    @KeepForSdk
    void accept(@RecentlyNonNull T t, @RecentlyNonNull U u) throws RemoteException;
}
