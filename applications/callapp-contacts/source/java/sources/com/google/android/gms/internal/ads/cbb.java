package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbb.class */
public final /* synthetic */ class cbb implements cxu {

    /* renamed from: a */
    static final cxu f45438a = new cbb();

    private cbb() {
    }

    @Override // com.google.android.gms.internal.ads.cxu
    /* renamed from: a */
    public final Object mo14064a(Object obj) {
        String optString;
        optString = ((JSONObject) obj).optString("nas");
        return optString;
    }
}
