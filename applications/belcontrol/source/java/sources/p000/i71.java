package p000;

import org.json.JSONObject;
/* renamed from: i71 */
/* loaded from: classes3-dex2jar.jar:i71.class */
public class i71 {

    /* renamed from: a */
    public String f6743a;

    /* renamed from: b */
    public Integer f6744b = -1;

    /* renamed from: c */
    public Boolean f6745c;

    public i71() {
    }

    public i71(JSONObject jSONObject) {
        m1615a(jSONObject);
    }

    /* renamed from: a */
    public final i71 m1615a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return this;
        }
        jSONObject.optInt("reports");
        this.f6743a = jSONObject.optString("name");
        this.f6744b = Integer.valueOf(jSONObject.optInt("id", -1));
        this.f6745c = Boolean.valueOf(jSONObject.optBoolean("spam", true));
        return this;
    }
}
