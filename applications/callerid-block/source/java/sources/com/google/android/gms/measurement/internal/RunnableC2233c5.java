package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.y8;
/* renamed from: com.google.android.gms.measurement.internal.c5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c5.class */
final class RunnableC2233c5 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ zzp f10090b;

    /* renamed from: c */
    final /* synthetic */ l5 f10091c;

    RunnableC2233c5(l5 l5Var, zzp zzpVar) {
        this.f10091c = l5Var;
        this.f10090b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l5.w4(this.f10091c).k();
        o9 w4 = l5.w4(this.f10091c);
        zzp zzpVar = this.f10090b;
        y8.a();
        if (w4.T().w((String) null, C2232c3.f10083w0)) {
            w4.c().f();
            w4.c0();
            C1581h.m8351d(zzpVar.b);
            C2250f m3935c = C2250f.m3935c(zzpVar.w);
            C2250f e0 = w4.e0(zzpVar.b);
            w4.t().w().m3874c("Setting consent, package, consent", zzpVar.b, m3935c);
            w4.d0(zzpVar.b, m3935c);
            if (!m3935c.m3929i(e0)) {
                return;
            }
            w4.m(zzpVar);
        }
    }
}
