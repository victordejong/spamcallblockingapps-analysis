package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabv.class */
public final class zabv {

    /* renamed from: a */
    public final RegisterListenerMethod<Api.AnyClient, ?> f7249a;

    /* renamed from: b */
    public final UnregisterListenerMethod<Api.AnyClient, ?> f7250b;

    public zabv(@NonNull RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, @NonNull UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod) {
        this.f7249a = registerListenerMethod;
        this.f7250b = unregisterListenerMethod;
    }
}
