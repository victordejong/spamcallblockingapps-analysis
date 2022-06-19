package com.google.android.gms.common.api.internal;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabf.class */
final /* synthetic */ class zabf implements Executor {
    private final Handler zaa;

    private zabf(Handler handler) {
        this.zaa = handler;
    }

    public static Executor zaa(Handler handler) {
        return new zabf(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zaa.post(runnable);
    }
}
