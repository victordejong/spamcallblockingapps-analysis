package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.y7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y7.class */
public final class RunnableC7927y7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35826d;

    /* renamed from: e */
    final /* synthetic */ boolean f35827e;

    /* renamed from: f */
    final /* synthetic */ zzas f35828f;

    /* renamed from: g */
    final /* synthetic */ String f35829g;

    /* renamed from: h */
    final /* synthetic */ C7773k8 f35830h;

    public RunnableC7927y7(C7773k8 c7773k8, boolean z, zzp zzpVar, boolean z2, zzas zzasVar, String str) {
        this.f35830h = c7773k8;
        this.f35826d = zzpVar;
        this.f35827e = z2;
        this.f35828f = zzasVar;
        this.f35829g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        abstractC7708f3 = this.f35830h.f35402d;
        if (abstractC7708f3 == null) {
            this.f35830h.f35460a.mo6047C().m6195m().m6216a("Discarding data. Failed to send event to service");
            return;
        }
        C6155o.m17018j(this.f35826d);
        this.f35830h.m6282K(abstractC7708f3, this.f35827e ? null : this.f35828f, this.f35826d);
        this.f35830h.m6289D();
    }
}
