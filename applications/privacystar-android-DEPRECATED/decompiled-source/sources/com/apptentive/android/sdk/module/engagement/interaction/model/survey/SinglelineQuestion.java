package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/SinglelineQuestion.class */
public class SinglelineQuestion extends BaseQuestion {
    private static final String KEY_FREEFORM_HINT = "freeform_hint";
    private static final String KEY_MULTILINE = "multiline";

    public SinglelineQuestion(String str) throws JSONException {
        super(str);
    }

    public String getFreeformHint() {
        return optString(KEY_FREEFORM_HINT, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getType() {
        return 1;
    }

    public boolean isMultiLine() {
        return optBoolean(KEY_MULTILINE, false);
    }
}
