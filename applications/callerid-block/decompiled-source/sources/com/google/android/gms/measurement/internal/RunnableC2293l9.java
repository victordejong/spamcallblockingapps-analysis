package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C1581h;
/* renamed from: com.google.android.gms.measurement.internal.l9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l9.class */
final class RunnableC2293l9 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f10281b;

    /* renamed from: c */
    final /* synthetic */ String f10282c = "_err";

    /* renamed from: d */
    final /* synthetic */ Bundle f10283d;

    /* renamed from: e */
    final /* synthetic */ m9 f10284e;

    RunnableC2293l9(m9 m9Var, String str, String str2, Bundle bundle) {
        this.f10284e = m9Var;
        this.f10281b = str;
        this.f10283d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzas J = this.f10284e.a.b0().J(this.f10281b, this.f10282c, this.f10283d, "auto", this.f10284e.a.v().m8247a(), false, false);
        o9 o9Var = this.f10284e.a;
        C1581h.m8347h(J);
        o9Var.g0(J, this.f10281b);
    }
}
