package com.verizon.ads.inlineplacement;

import com.verizon.ads.Logger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/AdSize.class */
public class AdSize {

    /* renamed from: c */
    private static final Logger f61321c = Logger.getInstance(AdSize.class);

    /* renamed from: a */
    int f61322a;

    /* renamed from: b */
    int f61323b;

    public AdSize(int i, int i2) {
        this.f61322a = i;
        this.f61323b = i2;
    }

    public int getHeight() {
        return this.f61323b;
    }

    public int getWidth() {
        return this.f61322a;
    }

    public void setHeight(int i) {
        this.f61323b = i;
    }

    public void setWidth(int i) {
        this.f61322a = i;
    }

    public JSONObject toJSONObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.f61322a);
            jSONObject.put("height", this.f61323b);
            return jSONObject;
        } catch (JSONException e) {
            f61321c.m5564e("Error converting AdSize to JSONObject", e);
            return null;
        }
    }

    public String toString() {
        return "AdSize{width=" + this.f61322a + ", height=" + this.f61323b + '}';
    }
}
