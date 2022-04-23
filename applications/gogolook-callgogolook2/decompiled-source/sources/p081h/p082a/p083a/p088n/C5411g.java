package p081h.p082a.p083a.p088n;

import com.criteo.publisher.model.C2052w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p088n.p090l.C5492n;
/* renamed from: h.a.a.n.g */
/* loaded from: classes-dex2jar.jar:h/a/a/n/g.class */
public class C5411g {

    /* renamed from: a */
    public final List<C5492n> f13557a;

    /* renamed from: b */
    public final char f13558b;

    /* renamed from: c */
    public final double f13559c;

    /* renamed from: d */
    public final String f13560d;

    /* renamed from: e */
    public final String f13561e;

    /* renamed from: h.a.a.n.g$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/g$a.class */
    public static class C5412a {
        /* renamed from: a */
        public static C5411g m25484a(JSONObject jSONObject, C5341e eVar) {
            int i = 0;
            char charAt = jSONObject.optString("ch").charAt(0);
            int optInt = jSONObject.optInt("size");
            double optDouble = jSONObject.optDouble(C2052w.f2268l);
            String optString = jSONObject.optString("style");
            String optString2 = jSONObject.optString("fFamily");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            List emptyList = Collections.emptyList();
            ArrayList arrayList = emptyList;
            if (optJSONObject != null) {
                JSONArray optJSONArray = optJSONObject.optJSONArray("shapes");
                arrayList = emptyList;
                if (optJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList(optJSONArray.length());
                    while (true) {
                        arrayList = arrayList2;
                        if (i >= optJSONArray.length()) {
                            break;
                        }
                        arrayList2.add((C5492n) C5492n.m25366a(optJSONArray.optJSONObject(i), eVar));
                        i++;
                    }
                }
            }
            return new C5411g(arrayList, charAt, optInt, optDouble, optString, optString2);
        }
    }

    public C5411g(List<C5492n> list, char c, int i, double d, String str, String str2) {
        this.f13557a = list;
        this.f13558b = c;
        this.f13559c = d;
        this.f13560d = str;
        this.f13561e = str2;
    }

    /* renamed from: a */
    public static int m25486a(char c, String str, String str2) {
        return ((((0 + c) * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    /* renamed from: a */
    public List<C5492n> m25487a() {
        return this.f13557a;
    }

    /* renamed from: b */
    public double m25485b() {
        return this.f13559c;
    }

    public int hashCode() {
        return m25486a(this.f13558b, this.f13561e, this.f13560d);
    }
}
