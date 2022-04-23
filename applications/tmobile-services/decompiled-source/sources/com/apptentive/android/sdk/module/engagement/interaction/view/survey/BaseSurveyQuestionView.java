package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.fragment.app.Fragment;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question;
import com.apptentive.android.sdk.module.survey.OnSurveyQuestionAnsweredListener;
import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/BaseSurveyQuestionView.class */
public abstract class BaseSurveyQuestionView<Q extends Question> extends Fragment implements SurveyQuestionView {
    private View dashView;
    private TextView instructionsView;
    private OnSurveyQuestionAnsweredListener listener;
    protected Q question;
    private TextView questionView;
    private TextView requiredView;
    private FrameLayout root;
    private boolean sentMetric;
    private View validationFailedBorder;

    private String getTitleContentDescription(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (!z && !StringUtils.isNullOrBlank(this.question.getErrorMessage())) {
            sb.append(this.question.getErrorMessage());
            sb.append(' ');
        }
        if (!StringUtils.isNullOrBlank(this.question.getValue())) {
            sb.append(this.question.getValue());
        }
        if (this.question.isRequired() && !StringUtils.isNullOrBlank(this.question.getRequiredText())) {
            sb.append('.');
            sb.append(' ');
            sb.append(this.question.getRequiredText());
        }
        if (!StringUtils.isNullOrBlank(this.question.getInstructions())) {
            sb.append('.');
            sb.append(' ');
            sb.append(this.question.getInstructions());
        }
        return sb.toString();
    }

    private void setInstructionAndRequiredViewsAccessibilityImportance() {
        if (Build.VERSION.SDK_INT >= 16) {
            this.instructionsView.setImportantForAccessibility(2);
            this.dashView.setImportantForAccessibility(2);
            this.requiredView.setImportantForAccessibility(2);
        }
    }

    private void setInstructions(String str, String str2) {
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
        setInstructionAndRequiredViewsAccessibilityImportance();
    }

    private void setQuestion(String str) {
        this.questionView.setText(str);
        setQuestionAsHeadingForAccessibility();
    }

    private void setQuestionAsHeadingForAccessibility() {
        if (Build.VERSION.SDK_INT >= 19) {
            ViewCompat.m19183n0(this.questionView, new AccessibilityDelegateCompat(this) { // from class: com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView.1
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.m19006m0(true);
                }
            });
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public boolean didSendMetric() {
        return this.sentMetric;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fireListener() {
        OnSurveyQuestionAnsweredListener onSurveyQuestionAnsweredListener = this.listener;
        if (onSurveyQuestionAnsweredListener != null) {
            onSurveyQuestionAnsweredListener.onAnswered(this);
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public void focusOnQuestionTitleView() {
        this.questionView.sendAccessibilityEvent(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LinearLayout getAnswerContainer(View view) {
        return (LinearLayout) view.findViewById(C0726R.C0729id.answer_container);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public String getQuestionId() {
        return this.question.getId();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C0726R.layout.apptentive_survey_question_base, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("sent_metric", this.sentMetric);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        try {
            this.root = (FrameLayout) view.findViewById(C0726R.C0729id.question_base);
            this.requiredView = (TextView) view.findViewById(C0726R.C0729id.question_required);
            this.dashView = view.findViewById(C0726R.C0729id.dash_view);
            this.instructionsView = (TextView) view.findViewById(C0726R.C0729id.question_instructions);
            this.questionView = (TextView) view.findViewById(C0726R.C0729id.question_title);
            this.root.setTag(Integer.valueOf(Integer.parseInt(getTag())));
            setQuestion(this.question.getValue());
            setInstructions(this.question.getRequiredText(), this.question.getInstructions());
            this.validationFailedBorder = view.findViewById(C0726R.C0729id.validation_failed_border);
            this.sentMetric = bundle != null && bundle.getBoolean("sent_metric", false);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onCreateView()", BaseSurveyQuestionView.class.getSimpleName());
            ErrorMetrics.logException(e);
        }
    }

    public void setOnSurveyQuestionAnsweredListener(OnSurveyQuestionAnsweredListener onSurveyQuestionAnsweredListener) {
        this.listener = onSurveyQuestionAnsweredListener;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public void setSentMetric(boolean z) {
        this.sentMetric = z;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public void updateValidationState(boolean z) {
        this.validationFailedBorder.setVisibility(z ? 4 : 0);
        this.questionView.setContentDescription(getTitleContentDescription(z));
    }
}
