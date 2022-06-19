package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bva.class */
public final class bva implements bsm<cqe, buh> {

    /* renamed from: a */
    private final bjg f44825a;

    public bva(bjg bjgVar) {
        this.f44825a = bjgVar;
    }

    @Override // com.google.android.gms.internal.ads.bsm
    /* renamed from: a */
    public final bsn<cqe, buh> mo17588a(String str, JSONObject jSONObject) throws zzdpq {
        return new bsn<>(this.f44825a.m17810a(str, jSONObject), new buh(), str);
    }
}
