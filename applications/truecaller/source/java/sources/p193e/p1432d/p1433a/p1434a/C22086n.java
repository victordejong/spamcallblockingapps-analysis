package p193e.p1432d.p1433a.p1434a;

import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: e.d.a.a.n */
/* loaded from: classes-dex2jar.jar:e/d/a/a/n.class */
public class C22086n {

    /* renamed from: a */
    public final String f61385a;

    /* renamed from: b */
    public final String f61386b;

    /* renamed from: c */
    public final JSONObject f61387c;

    /* renamed from: e.d.a.a.n$a */
    /* loaded from: classes-dex2jar.jar:e/d/a/a/n$a.class */
    public static class C22087a {

        /* renamed from: a */
        public final List<C22086n> f61388a;

        /* renamed from: b */
        public final C22080k f61389b;

        public C22087a(C22080k c22080k, List<C22086n> list) {
            this.f61388a = list;
            this.f61389b = c22080k;
        }
    }

    public C22086n(String str, String str2) throws JSONException {
        this.f61385a = str;
        this.f61386b = str2;
        this.f61387c = new JSONObject(str);
    }

    /* renamed from: a */
    public String m8803a() {
        JSONObject jSONObject = this.f61387c;
        return jSONObject.optString(AnalyticsConstants.TOKEN, jSONObject.optString("purchaseToken"));
    }

    /* renamed from: b */
    public ArrayList<String> m8802b() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f61387c.has("productIds")) {
            JSONArray optJSONArray = this.f61387c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (this.f61387c.has("productId")) {
            arrayList.add(this.f61387c.optString("productId"));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C22086n)) {
            return false;
        }
        C22086n c22086n = (C22086n) obj;
        return TextUtils.equals(this.f61385a, c22086n.f61385a) && TextUtils.equals(this.f61386b, c22086n.f61386b);
    }

    public int hashCode() {
        return this.f61385a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f61385a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
