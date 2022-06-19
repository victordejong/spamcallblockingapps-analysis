package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.C7466m9;
/* renamed from: com.google.android.gms.measurement.internal.y8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y8.class */
public final class C7928y8 {

    /* renamed from: a */
    final /* synthetic */ C7939z8 f35831a;

    public C7928y8(C7939z8 c7939z8) {
        this.f35831a = c7939z8;
    }

    /* renamed from: a */
    public final void m5883a() {
        this.f35831a.mo6113f();
        if (this.f35831a.f35460a.m6005z().m6457u(this.f35831a.f35460a.mo6007x().mo16807a())) {
            this.f35831a.f35460a.m6005z().f35203m.m5886b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return;
            }
            this.f35831a.f35460a.mo6047C().m6187u().m6216a("Detected application was in foreground");
            m5881c(this.f35831a.f35460a.mo6007x().mo16807a(), false);
        }
    }

    /* renamed from: b */
    public final void m5882b(long j, boolean z) {
        this.f35831a.mo6113f();
        this.f35831a.m5871q();
        if (this.f35831a.f35460a.m6005z().m6457u(j)) {
            this.f35831a.f35460a.m6005z().f35203m.m5886b(true);
        }
        this.f35831a.f35460a.m6005z().f35206p.m6587b(j);
        if (this.f35831a.f35460a.m6005z().f35203m.m5887a()) {
            m5881c(j, z);
        }
    }

    /* renamed from: c */
    final void m5881c(long j, boolean z) {
        this.f35831a.mo6113f();
        if (!this.f35831a.f35460a.m6022i()) {
            return;
        }
        this.f35831a.f35460a.m6005z().f35206p.m6587b(j);
        this.f35831a.f35460a.mo6047C().m6187u().m6215b("Session started, time", Long.valueOf(this.f35831a.f35460a.mo6007x().mo16806b()));
        Long valueOf = Long.valueOf(j / 1000);
        this.f35831a.f35460a.m6044F().m5909n("auto", "_sid", valueOf, j);
        this.f35831a.f35460a.m6005z().f35203m.m5886b(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (this.f35831a.f35460a.m6006y().m6471u(null, C7672c3.f35081j0) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.f35831a.f35460a.m6044F().m5916Y("auto", "_s", j, bundle);
        C7466m9.m7102a();
        if (!this.f35831a.f35460a.m6006y().m6471u(null, C7672c3.f35091o0)) {
            return;
        }
        String m6558a = this.f35831a.f35460a.m6005z().f35211u.m6558a();
        if (TextUtils.isEmpty(m6558a)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("_ffr", m6558a);
        this.f35831a.f35460a.m6044F().m5916Y("auto", "_ssr", j, bundle2);
    }
}
