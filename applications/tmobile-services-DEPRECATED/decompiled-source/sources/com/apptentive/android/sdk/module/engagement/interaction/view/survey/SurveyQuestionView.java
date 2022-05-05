package com.apptentive.android.sdk.module.engagement.interaction.view.survey;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionView.class */
public interface SurveyQuestionView {
    boolean didSendMetric();

    void focusOnQuestionTitleView();

    Object getAnswer();

    String getQuestionId();

    boolean isValid();

    void setSentMetric(boolean z);

    void updateValidationState(boolean z);
}
