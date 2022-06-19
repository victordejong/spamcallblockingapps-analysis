package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bny.class */
public final class bny implements bmv<akk> {

    /* renamed from: a */
    private final alh f11640a;

    /* renamed from: b */
    private final bnd f11641b;

    /* renamed from: c */
    private final crs f11642c;

    /* renamed from: d */
    private final apt f11643d;

    /* renamed from: e */
    private final ScheduledExecutorService f11644e;

    public bny(alh alhVar, bnd bndVar, apt aptVar, ScheduledExecutorService scheduledExecutorService, crs crsVar) {
        this.f11640a = alhVar;
        this.f11641b = bndVar;
        this.f11643d = aptVar;
        this.f11644e = scheduledExecutorService;
        this.f11642c = crsVar;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return chdVar.f13034a.f13017a.m11350a() != null && this.f11641b.mo11690a(chdVar, cgrVar);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<akk> mo11688b(chd chdVar, cgr cgrVar) {
        return this.f11642c.mo10767a(new Callable(this, chdVar, cgrVar) { // from class: com.google.android.gms.internal.ads.bob

            /* renamed from: a */
            private final bny f11652a;

            /* renamed from: b */
            private final chd f11653b;

            /* renamed from: c */
            private final cgr f11654c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11652a = this;
                this.f11653b = chdVar;
                this.f11654c = cgrVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f11652a.m11747c(this.f11653b, this.f11654c);
            }
        });
    }

    /* renamed from: c */
    public final /* synthetic */ akk m11747c(chd chdVar, cgr cgrVar) {
        return this.f11640a.mo12970a(new amy(chdVar, cgrVar, null), new alw(chdVar.f13034a.f13017a.m11350a(), new Runnable(this, chdVar, cgrVar) { // from class: com.google.android.gms.internal.ads.boa

            /* renamed from: a */
            private final bny f11649a;

            /* renamed from: b */
            private final chd f11650b;

            /* renamed from: c */
            private final cgr f11651c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11649a = this;
                this.f11650b = chdVar;
                this.f11651c = cgrVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f11649a.m11746d(this.f11650b, this.f11651c);
            }
        })).mo12954a();
    }

    /* renamed from: d */
    public final /* synthetic */ void m11746d(chd chdVar, cgr cgrVar) {
        crg.m10781a(crg.m10784a(this.f11641b.mo11688b(chdVar, cgrVar), cgrVar.f12963I, TimeUnit.SECONDS, this.f11644e), new bod(this), this.f11642c);
    }
}
