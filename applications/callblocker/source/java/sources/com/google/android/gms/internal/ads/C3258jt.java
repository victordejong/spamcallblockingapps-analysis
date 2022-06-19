package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.jt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jt.class */
public final class C3258jt implements AbstractC3139fi {

    /* renamed from: a */
    private final C3228iq f16823a;

    /* renamed from: b */
    private final C3658yo<O> f16824b;

    /* renamed from: c */
    private final /* synthetic */ C3253jo f16825c;

    public C3258jt(C3253jo c3253jo, C3228iq c3228iq, C3658yo<O> c3658yo) {
        this.f16825c = c3253jo;
        this.f16823a = c3228iq;
        this.f16824b = c3658yo;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3139fi
    /* renamed from: a */
    public final void mo7696a(String str) {
        try {
            if (str == null) {
                this.f16824b.m6733a(new zzake());
            } else {
                this.f16824b.m6733a(new zzake(str));
            }
        } catch (IllegalStateException e) {
        } finally {
            this.f16823a.m7751a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3139fi
    /* renamed from: a */
    public final void mo7695a(JSONObject jSONObject) {
        AbstractC3246jh abstractC3246jh;
        try {
            C3658yo<O> c3658yo = this.f16824b;
            abstractC3246jh = this.f16825c.f16811a;
            c3658yo.m6731b(abstractC3246jh.mo7727a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f16824b.m6733a(e2);
        } finally {
            this.f16823a.m7751a();
        }
    }
}
