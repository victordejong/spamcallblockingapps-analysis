package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbu.class */
final class dbu implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Executor f26707a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dag f26708b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dbu(Executor executor, dag dagVar) {
        this.f26707a = executor;
        this.f26708b = dagVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f26707a.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.f26708b.a((Throwable) e);
        }
    }
}
