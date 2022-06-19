package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.d8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/d8.class */
final class RunnableC7689d8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7708f3 f35184d;

    /* renamed from: e */
    final /* synthetic */ ServiceConnectionC7761j8 f35185e;

    public RunnableC7689d8(ServiceConnectionC7761j8 serviceConnectionC7761j8, AbstractC7708f3 abstractC7708f3) {
        this.f35185e = serviceConnectionC7761j8;
        this.f35184d = abstractC7708f3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f35185e) {
            this.f35185e.f35363a = false;
            if (!this.f35185e.f35365c.m6285H()) {
                this.f35185e.f35365c.f35460a.mo6047C().m6187u().m6216a("Connected to service");
                this.f35185e.f35365c.m6265q(this.f35184d);
            }
        }
    }
}
