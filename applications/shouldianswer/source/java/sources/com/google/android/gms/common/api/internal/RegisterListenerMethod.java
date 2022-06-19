package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegisterListenerMethod.class */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {
    private final ListenerHolder<L> zaju;
    private final Feature[] zajv;
    private final boolean zajw;

    protected RegisterListenerMethod(ListenerHolder<L> listenerHolder) {
        this.zaju = listenerHolder;
        this.zajv = null;
        this.zajw = false;
    }

    public RegisterListenerMethod(ListenerHolder<L> listenerHolder, Feature[] featureArr, boolean z) {
        this.zaju = listenerHolder;
        this.zajv = featureArr;
        this.zajw = z;
    }

    public void clearListener() {
        this.zaju.clear();
    }

    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.zaju.getListenerKey();
    }

    public Feature[] getRequiredFeatures() {
        return this.zajv;
    }

    public abstract void registerListener(A a, TaskCompletionSource<Void> taskCompletionSource);

    public final boolean shouldAutoResolveMissingFeatures() {
        return this.zajw;
    }
}
