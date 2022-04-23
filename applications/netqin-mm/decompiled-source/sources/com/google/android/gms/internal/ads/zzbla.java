package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbla.class */
public final class zzbla implements zzeoy<zzb> {

    /* renamed from: a */
    public final zzbky f25121a;

    public zzbla(zzbky zzbkyVar) {
        this.f25121a = zzbkyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzb e = this.f25121a.m15342e();
        zzepe.m12187a(e, "Cannot return null from a non-@Nullable @Provides method");
        return e;
    }
}
