package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gj.class */
public final class RunnableC14024gj implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51700a;

    /* renamed from: b */
    final /* synthetic */ String f51701b;

    /* renamed from: c */
    final /* synthetic */ String f51702c;

    /* renamed from: d */
    final /* synthetic */ boolean f51703d;

    /* renamed from: e */
    final /* synthetic */ C14036gv f51704e;

    public RunnableC14024gj(C14036gv c14036gv, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f51704e = c14036gv;
        this.f51700a = atomicReference;
        this.f51701b = str2;
        this.f51702c = str3;
        this.f51703d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51704e.f51637t.m11984m().m11743a(this.f51700a, this.f51701b, this.f51702c, this.f51703d);
    }
}
