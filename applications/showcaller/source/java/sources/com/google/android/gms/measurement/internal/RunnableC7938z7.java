package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.z7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/z7.class */
public final class RunnableC7938z7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35849d;

    /* renamed from: e */
    final /* synthetic */ boolean f35850e;

    /* renamed from: f */
    final /* synthetic */ zzaa f35851f;

    /* renamed from: g */
    final /* synthetic */ zzaa f35852g;

    /* renamed from: h */
    final /* synthetic */ C7773k8 f35853h;

    public RunnableC7938z7(C7773k8 c7773k8, boolean z, zzp zzpVar, boolean z2, zzaa zzaaVar, zzaa zzaaVar2) {
        this.f35853h = c7773k8;
        this.f35849d = zzpVar;
        this.f35850e = z2;
        this.f35851f = zzaaVar;
        this.f35852g = zzaaVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35853h.f35402d;
        if (abstractC7708f3 == null) {
            this.f35853h.f35460a.mo6047C().m6195m().m6216a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        C6155o.m17018j(this.f35849d);
        this.f35853h.m6282K(abstractC7708f3, this.f35850e ? null : this.f35851f, this.f35849d);
        this.f35853h.m6289D();
    }
}
