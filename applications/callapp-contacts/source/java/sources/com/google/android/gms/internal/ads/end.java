package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.query.QueryInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/end.class */
public final class end {

    /* renamed from: a */
    public final String f49266a;

    /* renamed from: b */
    public final Bundle f49267b;

    public end(String str, Bundle bundle) {
        this.f49266a = str;
        this.f49267b = bundle;
    }

    /* renamed from: a */
    public static String m14715a(QueryInfo queryInfo) {
        String str = ekb.m14827i().get(queryInfo);
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException e) {
            return "";
        }
    }
}
