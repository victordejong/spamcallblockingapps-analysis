package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k.class */
public final class RunnableC7764k implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7815o5 f35372d;

    /* renamed from: e */
    final /* synthetic */ AbstractC7776l f35373e;

    public RunnableC7764k(AbstractC7776l abstractC7776l, AbstractC7815o5 abstractC7815o5) {
        this.f35373e = abstractC7776l;
        this.f35372d = abstractC7815o5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35372d.mo6028c();
        if (C7775ka.m6256a()) {
            this.f35372d.mo6029b().m6109p(this);
            return;
        }
        boolean m6254c = this.f35373e.m6254c();
        this.f35373e.f35413d = 0L;
        if (!m6254c) {
            return;
        }
        this.f35373e.mo5892a();
    }
}
