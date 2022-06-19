package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/boy.class */
public final class boy implements bmw<chs, bof> {

    /* renamed from: a */
    private final bfg f11711a;

    public boy(bfg bfgVar) {
        this.f11711a = bfgVar;
    }

    @Override // com.google.android.gms.internal.ads.bmw
    /* renamed from: a */
    public final bmx<chs, bof> mo11704a(String str, JSONObject jSONObject) {
        chs m12006a = this.f11711a.m12006a(str, jSONObject);
        return m12006a == null ? null : new bmx<>(m12006a, new bof(), str);
    }
}
