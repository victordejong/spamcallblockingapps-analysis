package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmb.class */
public final class zzbmb implements zzbma {

    /* renamed from: a */
    public zzayr f25149a;

    public zzbmb(zzayr zzayrVar) {
        this.f25149a = zzayrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbma
    /* renamed from: a */
    public final void mo15325a(Map<String, String> map) {
        this.f25149a.mo16069a(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
