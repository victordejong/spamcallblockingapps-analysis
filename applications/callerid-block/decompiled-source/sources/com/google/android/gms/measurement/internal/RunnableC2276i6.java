package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.i6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i6.class */
final class RunnableC2276i6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10237b;

    /* renamed from: c */
    final /* synthetic */ String f10238c;

    /* renamed from: d */
    final /* synthetic */ String f10239d;

    /* renamed from: e */
    final /* synthetic */ v6 f10240e;

    RunnableC2276i6(v6 v6Var, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f10240e = v6Var;
        this.f10237b = atomicReference;
        this.f10238c = str2;
        this.f10239d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((m5) this.f10240e).a.R().N(this.f10237b, (String) null, this.f10238c, this.f10239d);
    }
}
