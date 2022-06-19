package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabw.class */
public final class zabw {
    public final RegisterListenerMethod<Api.AnyClient, ?> zajx;
    public final UnregisterListenerMethod<Api.AnyClient, ?> zajy;

    public zabw(RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod) {
        this.zajx = registerListenerMethod;
        this.zajy = unregisterListenerMethod;
    }
}
