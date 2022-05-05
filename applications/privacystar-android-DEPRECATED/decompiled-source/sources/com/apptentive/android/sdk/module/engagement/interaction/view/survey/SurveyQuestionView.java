package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import com.apptentive.android.sdk.module.survey.OnSurveyQuestionAnsweredListener;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView.class */
public interface SurveyQuestionView {
    boolean didSendMetric();

    Object getAnswer();

    String getErrorMessage();

    String getQuestionId();

    boolean isValid();

    void setOnSurveyQuestionAnsweredListener(OnSurveyQuestionAnsweredListener onSurveyQuestionAnsweredListener);

    void setSentMetric(boolean z);

    void updateValidationState(boolean z);
}
