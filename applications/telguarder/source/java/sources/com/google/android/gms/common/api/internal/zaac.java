package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaac.class */
final class zaac {
    private final ApiKey<?> zaa;
    private final TaskCompletionSource<Boolean> zab = new TaskCompletionSource<>();

    public zaac(ApiKey<?> apiKey) {
        this.zaa = apiKey;
    }

    public final ApiKey<?> zaa() {
        return this.zaa;
    }

    public final TaskCompletionSource<Boolean> zab() {
        return this.zab;
    }
}
