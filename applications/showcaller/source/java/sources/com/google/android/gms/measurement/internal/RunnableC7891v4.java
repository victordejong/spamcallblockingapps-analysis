package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.v4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/v4.class */
final class RunnableC7891v4 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzaa f35735d;

    /* renamed from: e */
    final /* synthetic */ BinderC7782l5 f35736e;

    public RunnableC7891v4(BinderC7782l5 binderC7782l5, zzaa zzaaVar) {
        this.f35736e = binderC7782l5;
        this.f35735d = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        C7819o9 c7819o93;
        c7819o9 = this.f35736e.f35423d;
        c7819o9.m6137k();
        if (this.f35735d.f35862f.m5862k0() == null) {
            c7819o93 = this.f35736e.f35423d;
            c7819o93.m6124v(this.f35735d);
            return;
        }
        c7819o92 = this.f35736e.f35423d;
        c7819o92.m6126t(this.f35735d);
    }
}
