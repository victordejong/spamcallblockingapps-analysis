package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.consent_sdk.an */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/an.class */
final /* synthetic */ class ExecutorC13183an implements Executor {

    /* renamed from: a */
    private final Handler f50308a;

    private ExecutorC13183an(Handler handler) {
        this.f50308a = handler;
    }

    /* renamed from: a */
    public static Executor m13579a(Handler handler) {
        return new ExecutorC13183an(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f50308a.post(runnable);
    }
}
