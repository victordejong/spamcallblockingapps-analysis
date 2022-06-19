package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p122i2.C3067c;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase.class */
public class Purchase {

    /* renamed from: a */
    public final String f3203a;

    /* renamed from: b */
    public final String f3204b;

    /* renamed from: c */
    public final JSONObject f3205c;

    /* renamed from: com.android.billingclient.api.Purchase$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase$a.class */
    public static class C0868a {

        /* renamed from: a */
        public final List f3206a;

        /* renamed from: b */
        public final C3067c f3207b;

        public C0868a(C3067c c3067c, List<Purchase> list) {
            this.f3206a = list;
            this.f3207b = c3067c;
        }
    }

    public Purchase(String str, String str2) throws JSONException {
        this.f3203a = str;
        this.f3204b = str2;
        this.f3205c = new JSONObject(str);
    }

    /* renamed from: a */
    public String m7234a() {
        return this.f3205c.optString("packageName");
    }

    /* renamed from: b */
    public String m7233b() {
        JSONObject jSONObject = this.f3205c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    /* renamed from: c */
    public ArrayList<String> m7232c() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f3205c.has("productIds")) {
            JSONArray optJSONArray = this.f3205c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (this.f3205c.has("productId")) {
            arrayList.add(this.f3205c.optString("productId"));
        }
        return arrayList;
    }

    /* renamed from: d */
    public boolean m7231d() {
        return this.f3205c.optBoolean("acknowledged", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f3203a, purchase.f3203a) && TextUtils.equals(this.f3204b, purchase.f3204b);
    }

    public int hashCode() {
        return this.f3203a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f3203a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
