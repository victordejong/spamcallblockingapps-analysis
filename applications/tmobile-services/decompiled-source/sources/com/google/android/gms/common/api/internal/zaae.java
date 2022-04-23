package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaae.class */
final class zaae {

    /* renamed from: a */
    private final ApiKey<?> f7135a;

    /* renamed from: b */
    private final TaskCompletionSource<Boolean> f7136b = new TaskCompletionSource<>();

    public zaae(ApiKey<?> apiKey) {
        this.f7135a = apiKey;
    }

    /* renamed from: a */
    public final ApiKey<?> m14857a() {
        return this.f7135a;
    }

    /* renamed from: b */
    public final TaskCompletionSource<Boolean> m14856b() {
        return this.f7136b;
    }
}
