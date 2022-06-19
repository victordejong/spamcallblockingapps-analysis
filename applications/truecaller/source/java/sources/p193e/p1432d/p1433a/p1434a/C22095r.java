package p193e.p1432d.p1433a.p1434a;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: e.d.a.a.r */
/* loaded from: classes-dex2jar.jar:e/d/a/a/r.class */
public class C22095r {

    /* renamed from: a */
    public final String f61403a;

    /* renamed from: b */
    public final JSONObject f61404b;

    public C22095r(String str) throws JSONException {
        this.f61403a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f61404b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (TextUtils.isEmpty(jSONObject.optString("type"))) {
                throw new IllegalArgumentException("SkuType cannot be empty.");
            }
            return;
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    /* renamed from: a */
    public String m8801a() {
        return this.f61404b.optString("productId");
    }

    /* renamed from: b */
    public String m8800b() {
        return this.f61404b.optString("type");
    }

    /* renamed from: c */
    public final String m8799c() {
        return this.f61404b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C22095r) {
            return TextUtils.equals(this.f61403a, ((C22095r) obj).f61403a);
        }
        return false;
    }

    public int hashCode() {
        return this.f61403a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f61403a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
