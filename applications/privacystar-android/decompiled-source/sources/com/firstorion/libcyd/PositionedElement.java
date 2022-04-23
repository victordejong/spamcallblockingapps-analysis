package com.firstorion.libcyd;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/PositionedElement.class */
abstract class PositionedElement {
    private static final String TYPE_JSON_FIELD = "type";
    private static final String WEIGHTX_JSON_FIELD = "weightX";
    private static final String WEIGHTY_JSON_FIELD = "weightY";
    private static final String X_JSON_FIELD = "x";
    private static final String Y_JSON_FIELD = "y";
    private static final String Z_JSON_FIELD = "z";
    final int weightX;
    final int weightY;

    /* renamed from: x */
    final int f127x;

    /* renamed from: y */
    final int f128y;

    /* renamed from: z */
    final int f129z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PositionedElement(JSONObject jSONObject) throws JSONException {
        this.f127x = JsonHelper.getInt(jSONObject, X_JSON_FIELD);
        this.f128y = JsonHelper.getInt(jSONObject, Y_JSON_FIELD);
        this.weightX = JsonHelper.getInt(jSONObject, WEIGHTX_JSON_FIELD);
        this.weightY = JsonHelper.getInt(jSONObject, WEIGHTY_JSON_FIELD);
        this.f129z = JsonHelper.getInt(jSONObject, Z_JSON_FIELD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PositionedElement(JSONObject jSONObject, int i) throws JSONException {
        this.f127x = JsonHelper.getInt(jSONObject, X_JSON_FIELD);
        this.f128y = JsonHelper.getInt(jSONObject, Y_JSON_FIELD);
        this.weightX = JsonHelper.getInt(jSONObject, WEIGHTX_JSON_FIELD);
        this.weightY = i;
        this.f129z = JsonHelper.getInt(jSONObject, Z_JSON_FIELD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PositionedElement parse(JSONObject jSONObject) throws JSONException {
        String string = JsonHelper.getString(jSONObject, "type");
        if ("animation".equals(string)) {
            return new CydAnimation(jSONObject);
        }
        if ("text".equals(string)) {
            return new CydTextElement(jSONObject);
        }
        if ("image".equals(string)) {
            return new CydImageElement(jSONObject);
        }
        throw new JSONException("Unknown type: " + string);
    }
}
