package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgu;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C4227xt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfi.class */
public final class zzdfi<S extends zzdgu<?>> implements zzdgx<S> {

    /* renamed from: a */
    public final zzdgx<S> f27234a;

    /* renamed from: b */
    public final long f27235b;

    /* renamed from: c */
    public final ScheduledExecutorService f27236c;

    public zzdfi(zzdgx<S> zzdgxVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.f27234a = zzdgxVar;
        this.f27235b = j;
        this.f27236c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<S> mo13576a() {
        zzdzc<S> a = this.f27234a.mo13576a();
        long j = this.f27235b;
        zzdzc<S> zzdzcVar = a;
        if (j > 0) {
            zzdzcVar = zzdyq.m12994a(a, j, TimeUnit.MILLISECONDS, this.f27236c);
        }
        return zzdyq.m12990a(zzdzcVar, Throwable.class, C4227xt.f16066a, zzbbz.f24769f);
    }
}
