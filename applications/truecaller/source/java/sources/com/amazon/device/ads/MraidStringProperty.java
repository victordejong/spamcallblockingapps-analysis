package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidStringProperty.class */
public class MraidStringProperty extends MraidProperty {
    public String value;

    public MraidStringProperty(String str) {
        super(str);
    }

    @Override // com.amazon.device.ads.MraidProperty
    public void formJSON(JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.name, getValue());
    }

    public String getValue() {
        return this.value;
    }
}
