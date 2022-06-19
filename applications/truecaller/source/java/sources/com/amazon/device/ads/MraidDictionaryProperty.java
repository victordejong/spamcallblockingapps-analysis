package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidDictionaryProperty.class */
public class MraidDictionaryProperty extends MraidProperty {
    public JSONObject data = new JSONObject();

    public MraidDictionaryProperty(String str) {
        super(str);
    }

    @Override // com.amazon.device.ads.MraidProperty
    public void formJSON(JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.name, this.data);
    }

    public JSONObject getData() {
        return this.data;
    }
}
