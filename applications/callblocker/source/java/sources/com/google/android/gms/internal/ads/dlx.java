package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlx.class */
public final class dlx implements Executor {

    /* renamed from: a */
    private final /* synthetic */ Handler f14701a;

    public dlx(dmv dmvVar, Handler handler) {
        this.f14701a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f14701a.post(runnable);
    }
}
