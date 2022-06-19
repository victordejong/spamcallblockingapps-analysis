package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.g8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/g8.class */
final class RunnableC7725g8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC7708f3 f35293d;

    /* renamed from: e */
    final /* synthetic */ ServiceConnectionC7761j8 f35294e;

    public RunnableC7725g8(ServiceConnectionC7761j8 serviceConnectionC7761j8, AbstractC7708f3 abstractC7708f3) {
        this.f35294e = serviceConnectionC7761j8;
        this.f35293d = abstractC7708f3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f35294e) {
            this.f35294e.f35363a = false;
            if (!this.f35294e.f35365c.m6285H()) {
                this.f35294e.f35365c.f35460a.mo6047C().m6188t().m6216a("Connected to remote service");
                this.f35294e.f35365c.m6265q(this.f35293d);
            }
        }
    }
}
