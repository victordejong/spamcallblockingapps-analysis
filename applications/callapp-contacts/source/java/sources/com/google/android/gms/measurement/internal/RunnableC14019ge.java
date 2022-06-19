package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ge */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ge.class */
public final class RunnableC14019ge implements Runnable {

    /* renamed from: a */
    final /* synthetic */ long f51688a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51689b;

    public RunnableC14019ge(C14036gv c14036gv, long j) {
        this.f51689b = c14036gv;
        this.f51688a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51689b.m11873a(this.f51688a, true);
        this.f51689b.f51637t.m11984m().m11745a(new AtomicReference<>());
    }
}
