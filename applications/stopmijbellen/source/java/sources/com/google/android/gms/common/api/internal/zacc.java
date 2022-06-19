package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacc.class */
public final class zacc {
    public final RegisterListenerMethod<Api.AnyClient, ?> zaa;
    public final UnregisterListenerMethod<Api.AnyClient, ?> zab;
    public final Runnable zac;

    public zacc(RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, Runnable runnable) {
        this.zaa = registerListenerMethod;
        this.zab = unregisterListenerMethod;
        this.zac = runnable;
    }
}
