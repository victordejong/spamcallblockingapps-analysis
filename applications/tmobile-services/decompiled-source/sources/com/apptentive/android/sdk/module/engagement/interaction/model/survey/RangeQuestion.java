package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion.class */
public class RangeQuestion extends BaseQuestion {
    public RangeQuestion(String str) throws JSONException {
        super(str);
    }

    public int getMax() {
        return optInt("max", 10);
    }

    public String getMaxLabel() {
        return optString("max_label", null);
    }

    public int getMin() {
        return optInt("min", 0);
    }

    public String getMinLabel() {
        return optString("min_label", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getType() {
        return 4;
    }
}
