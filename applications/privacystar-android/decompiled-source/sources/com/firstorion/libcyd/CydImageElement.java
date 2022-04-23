package com.firstorion.libcyd;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CydImageElement.class */
public final class CydImageElement extends PositionedElement {
    private static final String IMAGE_DATA_JSON_FIELD = "imageData";
    static final String JSON_TYPE_NAME = "image";
    final String imageData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CydImageElement(JSONObject jSONObject) throws JSONException {
        super(jSONObject);
        this.imageData = JsonHelper.getString(jSONObject, IMAGE_DATA_JSON_FIELD);
    }
}
