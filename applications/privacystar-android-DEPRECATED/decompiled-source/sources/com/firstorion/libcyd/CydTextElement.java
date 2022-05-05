package com.firstorion.libcyd;

import android.support.p001v4.view.ViewCompat;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CydTextElement.class */
public final class CydTextElement extends PositionedElement {
    private static final String FONT_COLOR_JSON_FIELD = "fontColor";
    private static final String FONT_SIZE_JSON_FIELD = "fontSize";
    static final String JSON_TYPE_NAME = "text";
    private static final String JUSTIFY_JSON_FIELD = "justify";
    private static final String TEXT_JSON_FIELD = "text";
    final int fontColor;
    final FontSize fontSize;
    final Justify justify;
    final String text;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CydTextElement(JSONObject jSONObject) throws JSONException {
        super(jSONObject, 100);
        this.text = JsonHelper.getString(jSONObject, "text");
        this.fontColor = ColorHelper.tryParseColor(jSONObject.optString(FONT_COLOR_JSON_FIELD), ViewCompat.MEASURED_STATE_MASK);
        this.fontSize = FontSize.valueOrDefault(jSONObject.optString(FONT_SIZE_JSON_FIELD));
        this.justify = Justify.valueOrDefault(jSONObject.optString(JUSTIFY_JSON_FIELD));
    }
}
