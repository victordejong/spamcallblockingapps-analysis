package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lt.class */
final class lt implements hw {

    /* renamed from: a  reason: collision with root package name */
    private final kv f28169a;

    /* renamed from: b  reason: collision with root package name */
    private final zp<O> f28170b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ls f28171c;

    public lt(ls lsVar, kv kvVar, zp<O> zpVar) {
        this.f28171c = lsVar;
        this.f28169a = kvVar;
        this.f28170b = zpVar;
    }

    @Override // com.google.android.gms.internal.ads.hw
    public final void a(String str) {
        try {
            if (str == null) {
                this.f28170b.setException(new zzamh());
            } else {
                this.f28170b.setException(new zzamh(str));
            }
        } catch (IllegalStateException e) {
        } finally {
            this.f28169a.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.hw
    public final void a(JSONObject jSONObject) {
        try {
            this.f28170b.set(this.f28171c.f28165a.a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f28170b.setException(e2);
        } finally {
            this.f28169a.a();
        }
    }
}
