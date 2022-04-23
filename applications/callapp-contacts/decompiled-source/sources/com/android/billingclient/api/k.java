package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    final String f6995a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f6996b;

    public k(String str) throws JSONException {
        this.f6995a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f6996b = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString("productId"))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        } else if (TextUtils.isEmpty(jSONObject.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    public final String a() {
        return this.f6996b.optString("productId");
    }

    public final String b() {
        return this.f6996b.optString("type");
    }

    public final long c() {
        return this.f6996b.optLong("price_amount_micros");
    }

    public final String d() {
        return this.f6996b.optString("price_currency_code");
    }

    public final String e() {
        return this.f6996b.optString("title");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        return TextUtils.equals(this.f6995a, ((k) obj).f6995a);
    }

    public final String f() {
        return this.f6996b.optString("description");
    }

    public final String g() {
        return this.f6996b.optString("packageName");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String h() {
        return this.f6996b.optString("skuDetailsToken");
    }

    public final int hashCode() {
        return this.f6995a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f6995a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
