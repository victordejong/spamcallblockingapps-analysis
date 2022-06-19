package com.pubmatic.sdk.webrendering.mraid;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.NativeProtocol;
import com.pubmatic.sdk.common.POBError;
import org.json.JSONObject;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.j */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/j.class */
class C2030j implements AbstractC2027g {
    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public POBError mo441a(JSONObject jSONObject, AbstractC2037o abstractC2037o, boolean z) {
        JSONObject optJSONObject = jSONObject.optJSONObject(NativeProtocol.WEB_DIALOG_PARAMS);
        if (optJSONObject == null) {
            return new POBError(1009, "Invalid MRAID command for orientation event");
        }
        abstractC2037o.mo512a(optJSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, 0), optJSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 0), optJSONObject.optInt("offsetX", 0), optJSONObject.optInt("offsetY", 0), optJSONObject.optBoolean("allowOffscreen", false), z);
        return null;
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: a */
    public String mo442a() {
        return "resize";
    }

    @Override // com.pubmatic.sdk.webrendering.mraid.AbstractC2027g
    /* renamed from: b */
    public boolean mo440b() {
        return true;
    }
}
