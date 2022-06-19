package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.lt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lt.class */
final class C12726lt implements AbstractC12621hw {

    /* renamed from: a */
    private final C12701kv f49486a;

    /* renamed from: b */
    private final C13103zp<O> f49487b;

    /* renamed from: c */
    private final /* synthetic */ C12725ls f49488c;

    public C12726lt(C12725ls c12725ls, C12701kv c12701kv, C13103zp<O> c13103zp) {
        this.f49488c = c12725ls;
        this.f49486a = c12701kv;
        this.f49487b = c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12621hw
    /* renamed from: a */
    public final void mo14514a(String str) {
        try {
            if (str == null) {
                this.f49487b.setException(new zzamh());
            } else {
                this.f49487b.setException(new zzamh(str));
            }
        } catch (IllegalStateException e) {
        } finally {
            this.f49486a.m14553a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12621hw
    /* renamed from: a */
    public final void mo14513a(JSONObject jSONObject) {
        try {
            this.f49487b.set(this.f49488c.f49482a.mo14523a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f49487b.setException(e2);
        } finally {
            this.f49486a.m14553a();
        }
    }
}
