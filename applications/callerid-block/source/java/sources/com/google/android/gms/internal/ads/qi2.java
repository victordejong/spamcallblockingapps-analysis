package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qi2.class */
public final class qi2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f8205b;

    /* renamed from: c */
    final /* synthetic */ si2 f8206c;

    public qi2(si2 si2Var, int i, boolean z) {
        this.f8206c = si2Var;
        this.f8205b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        d61 d61Var;
        si2 si2Var = this.f8206c;
        if (this.f8205b > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        try {
            PackageInfo packageInfo = si2Var.f8469a.getPackageManager().getPackageInfo(si2Var.f8469a.getPackageName(), 0);
            Context context = si2Var.f8469a;
            d61Var = nt1.m6389a(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable th) {
            d61Var = null;
        }
        this.f8206c.f8478j = d61Var;
        if (this.f8205b < 4) {
            if (d61Var != null && d61Var.f0() && !d61Var.t0().equals("0000000000000000000000000000000000000000000000000000000000000000") && d61Var.x0() && d61Var.y0().E() && d61Var.y0().F() != -2) {
                return;
            }
            this.f8206c.m5670q(this.f8205b + 1, true);
        }
    }
}
