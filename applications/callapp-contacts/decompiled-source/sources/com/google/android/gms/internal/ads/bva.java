package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bva.class */
public final class bva implements bsm<cqe, buh> {

    /* renamed from: a  reason: collision with root package name */
    private final bjg f25171a;

    public bva(bjg bjgVar) {
        this.f25171a = bjgVar;
    }

    @Override // com.google.android.gms.internal.ads.bsm
    public final bsn<cqe, buh> a(String str, JSONObject jSONObject) throws zzdpq {
        return new bsn<>(this.f25171a.a(str, jSONObject), new buh(), str);
    }
}
