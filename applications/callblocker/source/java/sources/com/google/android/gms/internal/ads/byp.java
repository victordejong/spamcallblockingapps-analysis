package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cae;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byp.class */
public final class byp<S extends cae<?>> implements cah<S> {

    /* renamed from: a */
    private final cah<S> f12497a;

    /* renamed from: b */
    private final long f12498b;

    /* renamed from: c */
    private final ScheduledExecutorService f12499c;

    public byp(cah<S> cahVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f12497a = cahVar;
        this.f12498b = j;
        this.f12499c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<S> mo11479a() {
        crt<S> mo11479a = this.f12497a.mo11479a();
        crt<S> crtVar = mo11479a;
        if (this.f12498b > 0) {
            crtVar = crg.m10784a(mo11479a, this.f12498b, TimeUnit.MILLISECONDS, this.f12499c);
        }
        return crg.m10780a(crtVar, Throwable.class, bys.f12505a, C3650yg.f17647f);
    }
}
