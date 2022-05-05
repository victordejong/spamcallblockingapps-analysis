package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/MultiselectQuestion.class */
public class MultiselectQuestion extends MultichoiceQuestion {
    public MultiselectQuestion(String str) throws JSONException {
        super(str);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultichoiceQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getMaxSelections() {
        return optInt("max_selections", getAnswerChoices().size());
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultichoiceQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getType() {
        return 3;
    }
}
