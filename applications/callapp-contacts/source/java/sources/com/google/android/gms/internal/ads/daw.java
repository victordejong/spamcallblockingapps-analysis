package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daw.class */
public abstract class daw<T> extends dbp<T> {

    /* renamed from: a */
    private final Executor f46906a;

    /* renamed from: b */
    private final /* synthetic */ dau f46907b;

    public daw(dau dauVar, Executor executor) {
        this.f46907b = dauVar;
        this.f46906a = (Executor) cyg.m17060a(executor);
    }

    /* renamed from: a */
    abstract void mo16913a(T t);

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: a */
    final void mo16874a(T t, Throwable th) {
        this.f46907b.f46904a = null;
        if (th == null) {
            mo16913a(t);
        } else if (th instanceof ExecutionException) {
            this.f46907b.mo16882a(th.getCause());
        } else if (th instanceof CancellationException) {
            this.f46907b.cancel(false);
        } else {
            this.f46907b.mo16882a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbp
    /* renamed from: a */
    final boolean mo16875a() {
        return this.f46907b.isDone();
    }

    /* renamed from: b */
    public final void m16914b() {
        try {
            this.f46906a.execute(this);
        } catch (RejectedExecutionException e) {
            this.f46907b.mo16882a((Throwable) e);
        }
    }
}
