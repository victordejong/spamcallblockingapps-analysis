package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion.class */
public class MultichoiceQuestion extends BaseQuestion {
    private static final String KEY_ANSWER_CHOICES = "answer_choices";
    protected static final String KEY_MAX_SELECTIONS = "max_selections";
    protected static final String KEY_MIN_SELECTIONS = "min_selections";

    public MultichoiceQuestion(String str) throws JSONException {
        super(str);
    }

    public List<AnswerDefinition> getAnswerChoices() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = getJSONArray(KEY_ANSWER_CHOICES);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new AnswerDefinition(optJSONObject.toString()));
                }
            }
        } catch (JSONException e) {
        }
        return arrayList;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getMaxSelections() {
        return optInt(KEY_MAX_SELECTIONS, 1);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getMinSelections() {
        return optInt(KEY_MIN_SELECTIONS, 1);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion, com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getType() {
        return 2;
    }
}
