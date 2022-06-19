package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a.class */
public final class RunnableC7644a implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f34965d;

    /* renamed from: e */
    final /* synthetic */ long f34966e;

    /* renamed from: f */
    final /* synthetic */ C7647a2 f34967f;

    public RunnableC7644a(C7647a2 c7647a2, String str, long j) {
        this.f34967f = c7647a2;
        this.f34965d = str;
        this.f34966e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7647a2.m6596j(this.f34967f, this.f34965d, this.f34966e);
    }
}
