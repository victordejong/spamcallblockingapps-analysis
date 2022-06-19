package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.j6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/j6.class */
final class RunnableC2282j6 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AtomicReference f10248b;

    /* renamed from: c */
    final /* synthetic */ String f10249c;

    /* renamed from: d */
    final /* synthetic */ String f10250d;

    /* renamed from: e */
    final /* synthetic */ boolean f10251e;

    /* renamed from: f */
    final /* synthetic */ v6 f10252f;

    RunnableC2282j6(v6 v6Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f10252f = v6Var;
        this.f10248b = atomicReference;
        this.f10249c = str2;
        this.f10250d = str3;
        this.f10251e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((m5) this.f10252f).a.R().P(this.f10248b, (String) null, this.f10249c, this.f10250d, this.f10251e);
    }
}
