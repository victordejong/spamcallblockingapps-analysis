package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ke;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iy.class */
public final class iy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ iz f29874a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iy(iz izVar) {
        this.f29874a = izVar;
    }

    private void b(long j, boolean z) {
        this.f29874a.S_();
        if (this.f29874a.t.r()) {
            this.f29874a.t.b().k.a(j);
            this.f29874a.t.c().k.a("Session started, time", Long.valueOf(this.f29874a.t.j.b()));
            Long valueOf = Long.valueOf(j / 1000);
            this.f29874a.t.f().a("auto", "_sid", valueOf, j);
            this.f29874a.t.b().h.a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            if (this.f29874a.t.g.d(null, dc.ah) && z) {
                bundle.putLong("_aib", 1L);
            }
            this.f29874a.t.f().a("auto", "_s", j, bundle);
            ke.b();
            if (this.f29874a.t.g.d(null, dc.am)) {
                String a2 = this.f29874a.t.b().p.a();
                if (!TextUtils.isEmpty(a2)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_ffr", a2);
                    this.f29874a.t.f().a("auto", "_ssr", j, bundle2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f29874a.S_();
        if (this.f29874a.t.b().a(this.f29874a.t.j.a())) {
            this.f29874a.t.b().h.a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.f29874a.t.c().k.a("Detected application was in foreground");
                b(this.f29874a.t.j.a(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, boolean z) {
        this.f29874a.S_();
        this.f29874a.e();
        if (this.f29874a.t.b().a(j)) {
            this.f29874a.t.b().h.a(true);
        }
        this.f29874a.t.b().k.a(j);
        if (this.f29874a.t.b().h.a()) {
            b(j, z);
        }
    }
}
