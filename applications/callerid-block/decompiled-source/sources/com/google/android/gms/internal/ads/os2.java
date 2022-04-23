package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/os2.class */
final class os2 implements Executor {

    /* renamed from: b */
    final /* synthetic */ Handler f7902b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public os2(qu2 qu2Var, Handler handler) {
        this.f7902b = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f7902b.post(runnable);
    }
}
