package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblx.class */
public final class zzblx implements zzdya<zzdog, zzdog> {

    /* renamed from: a */
    public Map<String, zzbma> f25145a;

    public zzblx(Map<String, zzbma> map) {
        this.f25145a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final /* synthetic */ zzdzc<zzdog> mo13006d(zzdog zzdogVar) throws Exception {
        zzdog zzdogVar2 = zzdogVar;
        for (zzdoh zzdohVar : zzdogVar2.f27634b.f27631c) {
            if (this.f25145a.containsKey(zzdohVar.f27635a)) {
                this.f25145a.get(zzdohVar.f27635a).mo15325a(zzdohVar.f27636b);
            }
        }
        return zzdyq.m12988a(zzdogVar2);
    }
}
