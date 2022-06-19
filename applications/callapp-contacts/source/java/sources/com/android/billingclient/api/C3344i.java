package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.android.billingclient.api.i */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i.class */
public final class C3344i {

    /* renamed from: a */
    private final String f12613a;

    /* renamed from: b */
    private final String f12614b;

    /* renamed from: c */
    private final JSONObject f12615c;

    /* renamed from: com.android.billingclient.api.i$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i$a.class */
    public static final class C3345a {

        /* renamed from: a */
        public final List<C3344i> f12616a;

        /* renamed from: b */
        public final C3341g f12617b;

        public C3345a(C3341g c3341g, List<C3344i> list) {
            this.f12616a = list;
            this.f12617b = c3341g;
        }
    }

    public C3344i(String str, String str2) throws JSONException {
        this.f12613a = str;
        this.f12614b = str2;
        this.f12615c = new JSONObject(str);
    }

    /* renamed from: a */
    public final String m38189a() {
        return this.f12615c.optString("orderId");
    }

    /* renamed from: b */
    public final String m38188b() {
        return this.f12615c.optString("productId");
    }

    /* renamed from: c */
    public final String m38187c() {
        JSONObject jSONObject = this.f12615c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    /* renamed from: d */
    public final int m38186d() {
        return this.f12615c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    /* renamed from: e */
    public final boolean m38185e() {
        return this.f12615c.optBoolean("acknowledged", true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3344i)) {
            return false;
        }
        C3344i c3344i = (C3344i) obj;
        return TextUtils.equals(this.f12613a, c3344i.f12613a) && TextUtils.equals(this.f12614b, c3344i.f12614b);
    }

    public final int hashCode() {
        return this.f12613a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f12613a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
