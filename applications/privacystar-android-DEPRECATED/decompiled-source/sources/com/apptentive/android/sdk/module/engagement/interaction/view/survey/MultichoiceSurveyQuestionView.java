package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.AnswerDefinition;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.BaseQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultichoiceQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice;
import com.apptentive.android.sdk.util.Util;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/MultichoiceSurveyQuestionView.class */
public class MultichoiceSurveyQuestionView extends BaseSurveyQuestionView<MultichoiceQuestion> implements SurveyQuestionChoice.OnCheckedChangeListener, SurveyQuestionChoice.OnOtherTextChangedListener {
    private static final String OTHER_STATE = "otherState";
    private static final String SELECTED_CHOICES = "selectedChoices";
    LinearLayout choiceContainer;
    protected HashMap<Integer, String> otherState;
    protected HashSet<Integer> selectedChoices;

    public static MultichoiceSurveyQuestionView newInstance(MultichoiceQuestion multichoiceQuestion) {
        MultichoiceSurveyQuestionView multichoiceSurveyQuestionView = new MultichoiceSurveyQuestionView();
        Bundle bundle = new Bundle();
        bundle.putString(BaseQuestion.KEY_NAME, multichoiceQuestion.toString());
        multichoiceSurveyQuestionView.setArguments(bundle);
        return multichoiceSurveyQuestionView;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public Object getAnswer() {
        for (int i = 0; i < this.choiceContainer.getChildCount(); i++) {
            try {
                SurveyQuestionChoice surveyQuestionChoice = (SurveyQuestionChoice) this.choiceContainer.getChildAt(i);
                if (surveyQuestionChoice.isChecked()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put((JSONObject) surveyQuestionChoice.getAnswer());
                    return jSONArray;
                }
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Error getting survey answer.", new Object[0]);
                return null;
            }
        }
        return null;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public boolean isValid() {
        boolean z = false;
        for (int i = 0; i < this.choiceContainer.getChildCount(); i++) {
            if (!((SurveyQuestionChoice) this.choiceContainer.getChildAt(i)).isValid(((MultichoiceQuestion) this.question).isRequired())) {
                return false;
            }
        }
        if (!((MultichoiceQuestion) this.question).isRequired() || this.selectedChoices.size() == 1) {
            z = true;
        }
        return z;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice.OnCheckedChangeListener
    public void onCheckChanged(SurveyQuestionChoice surveyQuestionChoice, boolean z) {
        this.selectedChoices.clear();
        if (z) {
            for (int i = 0; i < this.choiceContainer.getChildCount(); i++) {
                SurveyQuestionChoice surveyQuestionChoice2 = (SurveyQuestionChoice) this.choiceContainer.getChildAt(i);
                if (surveyQuestionChoice2 != surveyQuestionChoice) {
                    surveyQuestionChoice2.setChecked(false);
                }
            }
            this.selectedChoices.add(Integer.valueOf(surveyQuestionChoice.getIndex()));
        }
        if (getContext() instanceof Activity) {
            Util.hideSoftKeyboard(getContext(), getView());
        }
        fireListener();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectedChoices = new HashSet<>();
        this.otherState = new HashMap<>();
        Bundle arguments = getArguments();
        if (arguments != null) {
            try {
                this.question = new MultichoiceQuestion(arguments.getString(BaseQuestion.KEY_NAME));
            } catch (JSONException e) {
            }
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        try {
            List<AnswerDefinition> answerChoices = ((MultichoiceQuestion) this.question).getAnswerChoices();
            this.choiceContainer = (LinearLayout) layoutInflater.inflate(C0724R.C0728layout.apptentive_survey_question_multichoice, getAnswerContainer(onCreateView)).findViewById(C0724R.C0727id.choice_container);
            if (bundle != null) {
                this.selectedChoices = (HashSet) bundle.getSerializable(SELECTED_CHOICES);
                this.otherState = (HashMap) bundle.getSerializable(OTHER_STATE);
            }
            for (int i = 0; i < answerChoices.size(); i++) {
                AnswerDefinition answerDefinition = answerChoices.get(i);
                SurveyQuestionChoice surveyQuestionChoice = new SurveyQuestionChoice(getContext(), layoutInflater, answerDefinition, ((MultichoiceQuestion) this.question).getType(), i);
                if (this.selectedChoices.contains(Integer.valueOf(i))) {
                    surveyQuestionChoice.setChecked(true);
                }
                if (answerDefinition.getType().equals(AnswerDefinition.TYPE_OTHER)) {
                    surveyQuestionChoice.setOtherText(this.otherState.get(Integer.valueOf(i)));
                }
                surveyQuestionChoice.setOnCheckChangedListener(this);
                surveyQuestionChoice.setOnOtherTextChangedListener(this);
                this.choiceContainer.addView(surveyQuestionChoice);
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", MultichoiceSurveyQuestionView.class);
        }
        return onCreateView;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice.OnOtherTextChangedListener
    public void onOtherTextChanged(SurveyQuestionChoice surveyQuestionChoice, String str) {
        int index = surveyQuestionChoice.getIndex();
        if (index != -1) {
            this.otherState.put(Integer.valueOf(index), str);
        }
        fireListener();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, android.support.p001v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable(SELECTED_CHOICES, this.selectedChoices);
        bundle.putSerializable(OTHER_STATE, this.otherState);
        super.onSaveInstanceState(bundle);
    }
}
