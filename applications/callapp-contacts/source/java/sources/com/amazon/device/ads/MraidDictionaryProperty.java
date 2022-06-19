package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidDictionaryProperty.class */
public class MraidDictionaryProperty extends MraidProperty {

    /* renamed from: a */
    JSONObject f11920a = new JSONObject();

    public MraidDictionaryProperty(String str) {
        super(str);
    }

    @Override // com.amazon.device.ads.MraidProperty
    /* renamed from: a */
    public final void mo38750a(JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.f11927h, this.f11920a);
    }
}
