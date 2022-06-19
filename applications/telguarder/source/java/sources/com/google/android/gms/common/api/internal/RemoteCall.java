package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RemoteCall.class */
public interface RemoteCall<T, U> {
    void accept(T t, U u) throws RemoteException;
}
