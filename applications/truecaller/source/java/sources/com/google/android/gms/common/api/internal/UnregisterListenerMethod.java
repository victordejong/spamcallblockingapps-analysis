package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/UnregisterListenerMethod.class */
public abstract class UnregisterListenerMethod<A extends Api.AnyClient, L> {

    /* renamed from: a */
    public final ListenerHolder.ListenerKey<L> f5779a;

    @KeepForSdk
    public UnregisterListenerMethod(@RecentlyNonNull ListenerHolder.ListenerKey<L> listenerKey) {
        this.f5779a = listenerKey;
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract void m39014a(@RecentlyNonNull A a, @RecentlyNonNull TaskCompletionSource<Boolean> taskCompletionSource) throws RemoteException;
}
