package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/AnswerDefinition.class */
public class AnswerDefinition extends JSONObject {
    private static final String KEY_HINT = "hint";
    private static final String KEY_ID = "id";
    private static final String KEY_TYPE = "type";
    private static final String KEY_VALUE = "value";
    public static final String TYPE_NONE = "none";
    public static final String TYPE_OPTION = "select_option";
    public static final String TYPE_OTHER = "select_other";

    public AnswerDefinition(String str) throws JSONException {
        super(str);
    }

    public String getHint() {
        return optString(KEY_HINT, null);
    }

    public String getId() {
        return optString("id", null);
    }

    public String getType() {
        return optString("type", "none");
    }

    public String getValue() {
        return optString("value", null);
    }
}
