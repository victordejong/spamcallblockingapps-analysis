package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zacc.class */
public final class zacc {

    /* renamed from: a */
    public final RegisterListenerMethod<Api.AnyClient, ?> f5868a;

    /* renamed from: b */
    public final UnregisterListenerMethod<Api.AnyClient, ?> f5869b;

    /* renamed from: c */
    public final Runnable f5870c;

    public zacc(RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, Runnable runnable) {
        this.f5868a = registerListenerMethod;
        this.f5869b = unregisterListenerMethod;
        this.f5870c = runnable;
    }
}
