package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/RangeQuestion.class */
public class RangeQuestion extends BaseQuestion {
    private static final int DEFAULT_MAX = 10;
    private static final int DEFAULT_MIN = 0;
    private static final String KEY_MAX = "max";
    private static final String KEY_MAX_LABEL = "max_label";
    private static final String KEY_MIN = "min";
    private static final String KEY_MIN_LABEL = "min_label";

    public RangeQuestion(String str) throws JSONException {
        super(str);
    }

    public int getMax() {
        return optInt(KEY_MAX, 10);
    }

    public String getMaxLabel() {
        return optString(KEY_MAX_LABEL, null);
    }

    public int getMin() {
        return optInt(KEY_MIN, 0);
    }

    public String getMinLabel() {
        return optString(KEY_MIN_LABEL, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getType() {
        return 4;
    }
}
