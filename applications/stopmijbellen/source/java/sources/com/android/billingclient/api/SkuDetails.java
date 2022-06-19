package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/SkuDetails.class */
public class SkuDetails {

    /* renamed from: a */
    public final String f3208a;

    /* renamed from: b */
    public final JSONObject f3209b;

    public SkuDetails(String str) throws JSONException {
        this.f3208a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f3209b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (TextUtils.isEmpty(jSONObject.optString("type"))) {
                throw new IllegalArgumentException("SkuType cannot be empty.");
            }
            return;
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    /* renamed from: a */
    public String m7230a() {
        return this.f3209b.optString("productId");
    }

    /* renamed from: b */
    public String m7229b() {
        return this.f3209b.optString("type");
    }

    /* renamed from: c */
    public final String m7228c() {
        return this.f3209b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.f3208a, ((SkuDetails) obj).f3208a);
        }
        return false;
    }

    public int hashCode() {
        return this.f3208a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f3208a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
