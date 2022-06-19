package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.f5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f5.class */
final class RunnableC7710f5 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzas f35247d;

    /* renamed from: e */
    final /* synthetic */ String f35248e;

    /* renamed from: f */
    final /* synthetic */ BinderC7782l5 f35249f;

    public RunnableC7710f5(BinderC7782l5 binderC7782l5, zzas zzasVar, String str) {
        this.f35249f = binderC7782l5;
        this.f35247d = zzasVar;
        this.f35248e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        c7819o9 = this.f35249f.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35249f.f35423d;
        c7819o92.m6140i0(this.f35247d, this.f35248e);
    }
}
