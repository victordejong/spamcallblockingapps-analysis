package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.query.QueryInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/end.class */
public final class end {

    /* renamed from: a  reason: collision with root package name */
    public final String f27979a;

    /* renamed from: b  reason: collision with root package name */
    public final Bundle f27980b;

    public end(String str, Bundle bundle) {
        this.f27979a = str;
        this.f27980b = bundle;
    }

    public static String a(QueryInfo queryInfo) {
        String str = ekb.i().get(queryInfo);
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
