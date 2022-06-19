package com.pubmatic.sdk.webrendering.mraid;

import com.facebook.internal.NativeProtocol;
import com.pubmatic.sdk.common.POBError;
import org.json.JSONObject;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.k */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/k.class */
class C2031k implements AbstractC2027g {
    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public POBError mo441a(JSONObject jSONObject, AbstractC2037o abstractC2037o, boolean z) {
        JSONObject optJSONObject = jSONObject.optJSONObject(NativeProtocol.WEB_DIALOG_PARAMS);
        if (optJSONObject == null) {
            return new POBError(1009, "Invalid MRAID command for orientation event");
        }
        abstractC2037o.mo494a(optJSONObject.optBoolean("allowOrientationChange", false), optJSONObject.optString("forceOrientation", null), z);
        return null;
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public String mo442a() {
        return "setOrientationProperties";
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: b */
    public boolean mo440b() {
        return false;
    }
}
