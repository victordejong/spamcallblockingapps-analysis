package com.facebook.internal.p108a.p110b;

import com.facebook.internal.p108a.C2012c;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.a.b.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a/b/a.class */
public final class C2007a {

    /* renamed from: a */
    private String f5967a;

    /* renamed from: b */
    private String f5968b;

    /* renamed from: c */
    private Long f5969c;

    public C2007a(File file) {
        this.f5967a = file.getName();
        JSONObject m15659a = C2012c.m15659a(this.f5967a, true);
        if (m15659a != null) {
            this.f5969c = Long.valueOf(m15659a.optLong("timestamp", 0L));
            this.f5968b = m15659a.optString("error_message", null);
        }
    }

    public C2007a(String str) {
        this.f5969c = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f5968b = str;
        this.f5967a = new StringBuffer().append("error_log_").append(this.f5969c).append(".json").toString();
    }

    /* renamed from: a */
    public int m15672a(C2007a c2007a) {
        return this.f5969c == null ? -1 : c2007a.f5969c == null ? 1 : c2007a.f5969c.compareTo(this.f5969c);
    }

    /* renamed from: a */
    public boolean m15673a() {
        return (this.f5968b == null || this.f5969c == null) ? false : true;
    }

    /* renamed from: b */
    public void m15671b() {
        if (m15673a()) {
            C2012c.m15661a(this.f5967a, toString());
        }
    }

    /* renamed from: c */
    public void m15670c() {
        C2012c.m15662a(this.f5967a);
    }

    /* renamed from: d */
    public JSONObject m15669d() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f5969c != null) {
                jSONObject.put("timestamp", this.f5969c);
            }
            jSONObject.put("error_message", this.f5968b);
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }

    public String toString() {
        JSONObject m15669d = m15669d();
        return m15669d == null ? null : m15669d.toString();
    }
}
