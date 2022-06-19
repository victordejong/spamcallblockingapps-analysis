package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.android.billingclient.api.k */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/k.class */
public final class C3347k {

    /* renamed from: a */
    final String f12618a;

    /* renamed from: b */
    public final JSONObject f12619b;

    public C3347k(String str) throws JSONException {
        this.f12618a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f12619b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (TextUtils.isEmpty(jSONObject.optString("type"))) {
                throw new IllegalArgumentException("SkuType cannot be empty.");
            }
            return;
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    /* renamed from: a */
    public final String m38184a() {
        return this.f12619b.optString("productId");
    }

    /* renamed from: b */
    public final String m38183b() {
        return this.f12619b.optString("type");
    }

    /* renamed from: c */
    public final long m38182c() {
        return this.f12619b.optLong("price_amount_micros");
    }

    /* renamed from: d */
    public final String m38181d() {
        return this.f12619b.optString("price_currency_code");
    }

    /* renamed from: e */
    public final String m38180e() {
        return this.f12619b.optString("title");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3347k) {
            return TextUtils.equals(this.f12618a, ((C3347k) obj).f12618a);
        }
        return false;
    }

    /* renamed from: f */
    public final String m38179f() {
        return this.f12619b.optString("description");
    }

    /* renamed from: g */
    public final String m38178g() {
        return this.f12619b.optString("packageName");
    }

    /* renamed from: h */
    public final String m38177h() {
        return this.f12619b.optString("skuDetailsToken");
    }

    public final int hashCode() {
        return this.f12618a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f12618a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
