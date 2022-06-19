package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.i7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i7.class */
public final class RunnableC7748i7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7676c7 f35340d;

    /* renamed from: e */
    final /* synthetic */ long f35341e;

    /* renamed from: f */
    final /* synthetic */ C7772k7 f35342f;

    public RunnableC7748i7(C7772k7 c7772k7, C7676c7 c7676c7, long j) {
        this.f35342f = c7772k7;
        this.f35340d = c7676c7;
        this.f35341e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35342f.m6302o(this.f35340d, false, this.f35341e);
        C7772k7 c7772k7 = this.f35342f;
        c7772k7.f35391e = null;
        c7772k7.f35460a.m6032R().m6270W(null);
    }
}
