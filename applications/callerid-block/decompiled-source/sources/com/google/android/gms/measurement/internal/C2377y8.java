package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.e9;
/* renamed from: com.google.android.gms.measurement.internal.y8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y8.class */
final class C2377y8 {

    /* renamed from: a */
    final /* synthetic */ z8 f10507a;

    C2377y8(z8 z8Var) {
        this.f10507a = z8Var;
    }

    /* renamed from: a */
    final void m3803a() {
        this.f10507a.f();
        if (((m5) this.f10507a).a.A().w(((m5) this.f10507a).a.v().m8247a())) {
            ((m5) this.f10507a).a.A().l.m3806b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                ((m5) this.f10507a).a.t().w().m3876a("Detected application was in foreground");
                m3801c(((m5) this.f10507a).a.v().m8247a(), false);
            }
        }
    }

    /* renamed from: b */
    final void m3802b(long j, boolean z) {
        this.f10507a.f();
        z8.o(this.f10507a);
        if (((m5) this.f10507a).a.A().w(j)) {
            ((m5) this.f10507a).a.A().l.m3806b(true);
        }
        ((m5) this.f10507a).a.A().o.m4025b(j);
        if (((m5) this.f10507a).a.A().l.m3807a()) {
            m3801c(j, z);
        }
    }

    /* renamed from: c */
    final void m3801c(long j, boolean z) {
        this.f10507a.f();
        if (((m5) this.f10507a).a.i()) {
            ((m5) this.f10507a).a.A().o.m4025b(j);
            ((m5) this.f10507a).a.t().w().m3875b("Session started, time", Long.valueOf(((m5) this.f10507a).a.v().m8245c()));
            Long valueOf = Long.valueOf(j / 1000);
            ((m5) this.f10507a).a.F().n("auto", "_sid", valueOf, j);
            ((m5) this.f10507a).a.A().l.m3806b(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            if (((m5) this.f10507a).a.z().w((String) null, C2232c3.f10055i0) && z) {
                bundle.putLong("_aib", 1L);
            }
            ((m5) this.f10507a).a.F().Y("auto", "_s", j, bundle);
            e9.a();
            if (((m5) this.f10507a).a.z().w((String) null, C2232c3.f10065n0)) {
                String a = ((m5) this.f10507a).a.A().t.m4005a();
                if (!TextUtils.isEmpty(a)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_ffr", a);
                    ((m5) this.f10507a).a.F().Y("auto", "_ssr", j, bundle2);
                }
            }
        }
    }
}
