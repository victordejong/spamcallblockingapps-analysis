package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidDictionaryProperty.class */
public class MraidDictionaryProperty extends MraidProperty {

    /* renamed from: a  reason: collision with root package name */
    JSONObject f6518a = new JSONObject();

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidDictionaryProperty(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.MraidProperty
    public final void a(JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.h, this.f6518a);
    }
}
