package com.verizon.ads.inlineplacement;

import com.verizon.ads.Logger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/AdSize.class */
public class AdSize {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35385c = Logger.getInstance(AdSize.class);

    /* renamed from: a  reason: collision with root package name */
    int f35386a;

    /* renamed from: b  reason: collision with root package name */
    int f35387b;

    public AdSize(int i, int i2) {
        this.f35386a = i;
        this.f35387b = i2;
    }

    public int getHeight() {
        return this.f35387b;
    }

    public int getWidth() {
        return this.f35386a;
    }

    public void setHeight(int i) {
        this.f35387b = i;
    }

    public void setWidth(int i) {
        this.f35386a = i;
    }

    public JSONObject toJSONObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.f35386a);
            jSONObject.put("height", this.f35387b);
            return jSONObject;
        } catch (JSONException e) {
            f35385c.e("Error converting AdSize to JSONObject", e);
            return null;
        }
    }

    public String toString() {
        return "AdSize{width=" + this.f35386a + ", height=" + this.f35387b + '}';
    }
}
