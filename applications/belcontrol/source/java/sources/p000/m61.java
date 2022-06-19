package p000;

import android.text.TextUtils;
import com.mopub.network.ImpressionData;
import java.util.HashMap;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.j91;
/* renamed from: m61 */
/* loaded from: classes3-dex2jar.jar:m61.class */
public class m61 implements u61 {
    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        if (r71.m701u().length > 0) {
            return null;
        }
        HashMap<String, String> m5720n = b91.m5720n(false);
        if (m5720n.size() == 0) {
            return null;
        }
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        JSONArray jSONArray = new JSONArray();
        for (String str : m5720n.keySet()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ImpressionData.COUNTRY, m5720n.get(str));
                jSONObject.put("area_code", str);
                jSONArray.put(jSONObject);
            } catch (Throwable th) {
            }
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("sim_cards", jSONArray);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject2;
        } catch (Throwable th2) {
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m1290b(String str) {
        JSONArray optJSONArray;
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        try {
            optJSONArray = new JSONObject(str).optJSONArray("results");
        } catch (Throwable th) {
            Set<String> keySet = b91.m5720n(true).keySet();
            r71.m728H((String[]) keySet.toArray(new String[keySet.size()]));
        }
        if (optJSONArray != null) {
            r71.m728H(TextUtils.split(optJSONArray.join(",").replace("\"", ""), ","));
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            return;
        }
        throw new h91();
    }
}
