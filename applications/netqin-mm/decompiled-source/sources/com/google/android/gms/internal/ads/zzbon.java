package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbon.class */
public final class zzbon implements zzeoy<zzbwk> {

    /* renamed from: a */
    public final zzeph<ScheduledExecutorService> f25286a;

    /* renamed from: b */
    public final zzeph<Clock> f25287b;

    public zzbon(zzeph<ScheduledExecutorService> zzephVar, zzeph<Clock> zzephVar2) {
        this.f25286a = zzephVar;
        this.f25287b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbwk m15233a(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        zzbwk zzbwkVar = new zzbwk(scheduledExecutorService, clock);
        zzepe.m12187a(zzbwkVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbwkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15233a(this.f25286a.get(), this.f25287b.get());
    }
}
