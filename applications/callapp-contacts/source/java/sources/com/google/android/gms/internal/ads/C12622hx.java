package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.hx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hx.class */
public final class C12622hx implements AbstractC12621hw {

    /* renamed from: a */
    private final /* synthetic */ C13103zp f49365a;

    public C12622hx(C12619hu c12619hu, C13103zp c13103zp) {
        this.f49365a = c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12621hw
    /* renamed from: a */
    public final void mo14514a(String str) {
        this.f49365a.setException(new zzamh(str));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12621hw
    /* renamed from: a */
    public final void mo14513a(JSONObject jSONObject) {
        this.f49365a.set(jSONObject);
    }
}
