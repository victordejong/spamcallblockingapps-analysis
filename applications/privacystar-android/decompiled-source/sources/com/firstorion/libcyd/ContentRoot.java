package com.firstorion.libcyd;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/ContentRoot.class */
final class ContentRoot {
    private static final String CONTENT_JSON_FIELD = "content";
    final PositionedElement[] content;
    final boolean lockScreen;
    final long weightY;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentRoot(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("content");
        this.content = new PositionedElement[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            this.content[i] = PositionedElement.parse(jSONArray.getJSONObject(i));
        }
        this.weightY = jSONObject.optInt("weightY", 50);
        this.lockScreen = jSONObject.optBoolean("lockScreen", false);
    }
}
