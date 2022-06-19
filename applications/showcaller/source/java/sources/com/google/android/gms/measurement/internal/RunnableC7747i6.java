package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.i6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i6.class */
public final class RunnableC7747i6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35336d;

    /* renamed from: e */
    final /* synthetic */ String f35337e;

    /* renamed from: f */
    final /* synthetic */ String f35338f;

    /* renamed from: g */
    final /* synthetic */ C7893v6 f35339g;

    public RunnableC7747i6(C7893v6 c7893v6, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f35339g = c7893v6;
        this.f35336d = atomicReference;
        this.f35337e = str2;
        this.f35338f = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35339g.f35460a.m6032R().m6279N(this.f35336d, null, this.f35337e, this.f35338f);
    }
}
