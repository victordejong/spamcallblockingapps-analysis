package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnf.class */
public final class zzcnf implements zzeoy<zzcng> {

    /* renamed from: a */
    public final zzeph<Clock> f26294a;

    public zzcnf(zzeph<Clock> zzephVar) {
        this.f26294a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcng(this.f26294a.get());
    }
}
