package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7382g9;
/* renamed from: com.google.android.gms.measurement.internal.c5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/c5.class */
final class RunnableC7674c5 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35115d;

    /* renamed from: e */
    final /* synthetic */ BinderC7782l5 f35116e;

    public RunnableC7674c5(BinderC7782l5 binderC7782l5, zzp zzpVar) {
        this.f35116e = binderC7782l5;
        this.f35115d = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        c7819o9 = this.f35116e.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35116e.f35423d;
        zzp zzpVar = this.f35115d;
        C7382g9.m7385a();
        if (c7819o92.m6161T().m6471u(null, C7672c3.f35111y0)) {
            c7819o92.mo6029b().mo6113f();
            c7819o92.m6148e0();
            C6155o.m17022f(zzpVar.f35883d);
            C7704f m6448c = C7704f.m6448c(zzpVar.f35904y);
            C7704f m6144g0 = c7819o92.m6144g0(zzpVar.f35883d);
            c7819o92.mo6047C().m6187u().m6214c("Setting consent, package, consent", zzpVar.f35883d, m6448c);
            c7819o92.m6146f0(zzpVar.f35883d, m6448c);
            if (!m6448c.m6442i(m6144g0)) {
                return;
            }
            c7819o92.m6133m(zzpVar);
        }
    }
}
