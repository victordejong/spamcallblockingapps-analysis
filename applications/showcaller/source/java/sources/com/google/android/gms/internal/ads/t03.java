package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t03.class */
public final class t03 implements Executor {

    /* renamed from: d */
    final /* synthetic */ Executor f29769d;

    /* renamed from: e */
    final /* synthetic */ fz2 f29770e;

    public t03(Executor executor, fz2 fz2Var) {
        this.f29769d = executor;
        this.f29770e = fz2Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f29769d.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.f29770e.mo8631v(e);
        }
    }
}
