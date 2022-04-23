package com.moat.analytics.mobile.inm;

import android.os.Build;
import com.inmobi.ads.C8112ap;
import com.moat.analytics.mobile.inm.C8586w;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.inm.l */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/l.class */
public class C8561l {

    /* renamed from: a */
    public boolean f33309a = false;

    /* renamed from: b */
    public boolean f33310b = false;

    /* renamed from: c */
    public boolean f33311c = false;

    /* renamed from: d */
    public int f33312d = 200;

    /* renamed from: e */
    public int f33313e = 10;

    public C8561l(String str) {
        m5144a(str);
    }

    /* renamed from: a */
    private void m5144a(String str) {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("sa");
                boolean equals = string.equals("c334ae83accfebb8da23104450c896463c9cfab7");
                boolean equals2 = string.equals("8f1d08a2d6496191a5ebae8f0590f513e2619489");
                if ((string.equals("on") || equals || equals2) && !m5143a(jSONObject) && !m5141b(jSONObject)) {
                    this.f33309a = true;
                    this.f33310b = equals;
                    this.f33311c = equals2;
                    if (equals2) {
                        this.f33310b = true;
                    }
                }
                if (jSONObject.has("in")) {
                    int i = jSONObject.getInt("in");
                    if (i >= 100 && i <= 1000) {
                        this.f33312d = i;
                    }
                }
                if (jSONObject.has("es")) {
                    this.f33313e = jSONObject.getInt("es");
                }
                if (m5139c(jSONObject)) {
                    ((C8560k) MoatAnalytics.getInstance()).f33303c = true;
                }
            } catch (Exception e) {
                this.f33309a = false;
                this.f33310b = false;
                this.f33312d = 200;
                C8562m.m5135a(e);
            }
        }
    }

    /* renamed from: a */
    private boolean m5143a(JSONObject jSONObject) {
        try {
            if (16 > Build.VERSION.SDK_INT) {
                return true;
            }
            if (!jSONObject.has("ob")) {
                return false;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("ob");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getInt(i) == Build.VERSION.SDK_INT) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    /* renamed from: b */
    private boolean m5141b(JSONObject jSONObject) {
        try {
            if (!jSONObject.has(C8112ap.f31750a)) {
                return false;
            }
            String b = C8574s.m5088d().m5080b();
            JSONArray jSONArray = jSONObject.getJSONArray(C8112ap.f31750a);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getString(i).contentEquals(b)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            C8562m.m5135a(e);
            return false;
        }
    }

    /* renamed from: c */
    private boolean m5139c(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("al")) {
                return false;
            }
            String b = C8574s.m5088d().m5080b();
            JSONArray jSONArray = jSONObject.getJSONArray("al");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (jSONArray.getString(i).contentEquals(b)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            C8562m.m5135a(e);
            return false;
        }
    }

    /* renamed from: a */
    public boolean m5145a() {
        return this.f33310b;
    }

    /* renamed from: b */
    public boolean m5142b() {
        return this.f33311c;
    }

    /* renamed from: c */
    public int m5140c() {
        return this.f33312d;
    }

    /* renamed from: d */
    public int m5138d() {
        return this.f33313e;
    }

    /* renamed from: e */
    public C8586w.EnumC8594d m5137e() {
        return this.f33309a ? C8586w.EnumC8594d.ON : C8586w.EnumC8594d.OFF;
    }
}
