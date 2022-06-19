package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y.class */
final class RunnableC2370y implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f10485b;

    /* renamed from: c */
    final /* synthetic */ long f10486c;

    /* renamed from: d */
    final /* synthetic */ a2 f10487d;

    RunnableC2370y(a2 a2Var, String str, long j) {
        this.f10487d = a2Var;
        this.f10485b = str;
        this.f10486c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a2.k(this.f10487d, this.f10485b, this.f10486c);
    }
}
