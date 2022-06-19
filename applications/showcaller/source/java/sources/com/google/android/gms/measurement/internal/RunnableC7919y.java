package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y.class */
public final class RunnableC7919y implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f35806d;

    /* renamed from: e */
    final /* synthetic */ long f35807e;

    /* renamed from: f */
    final /* synthetic */ C7647a2 f35808f;

    public RunnableC7919y(C7647a2 c7647a2, String str, long j) {
        this.f35808f = c7647a2;
        this.f35806d = str;
        this.f35807e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7647a2.m6595k(this.f35808f, this.f35806d, this.f35807e);
    }
}
