package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.measurement.internal.r7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r7.class */
final class RunnableC2331r7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C2235c7 f10383b;

    /* renamed from: c */
    final /* synthetic */ k8 f10384c;

    RunnableC2331r7(k8 k8Var, C2235c7 c7Var) {
        this.f10384c = k8Var;
        this.f10383b = c7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        String str;
        String str2;
        String packageName;
        AbstractC2251f3 A = k8.A(this.f10384c);
        if (A == null) {
            ((m5) this.f10384c).a.t().m().m3876a("Failed to send current screen to service");
            return;
        }
        try {
            C2235c7 c7Var = this.f10383b;
            if (c7Var == null) {
                j = 0;
                str = null;
                str2 = null;
                packageName = ((m5) this.f10384c).a.b().getPackageName();
            } else {
                j = c7Var.f10099c;
                str = c7Var.f10097a;
                str2 = c7Var.f10098b;
                packageName = ((m5) this.f10384c).a.b().getPackageName();
            }
            A.m3903u4(j, str, str2, packageName);
            k8.B(this.f10384c);
        } catch (RemoteException e) {
            ((m5) this.f10384c).a.t().m().m3875b("Failed to send current screen to the service", e);
        }
    }
}
