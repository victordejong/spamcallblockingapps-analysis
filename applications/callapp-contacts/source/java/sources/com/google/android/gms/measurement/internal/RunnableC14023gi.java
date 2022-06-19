package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gi.class */
public final class RunnableC14023gi implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f51696a;

    /* renamed from: b */
    final /* synthetic */ String f51697b;

    /* renamed from: c */
    final /* synthetic */ String f51698c;

    /* renamed from: d */
    final /* synthetic */ C14036gv f51699d;

    public RunnableC14023gi(C14036gv c14036gv, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f51699d = c14036gv;
        this.f51696a = atomicReference;
        this.f51697b = str2;
        this.f51698c = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51699d.f51637t.m11984m().m11744a(this.f51696a, this.f51697b, this.f51698c);
    }
}
