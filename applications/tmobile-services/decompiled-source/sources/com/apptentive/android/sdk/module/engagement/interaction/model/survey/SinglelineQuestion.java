package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/SinglelineQuestion.class */
public class SinglelineQuestion extends BaseQuestion {
    public SinglelineQuestion(String str) throws JSONException {
        super(str);
    }

    public String getFreeformHint() {
        return optString("freeform_hint", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getType() {
        return 1;
    }

    public boolean isMultiLine() {
        return optBoolean("multiline", false);
    }
}
