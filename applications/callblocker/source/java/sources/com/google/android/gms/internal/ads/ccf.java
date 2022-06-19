package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ccf.class */
public final class ccf implements cah<ccc> {

    /* renamed from: a */
    private AbstractC3267kb f12713a;

    /* renamed from: b */
    private ScheduledExecutorService f12714b;

    /* renamed from: c */
    private boolean f12715c;

    /* renamed from: d */
    private ApplicationInfo f12716d;

    public ccf(AbstractC3267kb abstractC3267kb, ScheduledExecutorService scheduledExecutorService, boolean z, ApplicationInfo applicationInfo) {
        this.f12713a = abstractC3267kb;
        this.f12714b = scheduledExecutorService;
        this.f12715c = z;
        this.f12716d = applicationInfo;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<ccc> mo11479a() {
        crt<ccc> m10783a;
        if (!C2766af.f8093b.mo13599a().booleanValue()) {
            m10783a = crg.m10777a((Throwable) new Exception("Auto Collect Location by gms is disabled."));
        } else if (!this.f12715c) {
            m10783a = crg.m10777a((Throwable) new Exception("Auto Collect Location is false."));
        } else {
            m10783a = crg.m10783a(crg.m10784a(this.f12713a.mo7676a(this.f12716d), ((Long) dyx.m8158e().m7876a(edi.f16398bD)).longValue(), TimeUnit.MILLISECONDS, this.f12714b), cce.f12712a, C3650yg.f17642a);
        }
        return m10783a;
    }
}
