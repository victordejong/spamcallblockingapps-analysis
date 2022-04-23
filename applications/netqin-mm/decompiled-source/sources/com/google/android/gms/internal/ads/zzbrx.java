package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrx.class */
public final class zzbrx implements zzeoy<zzaxw> {

    /* renamed from: a */
    public final zzeph<Clock> f25425a;

    /* renamed from: b */
    public final zzeph<zzayi> f25426b;

    /* renamed from: c */
    public final zzeph<zzdok> f25427c;

    public zzbrx(zzeph<Clock> zzephVar, zzeph<zzayi> zzephVar2, zzeph<zzdok> zzephVar3) {
        this.f25425a = zzephVar;
        this.f25426b = zzephVar2;
        this.f25427c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbrx m15112a(zzeph<Clock> zzephVar, zzeph<zzayi> zzephVar2, zzeph<zzdok> zzephVar3) {
        return new zzbrx(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzaxw a = this.f25426b.get().m16163a(this.f25425a.get(), this.f25427c.get().f27644f);
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
