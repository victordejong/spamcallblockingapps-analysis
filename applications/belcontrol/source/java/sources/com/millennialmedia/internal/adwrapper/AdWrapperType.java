package com.millennialmedia.internal.adwrapper;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adwrapper/AdWrapperType.class */
public interface AdWrapperType {
    public static final String ENHANCED_AD_CONTROL_KEY = "enableEnhancedAdControl";
    public static final String ITEM_KEY = "item";
    public static final String REQ_KEY = "req";

    AdWrapper createAdWrapperFromJSON(JSONObject jSONObject, String str);
}
