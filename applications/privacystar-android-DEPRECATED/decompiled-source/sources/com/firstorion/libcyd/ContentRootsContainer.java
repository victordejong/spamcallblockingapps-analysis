package com.firstorion.libcyd;

import com.apptentive.android.sdk.Apptentive;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/ContentRootsContainer.class */
final class ContentRootsContainer {
    final ContentRoot[] contentRoots;
    final String version;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentRootsContainer(JSONObject jSONObject) throws JSONException {
        this.version = jSONObject.getString(Apptentive.Version.TYPE);
        JSONArray jSONArray = jSONObject.getJSONArray("contentRoots");
        this.contentRoots = new ContentRoot[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            this.contentRoots[i] = new ContentRoot(jSONArray.getJSONObject(i));
        }
    }
}
