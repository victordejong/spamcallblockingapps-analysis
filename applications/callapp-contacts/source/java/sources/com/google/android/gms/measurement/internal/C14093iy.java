package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.C13627ke;
/* renamed from: com.google.android.gms.measurement.internal.iy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iy.class */
public final class C14093iy {

    /* renamed from: a */
    final /* synthetic */ C14094iz f51929a;

    public C14093iy(C14094iz c14094iz) {
        this.f51929a = c14094iz;
    }

    /* renamed from: b */
    private void m11711b(long j, boolean z) {
        this.f51929a.mo11884S_();
        if (!this.f51929a.f51637t.m11979r()) {
            return;
        }
        this.f51929a.f51637t.m11991b().f51465k.m12052a(j);
        this.f51929a.f51637t.mo11661c().f51403k.m12091a("Session started, time", Long.valueOf(this.f51929a.f51637t.f51532j.mo19038b()));
        Long valueOf = Long.valueOf(j / 1000);
        this.f51929a.f51637t.m11989f().m11854a("auto", "_sid", valueOf, j);
        this.f51929a.f51637t.m11991b().f51462h.m12076a(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (this.f51929a.f51637t.f51529g.m12061d(null, C13935dc.f51320ah) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.f51929a.f51637t.m11989f().m11859a("auto", "_s", j, bundle);
        C13627ke.m12398b();
        if (!this.f51929a.f51637t.f51529g.m12061d(null, C13935dc.f51325am)) {
            return;
        }
        String m12043a = this.f51929a.f51637t.m11991b().f51470p.m12043a();
        if (TextUtils.isEmpty(m12043a)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("_ffr", m12043a);
        this.f51929a.f51637t.m11989f().m11859a("auto", "_ssr", j, bundle2);
    }

    /* renamed from: a */
    public final void m11713a() {
        this.f51929a.mo11884S_();
        if (this.f51929a.f51637t.m11991b().m12040a(this.f51929a.f51637t.f51532j.mo19039a())) {
            this.f51929a.f51637t.m11991b().f51462h.m12076a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return;
            }
            this.f51929a.f51637t.mo11661c().f51403k.m12092a("Detected application was in foreground");
            m11711b(this.f51929a.f51637t.f51532j.mo19039a(), false);
        }
    }

    /* renamed from: a */
    public final void m11712a(long j, boolean z) {
        this.f51929a.mo11884S_();
        this.f51929a.m11707e();
        if (this.f51929a.f51637t.m11991b().m12040a(j)) {
            this.f51929a.f51637t.m11991b().f51462h.m12076a(true);
        }
        this.f51929a.f51637t.m11991b().f51465k.m12052a(j);
        if (this.f51929a.f51637t.m11991b().f51462h.m12077a()) {
            m11711b(j, z);
        }
    }
}
