package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/RegisterListenerMethod.class */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {

    /* renamed from: a */
    public final ListenerHolder<L> f5769a;

    /* renamed from: b */
    public final Feature[] f5770b = null;

    /* renamed from: c */
    public final boolean f5771c = false;

    /* renamed from: d */
    public final int f5772d = 0;

    @KeepForSdk
    public RegisterListenerMethod(@RecentlyNonNull ListenerHolder<L> listenerHolder) {
        this.f5769a = listenerHolder;
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract void m39019a(@RecentlyNonNull A a, @RecentlyNonNull TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;
}
