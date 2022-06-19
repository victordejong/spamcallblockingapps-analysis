package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbu.class */
public final class dbu implements Executor {

    /* renamed from: a */
    private final /* synthetic */ Executor f46926a;

    /* renamed from: b */
    private final /* synthetic */ dag f46927b;

    public dbu(Executor executor, dag dagVar) {
        this.f46926a = executor;
        this.f46927b = dagVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f46926a.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.f46927b.mo16882a((Throwable) e);
        }
    }
}
