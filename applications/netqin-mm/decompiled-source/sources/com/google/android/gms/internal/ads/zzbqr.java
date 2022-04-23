package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqr.class */
public final class zzbqr<AdT> implements zzeoy<zzbqs<AdT>> {

    /* renamed from: a */
    public final zzeph<Map<String, zzcta<AdT>>> f25387a;

    public zzbqr(zzeph<Map<String, zzcta<AdT>>> zzephVar) {
        this.f25387a = zzephVar;
    }

    /* renamed from: a */
    public static <AdT> zzbqr<AdT> m15156a(zzeph<Map<String, zzcta<AdT>>> zzephVar) {
        return new zzbqr<>(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbqs(this.f25387a.get());
    }
}
