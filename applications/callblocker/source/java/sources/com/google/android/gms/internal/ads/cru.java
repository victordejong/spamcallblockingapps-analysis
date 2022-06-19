package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cru.class */
public final class cru implements Executor {

    /* renamed from: a */
    boolean f13619a = true;

    /* renamed from: b */
    private final /* synthetic */ Executor f13620b;

    /* renamed from: c */
    private final /* synthetic */ cqf f13621c;

    public cru(Executor executor, cqf cqfVar) {
        this.f13620b = executor;
        this.f13621c = cqfVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f13620b.execute(new crx(this, runnable));
        } catch (RejectedExecutionException e) {
            if (!this.f13619a) {
                return;
            }
            this.f13621c.mo10754a((Throwable) e);
        }
    }
}
