package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidStringProperty.class */
class MraidStringProperty extends MraidProperty {

    /* renamed from: a  reason: collision with root package name */
    String f6523a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidStringProperty(String str) {
        super(str);
    }

    String a() {
        return this.f6523a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.MraidProperty
    public final void a(JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.h, a());
    }
}
