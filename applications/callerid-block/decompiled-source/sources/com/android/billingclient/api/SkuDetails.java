package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/SkuDetails.class */
public class SkuDetails {

    /* renamed from: a */
    private final String f3173a;

    /* renamed from: b */
    private final JSONObject f3174b;

    public SkuDetails(String str) {
        this.f3173a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f3174b = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString("productId"))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        } else if (TextUtils.isEmpty(jSONObject.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    /* renamed from: a */
    public String m11542a() {
        return this.f3173a;
    }

    /* renamed from: b */
    public String m11541b() {
        return this.f3174b.optString("price");
    }

    /* renamed from: c */
    public String m11540c() {
        return this.f3174b.optString("productId");
    }

    /* renamed from: d */
    public String m11539d() {
        return this.f3174b.optString("type");
    }

    /* renamed from: e */
    public final String m11538e() {
        return this.f3174b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuDetails)) {
            return false;
        }
        return TextUtils.equals(this.f3173a, ((SkuDetails) obj).f3173a);
    }

    /* renamed from: f */
    final String m11537f() {
        return this.f3174b.optString("skuDetailsToken");
    }

    /* renamed from: g */
    public String m11536g() {
        return this.f3174b.optString("offer_id");
    }

    /* renamed from: h */
    public int m11535h() {
        return this.f3174b.optInt("offer_type");
    }

    public int hashCode() {
        return this.f3173a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f3173a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
