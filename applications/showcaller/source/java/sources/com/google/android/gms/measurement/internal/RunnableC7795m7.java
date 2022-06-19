package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.m7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/m7.class */
public final class RunnableC7795m7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35463d;

    /* renamed from: e */
    final /* synthetic */ boolean f35464e;

    /* renamed from: f */
    final /* synthetic */ zzkl f35465f;

    /* renamed from: g */
    final /* synthetic */ C7773k8 f35466g;

    public RunnableC7795m7(C7773k8 c7773k8, zzp zzpVar, boolean z, zzkl zzklVar) {
        this.f35466g = c7773k8;
        this.f35463d = zzpVar;
        this.f35464e = z;
        this.f35465f = zzklVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35466g.f35402d;
        if (abstractC7708f3 == null) {
            this.f35466g.f35460a.mo6047C().m6195m().m6216a("Discarding data. Failed to set user property");
            return;
        }
        C6155o.m17018j(this.f35463d);
        this.f35466g.m6282K(abstractC7708f3, this.f35464e ? null : this.f35465f, this.f35463d);
        this.f35466g.m6289D();
    }
}
