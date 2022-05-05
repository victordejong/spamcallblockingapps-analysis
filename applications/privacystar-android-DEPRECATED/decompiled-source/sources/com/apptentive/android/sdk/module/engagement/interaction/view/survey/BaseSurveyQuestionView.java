package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import android.os.Bundle;
import android.support.p001v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question;
import com.apptentive.android.sdk.module.survey.OnSurveyQuestionAnsweredListener;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView.class */
public abstract class BaseSurveyQuestionView<Q extends Question> extends Fragment implements SurveyQuestionView {
    private static final String SENT_METRIC = "sent_metric";
    private View dashView;
    private TextView instructionsView;
    private OnSurveyQuestionAnsweredListener listener;
    protected Q question;
    private TextView requiredView;
    private FrameLayout root;
    private boolean sentMetric;
    private View validationFailedBorder;

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public boolean didSendMetric() {
        return this.sentMetric;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fireListener() {
        if (this.listener != null) {
            this.listener.onAnswered(this);
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public abstract Object getAnswer();

    /* JADX INFO: Access modifiers changed from: protected */
    public LinearLayout getAnswerContainer(View view) {
        return (LinearLayout) view.findViewById(C0724R.C0727id.answer_container);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public String getErrorMessage() {
        return this.question.getErrorMessage();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public String getQuestionId() {
        return this.question.getId();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public abstract boolean isValid();

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0724R.C0728layout.apptentive_survey_question_base, viewGroup, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(SENT_METRIC, this.sentMetric);
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        try {
            this.root = (FrameLayout) view.findViewById(C0724R.C0727id.question_base);
            this.requiredView = (TextView) view.findViewById(C0724R.C0727id.question_required);
            this.dashView = view.findViewById(C0724R.C0727id.dash_view);
            this.instructionsView = (TextView) view.findViewById(C0724R.C0727id.question_instructions);
            this.root.setTag(Integer.valueOf(Integer.parseInt(getTag())));
            TextView textView = (TextView) view.findViewById(C0724R.C0727id.question_title);
            textView.setText(this.question.getValue());
            if (this.question.isRequired()) {
                textView.setContentDescription(this.question.getValue() + ". " + getString(C0724R.string.apptentive_required));
            }
            setInstructions(this.question.getRequiredText(), this.question.getInstructions());
            this.validationFailedBorder = view.findViewById(C0724R.C0727id.validation_failed_border);
            this.sentMetric = bundle != null && bundle.getBoolean(SENT_METRIC, false);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", BaseSurveyQuestionView.class.getSimpleName());
        }
    }

    protected void setInstructions(String str, String str2) {
        boolean isRequired = this.question.isRequired();
        boolean z = !TextUtils.isEmpty(str2);
        if (isRequired) {
            String str3 = str;
            if (TextUtils.isEmpty(str)) {
                str3 = "Required";
            }
            this.requiredView.setText(str3);
            this.requiredView.setVisibility(0);
        } else {
            this.requiredView.setVisibility(8);
        }
        if (z) {
            this.instructionsView.setText(str2);
            this.instructionsView.setVisibility(0);
        } else {
            this.instructionsView.setVisibility(8);
        }
        if (!isRequired || !z) {
            this.dashView.setVisibility(8);
        } else {
            this.dashView.setVisibility(0);
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public void setOnSurveyQuestionAnsweredListener(OnSurveyQuestionAnsweredListener onSurveyQuestionAnsweredListener) {
        this.listener = onSurveyQuestionAnsweredListener;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public void setSentMetric(boolean z) {
        this.sentMetric = z;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public void updateValidationState(boolean z) {
        if (z) {
            this.validationFailedBorder.setVisibility(4);
        } else {
            this.validationFailedBorder.setVisibility(0);
        }
    }
}
