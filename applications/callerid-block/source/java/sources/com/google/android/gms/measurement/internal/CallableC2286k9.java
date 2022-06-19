package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.y8;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.k9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k9.class */
final class CallableC2286k9 implements Callable<String> {

    /* renamed from: a */
    final /* synthetic */ zzp f10261a;

    /* renamed from: b */
    final /* synthetic */ o9 f10262b;

    CallableC2286k9(o9 o9Var, zzp zzpVar) {
        this.f10262b = o9Var;
        this.f10261a = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        y8.a();
        String str = null;
        if (this.f10262b.T().w((String) null, C2232c3.f10083w0)) {
            o9 o9Var = this.f10262b;
            String str2 = this.f10261a.b;
            C1581h.m8347h(str2);
            if (!o9Var.e0(str2).m3930h() || !C2250f.m3935c(this.f10261a.w).m3930h()) {
                this.f10262b.t().w().m3876a("Analytics storage consent denied. Returning null app instance id");
                return str;
            }
        }
        str = this.f10262b.z(this.f10261a).m3989O();
        return str;
    }
}
