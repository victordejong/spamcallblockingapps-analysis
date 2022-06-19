package com.pubmatic.sdk.webrendering.mraid;

import com.facebook.internal.NativeProtocol;
import com.pubmatic.sdk.common.POBError;
import org.json.JSONObject;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.s */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/s.class */
class C2052s implements AbstractC2027g {
    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public POBError mo441a(JSONObject jSONObject, AbstractC2037o abstractC2037o, boolean z) {
        JSONObject optJSONObject = jSONObject.optJSONObject(NativeProtocol.WEB_DIALOG_PARAMS);
        if (optJSONObject == null) {
            return new POBError(1009, "Invalid MRAID command for playVideo event");
        }
        String optString = optJSONObject.optString("url", null);
        if (optString == null) {
            return new POBError(1009, "Invalid MRAID Url for playVideo event");
        }
        abstractC2037o.mo482d(optString, z);
        return null;
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public String mo442a() {
        return "playVideo";
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: b */
    public boolean mo440b() {
        return true;
    }
}
