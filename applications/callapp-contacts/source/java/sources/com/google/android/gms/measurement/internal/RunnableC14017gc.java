package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gc.class */
public final class RunnableC14017gc implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f51681a;

    /* renamed from: b */
    final /* synthetic */ String f51682b;

    /* renamed from: c */
    final /* synthetic */ Object f51683c;

    /* renamed from: d */
    final /* synthetic */ long f51684d;

    /* renamed from: e */
    final /* synthetic */ C14036gv f51685e;

    public RunnableC14017gc(C14036gv c14036gv, String str, String str2, Object obj, long j) {
        this.f51685e = c14036gv;
        this.f51681a = str;
        this.f51682b = str2;
        this.f51683c = obj;
        this.f51684d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51685e.m11854a(this.f51681a, this.f51682b, this.f51683c, this.f51684d);
    }
}
