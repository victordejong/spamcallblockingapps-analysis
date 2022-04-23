package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrz.class */
public final class zzbrz implements zzeoy<zzbsa> {

    /* renamed from: a */
    public final zzeph<Clock> f25428a;

    /* renamed from: b */
    public final zzeph<zzaxw> f25429b;

    public zzbrz(zzeph<Clock> zzephVar, zzeph<zzaxw> zzephVar2) {
        this.f25428a = zzephVar;
        this.f25429b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbrz m15110a(zzeph<Clock> zzephVar, zzeph<zzaxw> zzephVar2) {
        return new zzbrz(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbsa(this.f25428a.get(), this.f25429b.get());
    }
}
