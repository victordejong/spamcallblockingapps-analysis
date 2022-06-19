package com.millennialmedia.internal.adwrapper;

import com.millennialmedia.internal.adwrapper.ContentAdWrapperType;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/ContentDemandSourceAdWrapperType.class */
public class ContentDemandSourceAdWrapperType implements AdWrapperType {
    @Override // com.millennialmedia.internal.adwrapper.AdWrapperType
    public AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str) {
        return new ContentAdWrapperType.ContentAdWrapper(jSONObject.getString(AdWrapperType.ITEM_KEY), jSONObject.getString("adContent"), null, jSONObject.optBoolean(AdWrapperType.ENHANCED_AD_CONTROL_KEY, false));
    }
}
