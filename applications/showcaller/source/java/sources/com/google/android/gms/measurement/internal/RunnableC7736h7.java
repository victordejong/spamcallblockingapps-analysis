package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.h7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/h7.class */
public final class RunnableC7736h7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ long f35308d;

    /* renamed from: e */
    final /* synthetic */ C7772k7 f35309e;

    public RunnableC7736h7(C7772k7 c7772k7, long j) {
        this.f35309e = c7772k7;
        this.f35308d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35309e.f35460a.m6026e().m6597i(this.f35308d);
        this.f35309e.f35391e = null;
    }
}
