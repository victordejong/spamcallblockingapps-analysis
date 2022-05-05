package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/UnregisterListenerMethod.class */
public abstract class UnregisterListenerMethod<A extends Api.AnyClient, L> {

    /* renamed from: a */
    private final ListenerHolder.ListenerKey<L> f7125a;

    @KeepForSdk
    /* renamed from: a */
    public ListenerHolder.ListenerKey<L> m14863a() {
        return this.f7125a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    /* renamed from: b */
    public abstract void mo14778b(A a, TaskCompletionSource<Boolean> taskCompletionSource) throws RemoteException;
}
