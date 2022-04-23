package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase.class */
public class Purchase {

    /* renamed from: a */
    private final String f3168a;

    /* renamed from: b */
    private final String f3169b;

    /* renamed from: c */
    private final JSONObject f3170c;

    /* renamed from: com.android.billingclient.api.Purchase$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase$a.class */
    public static class C0618a {

        /* renamed from: a */
        private final List<Purchase> f3171a;

        /* renamed from: b */
        private final C0633g f3172b;

        public C0618a(C0633g gVar, List<Purchase> list) {
            this.f3171a = list;
            this.f3172b = gVar;
        }

        /* renamed from: a */
        public C0633g m11545a() {
            return this.f3172b;
        }

        /* renamed from: b */
        public List<Purchase> m11544b() {
            return this.f3171a;
        }

        /* renamed from: c */
        public int m11543c() {
            return m11545a().m11488b();
        }
    }

    public Purchase(String str, String str2) {
        this.f3168a = str;
        this.f3169b = str2;
        this.f3170c = new JSONObject(str);
    }

    /* renamed from: a */
    public String m11552a() {
        return this.f3168a;
    }

    /* renamed from: b */
    public int m11551b() {
        return this.f3170c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    /* renamed from: c */
    public String m11550c() {
        JSONObject jSONObject = this.f3170c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    /* renamed from: d */
    public String m11549d() {
        return this.f3169b;
    }

    /* renamed from: e */
    public String m11548e() {
        return this.f3170c.optString("productId");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f3168a, purchase.m11552a()) && TextUtils.equals(this.f3169b, purchase.m11549d());
    }

    /* renamed from: f */
    public boolean m11547f() {
        return this.f3170c.optBoolean("acknowledged", true);
    }

    /* renamed from: g */
    public boolean m11546g() {
        return this.f3170c.optBoolean("autoRenewing");
    }

    public int hashCode() {
        return this.f3168a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f3168a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
