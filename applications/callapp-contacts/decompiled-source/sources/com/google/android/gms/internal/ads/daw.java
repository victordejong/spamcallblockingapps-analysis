package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daw.class */
public abstract class daw<T> extends dbp<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f26687a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dau f26688b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public daw(dau dauVar, Executor executor) {
        this.f26688b = dauVar;
        this.f26687a = (Executor) cyg.a(executor);
    }

    abstract void a(T t);

    @Override // com.google.android.gms.internal.ads.dbp
    final void a(T t, Throwable th) {
        this.f26688b.f26685a = null;
        if (th == null) {
            a(t);
        } else if (th instanceof ExecutionException) {
            this.f26688b.a(th.getCause());
        } else if (th instanceof CancellationException) {
            this.f26688b.cancel(false);
        } else {
            this.f26688b.a(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbp
    final boolean a() {
        return this.f26688b.isDone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        try {
            this.f26687a.execute(this);
        } catch (RejectedExecutionException e) {
            this.f26688b.a((Throwable) e);
        }
    }
}
