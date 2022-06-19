package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.location.Location;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxf.class */
public final class bxf implements cah<bxc> {

    /* renamed from: a */
    chh f12437a;

    /* renamed from: b */
    private AbstractC3267kb f12438b;

    /* renamed from: c */
    private ScheduledExecutorService f12439c;

    /* renamed from: d */
    private AbstractC3558uw f12440d;

    /* renamed from: e */
    private ApplicationInfo f12441e;

    public bxf(AbstractC3267kb abstractC3267kb, ScheduledExecutorService scheduledExecutorService, AbstractC3558uw abstractC3558uw, ApplicationInfo applicationInfo, chh chhVar) {
        this.f12438b = abstractC3267kb;
        this.f12439c = scheduledExecutorService;
        this.f12440d = abstractC3558uw;
        this.f12441e = applicationInfo;
        this.f12437a = chhVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bxc> mo11479a() {
        crt m10780a;
        if (!C2766af.f8092a.mo13599a().booleanValue()) {
            m10780a = crg.m10778a((Object) null);
        } else if (!this.f12440d.mo7021f()) {
            m10780a = crg.m10778a((Object) null);
        } else {
            m10780a = crg.m10780a(crg.m10784a(this.f12438b.mo7676a(this.f12441e), ((Long) dyx.m8158e().m7876a(edi.f16398bD)).longValue(), TimeUnit.MILLISECONDS, this.f12439c), Throwable.class, bxg.f12442a, C3650yg.f17647f);
        }
        return crg.m10783a(crg.m10783a(m10780a, new coe(this) { // from class: com.google.android.gms.internal.ads.bxh

            /* renamed from: a */
            private final bxf f12443a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12443a = this;
            }

            @Override // com.google.android.gms.internal.ads.coe
            /* renamed from: a */
            public final Object mo7184a(Object obj) {
                bxf bxfVar = this.f12443a;
                Location location = (Location) obj;
                if (location == null) {
                    location = bxfVar.f12437a.f13040d.f16077k;
                }
                return location;
            }
        }, this.f12439c), bxe.f12436a, C3650yg.f17642a);
    }
}
