package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.mb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mb.class */
public final class C12735mb implements AbstractC12621hw {

    /* renamed from: a */
    private final C13103zp<O> f49503a;

    /* renamed from: b */
    private final /* synthetic */ C12732lz f49504b;

    public C12735mb(C12732lz c12732lz, C13103zp<O> c13103zp) {
        this.f49504b = c12732lz;
        this.f49503a = c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12621hw
    /* renamed from: a */
    public final void mo14514a(String str) {
        try {
            if (str == null) {
                this.f49503a.setException(new zzamh());
            } else {
                this.f49503a.setException(new zzamh(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12621hw
    /* renamed from: a */
    public final void mo14513a(JSONObject jSONObject) {
        try {
            this.f49503a.set(this.f49504b.f49497a.mo14523a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f49503a.setException(e2);
        }
    }
}
