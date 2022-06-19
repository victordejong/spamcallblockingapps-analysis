package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/brd.class */
public final class brd implements bmw<AbstractC3333mn, bof> {

    /* renamed from: a */
    private final bsl f11885a;

    public brd(bsl bslVar) {
        this.f11885a = bslVar;
    }

    @Override // com.google.android.gms.internal.ads.bmw
    /* renamed from: a */
    public final bmx<AbstractC3333mn, bof> mo11704a(String str, JSONObject jSONObject) {
        AbstractC3333mn m11674b = this.f11885a.m11674b(str);
        return m11674b == null ? null : new bmx<>(m11674b, new bof(), str);
    }
}
