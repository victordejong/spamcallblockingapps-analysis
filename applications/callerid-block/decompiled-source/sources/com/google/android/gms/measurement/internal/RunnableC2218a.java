package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a.class */
final class RunnableC2218a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f9960b;

    /* renamed from: c */
    final /* synthetic */ long f9961c;

    /* renamed from: d */
    final /* synthetic */ a2 f9962d;

    RunnableC2218a(a2 a2Var, String str, long j) {
        this.f9962d = a2Var;
        this.f9960b = str;
        this.f9961c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a2.j(this.f9962d, this.f9960b, this.f9961c);
    }
}
