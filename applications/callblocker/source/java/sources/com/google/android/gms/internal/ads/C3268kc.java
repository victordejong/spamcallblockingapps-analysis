package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.kc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kc.class */
public final class C3268kc implements AbstractC3139fi {

    /* renamed from: a */
    private final C3658yo<O> f16842a;

    /* renamed from: b */
    private final /* synthetic */ C3266ka f16843b;

    public C3268kc(C3266ka c3266ka, C3658yo<O> c3658yo) {
        this.f16843b = c3266ka;
        this.f16842a = c3658yo;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3139fi
    /* renamed from: a */
    public final void mo7696a(String str) {
        try {
            if (str == null) {
                this.f16842a.m6733a(new zzake());
            } else {
                this.f16842a.m6733a(new zzake(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3139fi
    /* renamed from: a */
    public final void mo7695a(JSONObject jSONObject) {
        AbstractC3246jh abstractC3246jh;
        try {
            C3658yo<O> c3658yo = this.f16842a;
            abstractC3246jh = this.f16843b.f16838a;
            c3658yo.m6731b(abstractC3246jh.mo7727a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f16842a.m6733a(e2);
        }
    }
}
