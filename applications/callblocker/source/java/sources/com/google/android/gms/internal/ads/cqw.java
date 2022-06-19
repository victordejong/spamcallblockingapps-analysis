package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqw.class */
public abstract class cqw<T> extends crp<T> {

    /* renamed from: a */
    boolean f13597a = true;

    /* renamed from: b */
    private final Executor f13598b;

    /* renamed from: c */
    private final /* synthetic */ cqu f13599c;

    public cqw(cqu cquVar, Executor executor) {
        this.f13599c = cquVar;
        this.f13598b = (Executor) cor.m10936a(executor);
    }

    /* renamed from: a */
    abstract void mo10794a(T t);

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: a */
    final void mo10742a(T t, Throwable th) {
        this.f13599c.f13596a = null;
        if (th == null) {
            mo10794a(t);
        } else if (th instanceof ExecutionException) {
            this.f13599c.mo10754a(th.getCause());
        } else if (th instanceof CancellationException) {
            this.f13599c.cancel(false);
        } else {
            this.f13599c.mo10754a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.crp
    /* renamed from: a */
    final boolean mo10743a() {
        return this.f13599c.isDone();
    }

    /* renamed from: b */
    public final void m10795b() {
        try {
            this.f13598b.execute(this);
        } catch (RejectedExecutionException e) {
            if (!this.f13597a) {
                return;
            }
            this.f13599c.mo10754a((Throwable) e);
        }
    }
}
