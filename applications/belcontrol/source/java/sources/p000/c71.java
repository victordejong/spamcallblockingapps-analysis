package p000;

import android.text.TextUtils;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.network.ImpressionData;
import java.io.Serializable;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.j91;
/* renamed from: c71 */
/* loaded from: classes3-dex2jar.jar:c71.class */
public class c71 implements u61 {

    /* renamed from: a */
    public C0289c f2180a = null;

    /* renamed from: b */
    public i91 f2181b;

    /* renamed from: c */
    public int f2182c;

    /* renamed from: d */
    public int f2183d;

    /* renamed from: c71$b */
    /* loaded from: classes3-dex2jar.jar:c71$b.class */
    public static final class C0288b implements Serializable, Comparable<C0288b> {

        /* renamed from: a */
        public String f2184a;

        /* renamed from: b */
        public long f2185b;

        /* renamed from: c */
        public String f2186c;

        /* renamed from: d */
        public String f2187d;

        public C0288b(JSONObject jSONObject) {
            this.f2184a = jSONObject.isNull("reporter") ? "" : jSONObject.optString("reporter");
            if (!jSONObject.isNull("avatar")) {
                jSONObject.optString("avatar");
            }
            this.f2187d = jSONObject.isNull("caller") ? "" : jSONObject.optString("caller");
            this.f2185b = jSONObject.optLong("created");
            this.f2186c = jSONObject.isNull("text") ? "" : jSONObject.optString("text");
        }

        /* renamed from: a */
        public int compareTo(C0288b c0288b) {
            int i = ((this.f2185b - c0288b.f2185b) > 0L ? 1 : ((this.f2185b - c0288b.f2185b) == 0L ? 0 : -1));
            if (i < 0) {
                return 1;
            }
            return i > 0 ? -1 : 0;
        }
    }

    /* renamed from: c71$c */
    /* loaded from: classes3-dex2jar.jar:c71$c.class */
    public static final class C0289c implements Serializable {

        /* renamed from: a */
        public C0288b[] f2188a;

        /* renamed from: b */
        public int f2189b;

        public C0289c(JSONObject jSONObject) {
            this.f2189b = jSONObject.optInt("total");
            if (!jSONObject.isNull("top_report")) {
                new C0288b(jSONObject.optJSONObject("top_report"));
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("reports");
            if (optJSONArray == null) {
                this.f2188a = new C0288b[0];
                return;
            }
            C0288b[] c0288bArr = new C0288b[optJSONArray.length()];
            this.f2188a = c0288bArr;
            int length = c0288bArr.length;
            for (int i = 0; i < length; i++) {
                this.f2188a[i] = new C0288b(optJSONArray.optJSONObject(i));
            }
        }
    }

    @Override // p000.u61
    /* renamed from: a */
    public JSONObject mo73a() {
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("phone_number", this.f2181b.toString());
            jSONObject.put(ImpressionData.COUNTRY, this.f2181b.m1612b());
            jSONObject.put(VastIconXmlManager.OFFSET, this.f2182c);
            jSONObject.put("limit", this.f2183d);
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), true);
            return jSONObject;
        } catch (Throwable th) {
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_TO_SERVER"), false);
            return null;
        }
    }

    /* renamed from: b */
    public void m5439b(String str) {
        JSONObject jSONObject;
        j91.m1522B(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"));
        if (TextUtils.isEmpty(str)) {
            j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
            return;
        }
        this.f2180a = new C0289c(new JSONObject());
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable th) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("results", new JSONArray(str));
                jSONObject = jSONObject2;
            } catch (Throwable th2) {
                j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), false);
                return;
            }
        }
        this.f2180a = new C0289c(jSONObject);
        j91.m1520D(j91.C1453b.m1488b(this, "PROTO_FROM_SERVER"), true);
    }
}
