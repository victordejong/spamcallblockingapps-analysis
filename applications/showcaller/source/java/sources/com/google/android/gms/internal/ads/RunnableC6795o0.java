package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
/* renamed from: com.google.android.gms.internal.ads.o0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o0.class */
public final class RunnableC6795o0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ int f27383d;

    /* renamed from: e */
    final /* synthetic */ C6869q0 f27384e;

    public RunnableC6795o0(C6869q0 c6869q0, int i, boolean z) {
        this.f27384e = c6869q0;
        this.f27383d = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        z14 z14Var;
        C6869q0 c6869q0 = this.f27384e;
        if (this.f27383d > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        try {
            PackageInfo packageInfo = c6869q0.f28255b.getPackageManager().getPackageInfo(c6869q0.f28255b.getPackageName(), 0);
            Context context = c6869q0.f28255b;
            z14Var = ur2.m10179a(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable th) {
            z14Var = null;
        }
        this.f27384e.f28264k = z14Var;
        if (this.f27383d < 4) {
            if (z14Var != null && z14Var.m8581f0() && !z14Var.m8567t0().equals("0000000000000000000000000000000000000000000000000000000000000000") && z14Var.m8564w0() && z14Var.m8563x0().m14178C() && z14Var.m8563x0().m14177D() != -2) {
                return;
            }
            this.f27384e.m12065s(this.f27383d + 1, true);
        }
    }
}
