package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f6990a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6991b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f6992c;

    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<i> f6993a;

        /* renamed from: b  reason: collision with root package name */
        public final g f6994b;

        public a(g gVar, List<i> list) {
            this.f6993a = list;
            this.f6994b = gVar;
        }
    }

    public i(String str, String str2) throws JSONException {
        this.f6990a = str;
        this.f6991b = str2;
        this.f6992c = new JSONObject(str);
    }

    public final String a() {
        return this.f6992c.optString("orderId");
    }

    public final String b() {
        return this.f6992c.optString("productId");
    }

    public final String c() {
        JSONObject jSONObject = this.f6992c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public final int d() {
        return this.f6992c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    public final boolean e() {
        return this.f6992c.optBoolean("acknowledged", true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return TextUtils.equals(this.f6990a, iVar.f6990a) && TextUtils.equals(this.f6991b, iVar.f6991b);
    }

    public final int hashCode() {
        return this.f6990a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f6990a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
