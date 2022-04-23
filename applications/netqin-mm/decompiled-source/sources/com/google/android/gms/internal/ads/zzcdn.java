package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdn.class */
public final class zzcdn implements zzeoy<JSONObject> {

    /* renamed from: a */
    public final zzcdl f25786a;

    public zzcdn(zzcdl zzcdlVar) {
        this.f25786a = zzcdlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        JSONObject a = this.f25786a.m14775a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
