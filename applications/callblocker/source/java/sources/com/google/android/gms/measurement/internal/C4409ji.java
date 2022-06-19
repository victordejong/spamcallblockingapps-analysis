package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.C4035iu;
/* renamed from: com.google.android.gms.measurement.internal.ji */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ji.class */
public final class C4409ji {

    /* renamed from: a */
    final /* synthetic */ C4399iz f19227a;

    public C4409ji(C4399iz c4399iz) {
        this.f19227a = c4399iz;
    }

    /* renamed from: b */
    private final void m4254b(long j, boolean z) {
        this.f19227a.mo4037o();
        if (!this.f19227a.f18970z.m4574B()) {
            return;
        }
        this.f19227a.mo4029w().f18775q.m4623a(j);
        this.f19227a.mo4030v().m4657j().m4653a("Session started, time", Long.valueOf(this.f19227a.mo4035q().mo13861b()));
        Long valueOf = Long.valueOf(j / 1000);
        this.f19227a.mo4284b().m4402a("auto", "_sid", valueOf, j);
        this.f19227a.mo4029w().f18771m.m4625a(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (this.f19227a.mo4027x().m4804a(C4452t.f19456aq) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.f19227a.mo4284b().m4408a("auto", "_s", j, bundle);
        if (!C4035iu.m5067b() || !this.f19227a.mo4027x().m4804a(C4452t.f19461av)) {
            return;
        }
        String m4619a = this.f19227a.mo4029w().f18780v.m4619a();
        if (TextUtils.isEmpty(m4619a)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("_ffr", m4619a);
        this.f19227a.mo4284b().m4408a("auto", "_ssr", j, bundle2);
    }

    /* renamed from: a */
    public final void m4256a() {
        this.f19227a.mo4037o();
        if (this.f19227a.mo4029w().m4642a(this.f19227a.mo4035q().mo13862a())) {
            this.f19227a.mo4029w().f18771m.m4625a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return;
            }
            this.f19227a.mo4030v().m4657j().m4654a("Detected application was in foreground");
            m4254b(this.f19227a.mo4035q().mo13862a(), false);
        }
    }

    /* renamed from: a */
    public final void m4255a(long j, boolean z) {
        this.f19227a.mo4037o();
        this.f19227a.m4290B();
        if (this.f19227a.mo4029w().m4642a(j)) {
            this.f19227a.mo4029w().f18771m.m4625a(true);
        }
        this.f19227a.mo4029w().f18775q.m4623a(j);
        if (this.f19227a.mo4029w().f18771m.m4626a()) {
            m4254b(j, z);
        }
    }
}
