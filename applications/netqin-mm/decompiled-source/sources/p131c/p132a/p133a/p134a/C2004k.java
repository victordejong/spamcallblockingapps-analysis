package p131c.p132a.p133a.p134a;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.a.a.a.k */
/* loaded from: classes-dex2jar.jar:c/a/a/a/k.class */
public class C2004k {

    /* renamed from: a */
    public final String f7855a;

    /* renamed from: b */
    public final JSONObject f7856b;

    public C2004k(String str) throws JSONException {
        this.f7855a = str;
        JSONObject jSONObject = new JSONObject(this.f7855a);
        this.f7856b = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString("productId"))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        } else if (TextUtils.isEmpty(this.f7856b.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    /* renamed from: a */
    public String m31269a() {
        return this.f7855a;
    }

    /* renamed from: b */
    public String m31268b() {
        return this.f7856b.optString("price");
    }

    /* renamed from: c */
    public String m31267c() {
        return this.f7856b.optString("productId");
    }

    /* renamed from: d */
    public String m31266d() {
        return this.f7856b.optString("type");
    }

    /* renamed from: e */
    public final String m31265e() {
        return this.f7856b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2004k)) {
            return false;
        }
        return TextUtils.equals(this.f7855a, ((C2004k) obj).f7855a);
    }

    /* renamed from: f */
    public final String m31264f() {
        return this.f7856b.optString("skuDetailsToken");
    }

    /* renamed from: g */
    public String m31263g() {
        return this.f7856b.optString("offer_id");
    }

    /* renamed from: h */
    public int m31262h() {
        return this.f7856b.optInt("offer_type");
    }

    public int hashCode() {
        return this.f7855a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f7855a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
