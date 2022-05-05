package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import android.app.Activity;
import android.os.Bundle;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultiselectQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice;
import com.apptentive.android.sdk.util.Util;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/MultiselectSurveyQuestionView.class */
public class MultiselectSurveyQuestionView extends MultichoiceSurveyQuestionView implements SurveyQuestionChoice.OnCheckedChangeListener {
    public static MultiselectSurveyQuestionView newInstance(MultiselectQuestion multiselectQuestion) {
        MultiselectSurveyQuestionView multiselectSurveyQuestionView = new MultiselectSurveyQuestionView();
        Bundle bundle = new Bundle();
        bundle.putString(BaseQuestion.KEY_NAME, multiselectQuestion.toString());
        multiselectSurveyQuestionView.setArguments(bundle);
        return multiselectSurveyQuestionView;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.MultichoiceSurveyQuestionView, com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public Object getAnswer() {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < this.choiceContainer.getChildCount(); i++) {
            SurveyQuestionChoice surveyQuestionChoice = (SurveyQuestionChoice) this.choiceContainer.getChildAt(i);
            if (surveyQuestionChoice.isChecked()) {
                jSONArray.put(surveyQuestionChoice.getAnswer());
            }
        }
        if (jSONArray.length() > 0) {
            return jSONArray;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        if (r0 <= r0.getMaxSelections()) goto L_0x0063;
     */
    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.MultichoiceSurveyQuestionView, com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isValid() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = 0
            r5 = r0
        L_0x0004:
            r0 = r5
            r1 = r3
            android.widget.LinearLayout r1 = r1.choiceContainer
            int r1 = r1.getChildCount()
            if (r0 >= r1) goto L_0x0032
            r0 = r3
            android.widget.LinearLayout r0 = r0.choiceContainer
            r1 = r5
            android.view.View r0 = r0.getChildAt(r1)
            com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice r0 = (com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice) r0
            r1 = r3
            Q extends com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question r1 = r1.question
            com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultichoiceQuestion r1 = (com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultichoiceQuestion) r1
            boolean r1 = r1.isRequired()
            boolean r0 = r0.isValid(r1)
            if (r0 != 0) goto L_0x002c
            r0 = 0
            return r0
        L_0x002c:
            int r5 = r5 + 1
            goto L_0x0004
        L_0x0032:
            r0 = r3
            java.util.HashSet<java.lang.Integer> r0 = r0.selectedChoices
            int r0 = r0.size()
            r5 = r0
            r0 = r3
            Q extends com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question r0 = r0.question
            com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultiselectQuestion r0 = (com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultiselectQuestion) r0
            r6 = r0
            r0 = r6
            boolean r0 = r0.isRequired()
            if (r0 != 0) goto L_0x004d
            r0 = r5
            if (r0 == 0) goto L_0x0063
        L_0x004d:
            r0 = r4
            r7 = r0
            r0 = r6
            int r0 = r0.getMinSelections()
            r1 = r5
            if (r0 > r1) goto L_0x0066
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r6
            int r1 = r1.getMaxSelections()
            if (r0 > r1) goto L_0x0066
        L_0x0063:
            r0 = 1
            r7 = r0
        L_0x0066:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.module.engagement.interaction.view.survey.MultiselectSurveyQuestionView.isValid():boolean");
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.MultichoiceSurveyQuestionView, com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice.OnCheckedChangeListener
    public void onCheckChanged(SurveyQuestionChoice surveyQuestionChoice, boolean z) {
        int index = surveyQuestionChoice.getIndex();
        if (z) {
            this.selectedChoices.add(Integer.valueOf(index));
        } else {
            this.selectedChoices.remove(Integer.valueOf(index));
        }
        if (getContext() instanceof Activity) {
            Util.hideSoftKeyboard(getContext(), getView());
        }
        fireListener();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.MultichoiceSurveyQuestionView, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            try {
                this.question = new MultiselectQuestion(arguments.getString(BaseQuestion.KEY_NAME));
            } catch (JSONException e) {
            }
        }
    }
}
