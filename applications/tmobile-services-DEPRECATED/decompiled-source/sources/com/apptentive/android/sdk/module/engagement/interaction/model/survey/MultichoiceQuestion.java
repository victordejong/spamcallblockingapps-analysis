package com.apptentive.android.sdk.module.engagement.interaction.model.survey;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/survey/MultichoiceQuestion.class */
public class MultichoiceQuestion extends BaseQuestion {
    public MultichoiceQuestion(String str) throws JSONException {
        super(str);
    }

    public List<AnswerDefinition> getAnswerChoices() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = getJSONArray("answer_choices");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new AnswerDefinition(optJSONObject.toString()));
                }
            }
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
        }
        return arrayList;
    }

    public int getMinSelections() {
        return optInt("min_selections", 1);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question
    public int getType() {
        return 2;
    }
}
