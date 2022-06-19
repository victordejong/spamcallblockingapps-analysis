package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaf.class */
final class zaaf {
    private final zai<?> zafq;
    private final TaskCompletionSource<Boolean> zafr = new TaskCompletionSource<>();

    public zaaf(zai<?> zaiVar) {
        this.zafq = zaiVar;
    }

    public final TaskCompletionSource<Boolean> zaal() {
        return this.zafr;
    }

    public final zai<?> zak() {
        return this.zafq;
    }
}
