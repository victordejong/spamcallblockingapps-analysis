package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase.class */
public class Purchase {

    /* renamed from: a */
    private final String f12265a;

    /* renamed from: b */
    private final String f12266b;

    /* renamed from: c */
    private final JSONObject f12267c;

    /* renamed from: com.android.billingclient.api.Purchase$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase$a.class */
    public static class C3889a {

        /* renamed from: a */
        private final List<Purchase> f12268a;

        /* renamed from: b */
        private final C3905g f12269b;

        public C3889a(C3905g c3905g, List<Purchase> list) {
            this.f12268a = list;
            this.f12269b = c3905g;
        }

        /* renamed from: a */
        public C3905g m23864a() {
            return this.f12269b;
        }

        /* renamed from: b */
        public List<Purchase> m23863b() {
            return this.f12268a;
        }

        /* renamed from: c */
        public int m23862c() {
            return m23864a().m23779b();
        }
    }

    public Purchase(String str, String str2) {
        this.f12265a = str;
        this.f12266b = str2;
        this.f12267c = new JSONObject(str);
    }

    /* renamed from: a */
    public String m23872a() {
        return this.f12265a;
    }

    /* renamed from: b */
    public int m23871b() {
        return this.f12267c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    /* renamed from: c */
    public long m23870c() {
        return this.f12267c.optLong("purchaseTime");
    }

    /* renamed from: d */
    public String m23869d() {
        JSONObject jSONObject = this.f12267c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    /* renamed from: e */
    public String m23868e() {
        return this.f12266b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f12265a, purchase.m23872a()) && TextUtils.equals(this.f12266b, purchase.m23868e());
    }

    /* renamed from: f */
    public String m23867f() {
        return this.f12267c.optString("productId");
    }

    /* renamed from: g */
    public boolean m23866g() {
        return this.f12267c.optBoolean("acknowledged", true);
    }

    /* renamed from: h */
    public boolean m23865h() {
        return this.f12267c.optBoolean("autoRenewing");
    }

    public int hashCode() {
        return this.f12265a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f12265a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
