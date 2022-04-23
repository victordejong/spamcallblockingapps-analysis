package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbtp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtz.class */
public final class zzbtz implements zzeoy<zzbtp.zza> {

    /* renamed from: a */
    public final zzbtp f25545a;

    public zzbtz(zzbtp zzbtpVar) {
        this.f25545a = zzbtpVar;
    }

    /* renamed from: a */
    public static zzbtz m15040a(zzbtp zzbtpVar) {
        return new zzbtz(zzbtpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbtp.zza a = this.f25545a.m15072a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
