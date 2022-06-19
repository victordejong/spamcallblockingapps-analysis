package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.j6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j6.class */
public final class RunnableC7759j6 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35357d;

    /* renamed from: e */
    final /* synthetic */ String f35358e;

    /* renamed from: f */
    final /* synthetic */ String f35359f;

    /* renamed from: g */
    final /* synthetic */ boolean f35360g;

    /* renamed from: h */
    final /* synthetic */ C7893v6 f35361h;

    public RunnableC7759j6(C7893v6 c7893v6, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f35361h = c7893v6;
        this.f35357d = atomicReference;
        this.f35358e = str2;
        this.f35359f = str3;
        this.f35360g = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35361h.f35460a.m6032R().m6277P(this.f35357d, null, this.f35358e, this.f35359f, this.f35360g);
    }
}
