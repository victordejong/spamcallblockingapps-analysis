package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.c6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c6.class */
final class RunnableC2234c6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f10092b;

    /* renamed from: c */
    final /* synthetic */ String f10093c;

    /* renamed from: d */
    final /* synthetic */ Object f10094d;

    /* renamed from: e */
    final /* synthetic */ long f10095e;

    /* renamed from: f */
    final /* synthetic */ v6 f10096f;

    RunnableC2234c6(v6 v6Var, String str, String str2, Object obj, long j) {
        this.f10096f = v6Var;
        this.f10092b = str;
        this.f10093c = str2;
        this.f10094d = obj;
        this.f10095e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10096f.n(this.f10092b, this.f10093c, this.f10094d, this.f10095e);
    }
}
