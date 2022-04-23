package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdro.class */
public final class zzdro implements zzeoy<ScheduledExecutorService> {

    /* renamed from: a */
    public final zzeph<ThreadFactory> f27767a;

    public zzdro(zzeph<ThreadFactory> zzephVar) {
        this.f27767a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        ScheduledExecutorService a = zzdvg.m13110a().mo13118a(1, this.f27767a.get(), zzdvl.f27899b);
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
