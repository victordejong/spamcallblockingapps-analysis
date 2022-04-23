package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxf.class */
public final class bxf implements bsm<os, buh> {

    /* renamed from: a  reason: collision with root package name */
    private final bym f25328a;

    public bxf(bym bymVar) {
        this.f25328a = bymVar;
    }

    @Override // com.google.android.gms.internal.ads.bsm
    public final bsn<os, buh> a(String str, JSONObject jSONObject) throws zzdpq {
        os a2 = this.f25328a.a(str);
        if (a2 == null) {
            return null;
        }
        return new bsn<>(a2, new buh(), str);
    }
}
