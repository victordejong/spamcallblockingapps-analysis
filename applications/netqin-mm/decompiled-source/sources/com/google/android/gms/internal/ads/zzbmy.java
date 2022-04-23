package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmy.class */
public final class zzbmy implements zzeoy<zzbml> {

    /* renamed from: a */
    public final zzeph<zzqo> f25217a;

    /* renamed from: b */
    public final zzeph<zzamk> f25218b;

    /* renamed from: c */
    public final zzeph<Executor> f25219c;

    public zzbmy(zzeph<zzqo> zzephVar, zzeph<zzamk> zzephVar2, zzeph<Executor> zzephVar3) {
        this.f25217a = zzephVar;
        this.f25218b = zzephVar2;
        this.f25219c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbmy m15300a(zzeph<zzqo> zzephVar, zzeph<zzamk> zzephVar2, zzeph<Executor> zzephVar3) {
        return new zzbmy(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbml zzbmlVar = new zzbml(this.f25217a.get().m11553a(), this.f25218b.get(), this.f25219c.get());
        zzepe.m12187a(zzbmlVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbmlVar;
    }
}
