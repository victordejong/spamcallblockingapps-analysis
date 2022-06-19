package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q22.class */
final /* synthetic */ class q22 implements Executor {

    /* renamed from: d */
    private final Handler f28298d;

    private q22(Handler handler) {
        this.f28298d = handler;
    }

    /* renamed from: b */
    public static Executor m12039b(Handler handler) {
        return new q22(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f28298d.post(runnable);
    }
}
