package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tz1.class */
final class tz1 implements Executor {

    /* renamed from: b */
    final /* synthetic */ Executor f8737b;

    /* renamed from: c */
    final /* synthetic */ wx1 f8738c;

    public tz1(Executor executor, wx1 wx1Var) {
        this.f8737b = executor;
        this.f8738c = wx1Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f8737b.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.f8738c.n(e);
        }
    }
}
