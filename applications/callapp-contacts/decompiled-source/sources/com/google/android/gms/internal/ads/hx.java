package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hx.class */
final class hx implements hw {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zp f28056a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hx(hu huVar, zp zpVar) {
        this.f28056a = zpVar;
    }

    @Override // com.google.android.gms.internal.ads.hw
    public final void a(String str) {
        this.f28056a.setException(new zzamh(str));
    }

    @Override // com.google.android.gms.internal.ads.hw
    public final void a(JSONObject jSONObject) {
        this.f28056a.set(jSONObject);
    }
}
