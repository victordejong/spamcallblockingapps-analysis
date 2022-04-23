package com.inmobi.p497a;

import com.inmobi.p497a.p499b.C7984a;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.a.l */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/l.class */
public class C7998l {

    /* renamed from: d */
    public static final String f31218d = "l";

    /* renamed from: a */
    public C7984a f31219a;

    /* renamed from: b */
    public List<C7984a> f31220b;

    /* renamed from: c */
    public Map<String, String> f31221c;

    /* renamed from: e */
    public long f31222e = Calendar.getInstance().getTimeInMillis();

    /* renamed from: a */
    public final JSONObject m6765a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ts", this.f31222e);
            if (this.f31221c != null && !this.f31221c.isEmpty()) {
                for (Map.Entry<String, String> entry : this.f31221c.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
            if (this.f31219a != null) {
                jSONObject.put("c-ap", this.f31219a.m6786a());
            }
            JSONArray jSONArray = new JSONArray();
            if (this.f31220b != null) {
                for (int i = 0; i < this.f31220b.size(); i++) {
                    jSONArray.put(this.f31220b.get(i).m6786a());
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("v-ap", jSONArray);
                }
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }
}
