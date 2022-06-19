package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ty3.class */
public final class ty3 implements Executor {

    /* renamed from: d */
    final /* synthetic */ Handler f30431d;

    public ty3(vy3 vy3Var, Handler handler) {
        this.f30431d = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f30431d.post(runnable);
    }
}
