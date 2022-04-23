package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/BaseQuestion.class */
public abstract class BaseQuestion extends JSONObject implements Question {
    /* JADX INFO: Access modifiers changed from: protected */
    public BaseQuestion(String str) throws JSONException {
        super(str);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getErrorMessage() {
        return optString("error_message", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getId() {
        return optString(Name.MARK, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getInstructions() {
        return optString("instructions", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getRequiredText() {
        return optString("required_text", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public String getValue() {
        return optString(FirebaseAnalytics.Param.VALUE, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public boolean isRequired() {
        return optBoolean("required", false);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public void setRequiredText(String str) {
        try {
            put("required_text", str);
        } catch (Exception e) {
            ErrorMetrics.logException(e);
        }
    }
}
