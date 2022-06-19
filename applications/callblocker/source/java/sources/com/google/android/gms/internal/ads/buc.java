package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/buc.class */
public final /* synthetic */ class buc implements coe {

    /* renamed from: a */
    static final coe f12273a = new buc();

    private buc() {
    }

    @Override // com.google.android.gms.internal.ads.coe
    /* renamed from: a */
    public final Object mo7184a(Object obj) {
        String optString;
        optString = ((JSONObject) obj).optString("nas");
        return optString;
    }
}
