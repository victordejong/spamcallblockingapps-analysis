package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidStringProperty.class */
class MraidStringProperty extends MraidProperty {

    /* renamed from: a */
    String f11929a;

    public MraidStringProperty(String str) {
        super(str);
    }

    /* renamed from: a */
    String mo38742a() {
        return this.f11929a;
    }

    @Override // com.amazon.device.ads.MraidProperty
    /* renamed from: a */
    public final void mo38750a(JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.f11927h, mo38742a());
    }
}
