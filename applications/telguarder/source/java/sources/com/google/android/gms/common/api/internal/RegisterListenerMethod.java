package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegisterListenerMethod.class */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {
    private final ListenerHolder<L> zaa;
    private final Feature[] zab;
    private final boolean zac;
    private final int zad;

    protected RegisterListenerMethod(ListenerHolder<L> listenerHolder) {
        this(listenerHolder, null, false, 0);
    }

    protected RegisterListenerMethod(ListenerHolder<L> listenerHolder, Feature[] featureArr, boolean z) {
        this(listenerHolder, featureArr, z, 0);
    }

    public RegisterListenerMethod(ListenerHolder<L> listenerHolder, Feature[] featureArr, boolean z, int i) {
        this.zaa = listenerHolder;
        this.zab = featureArr;
        this.zac = z;
        this.zad = i;
    }

    public void clearListener() {
        this.zaa.clear();
    }

    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.zaa.getListenerKey();
    }

    public Feature[] getRequiredFeatures() {
        return this.zab;
    }

    public abstract void registerListener(A a, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    public final boolean zaa() {
        return this.zac;
    }

    public final int zab() {
        return this.zad;
    }
}
