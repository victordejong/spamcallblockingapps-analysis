package com.pubmatic.sdk.webrendering.mraid;

import com.facebook.internal.NativeProtocol;
import com.pubmatic.sdk.common.POBError;
import org.json.JSONObject;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.e */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/e.class */
class C2025e implements AbstractC2027g {
    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public POBError mo441a(JSONObject jSONObject, AbstractC2037o abstractC2037o, boolean z) {
        JSONObject optJSONObject = jSONObject.optJSONObject(NativeProtocol.WEB_DIALOG_PARAMS);
        if (optJSONObject == null) {
            return new POBError(1009, "Invalid MRAID command for createcalendarevent");
        }
        abstractC2037o.mo496a(optJSONObject, z);
        return null;
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public String mo442a() {
        return "createCalendarEvent";
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: b */
    public boolean mo440b() {
        return true;
    }
}
