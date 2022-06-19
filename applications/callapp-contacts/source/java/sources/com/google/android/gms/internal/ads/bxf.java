package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxf.class */
public final class bxf implements bsm<AbstractC12807os, buh> {

    /* renamed from: a */
    private final bym f45016a;

    public bxf(bym bymVar) {
        this.f45016a = bymVar;
    }

    @Override // com.google.android.gms.internal.ads.bsm
    /* renamed from: a */
    public final bsn<AbstractC12807os, buh> mo17588a(String str, JSONObject jSONObject) throws zzdpq {
        AbstractC12807os m17564a = this.f45016a.m17564a(str);
        if (m17564a == null) {
            return null;
        }
        return new bsn<>(m17564a, new buh(), str);
    }
}
