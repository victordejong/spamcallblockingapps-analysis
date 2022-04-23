package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbb.class */
public final /* synthetic */ class cbb implements cxu {

    /* renamed from: a  reason: collision with root package name */
    static final cxu f25520a = new cbb();

    private cbb() {
    }

    @Override // com.google.android.gms.internal.ads.cxu
    public final Object a(Object obj) {
        String optString;
        optString = ((JSONObject) obj).optString("nas");
        return optString;
    }
}
