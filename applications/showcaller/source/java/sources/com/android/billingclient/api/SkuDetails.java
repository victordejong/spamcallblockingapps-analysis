package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/SkuDetails.class */
public class SkuDetails {

    /* renamed from: a */
    private final String f12270a;

    /* renamed from: b */
    private final JSONObject f12271b;

    public SkuDetails(String str) {
        this.f12270a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f12271b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (TextUtils.isEmpty(jSONObject.optString("type"))) {
                throw new IllegalArgumentException("SkuType cannot be empty.");
            }
            return;
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    /* renamed from: a */
    public String m23861a() {
        return this.f12270a;
    }

    /* renamed from: b */
    public String m23860b() {
        return this.f12271b.optString("price");
    }

    /* renamed from: c */
    public String m23859c() {
        return this.f12271b.optString("productId");
    }

    /* renamed from: d */
    public String m23858d() {
        return this.f12271b.optString("type");
    }

    /* renamed from: e */
    public final String m23857e() {
        return this.f12271b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.f12270a, ((SkuDetails) obj).f12270a);
        }
        return false;
    }

    /* renamed from: f */
    public final String m23856f() {
        return this.f12271b.optString("skuDetailsToken");
    }

    /* renamed from: g */
    public String m23855g() {
        return this.f12271b.optString("offer_id");
    }

    /* renamed from: h */
    public int m23854h() {
        return this.f12271b.optInt("offer_type");
    }

    public int hashCode() {
        return this.f12270a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f12270a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
