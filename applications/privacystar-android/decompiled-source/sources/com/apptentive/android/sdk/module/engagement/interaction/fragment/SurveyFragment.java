package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.p001v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.model.SurveyResponsePayload;
import com.apptentive.android.sdk.module.engagement.interaction.model.SurveyInteraction;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultichoiceQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultiselectQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.RangeQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.SinglelineQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.MultichoiceSurveyQuestionView;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.MultiselectSurveyQuestionView;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.RangeSurveyQuestionView;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView;
import com.apptentive.android.sdk.module.engagement.interaction.view.survey.TextSurveyQuestionView;
import com.apptentive.android.sdk.module.survey.OnSurveyFinishedListener;
import com.apptentive.android.sdk.module.survey.OnSurveyQuestionAnsweredListener;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.apptentive.android.sdk.view.ApptentiveNestedScrollView;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/SurveyFragment.class */
public class SurveyFragment extends ApptentiveBaseFragment<SurveyInteraction> implements OnSurveyQuestionAnsweredListener, ApptentiveNestedScrollView.OnScrollChangeListener {
    private static final String EVENT_CANCEL = "cancel";
    private static final String EVENT_CLOSE = "close";
    private static final String EVENT_QUESTION_RESPONSE = "question_response";
    private static final String EVENT_SUBMIT = "submit";
    private Map<String, Object> answers;
    private LinearLayout questionsContainer;
    private ApptentiveNestedScrollView scrollView;

    /* JADX INFO: Access modifiers changed from: private */
    public void callListener(boolean z) {
        Assert.assertMainThread();
        try {
            OnSurveyFinishedListener onSurveyFinishedListener = ApptentiveInternal.getInstance().getOnSurveyFinishedListener();
            if (onSurveyFinishedListener != null) {
                onSurveyFinishedListener.onSurveyFinished(z);
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception while calling listener", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment getFirstRequiredQuestionPos() {
        for (Fragment fragment : getRetainedChildFragmentManager().getFragments()) {
            if (!((SurveyQuestionView) fragment).isValid()) {
                return fragment;
            }
        }
        return null;
    }

    public static SurveyFragment newInstance(Bundle bundle) {
        SurveyFragment surveyFragment = new SurveyFragment();
        surveyFragment.setArguments(bundle);
        return surveyFragment;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public String getToolbarNavigationContentDescription() {
        return getContext().getString(C0724R.string.apptentive_survey_content_description_close_button);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public int getToolbarNavigationIconResourceId(Resources.Theme theme) {
        return Util.getResourceIdFromAttribute(theme, C0724R.C0725attr.apptentiveToolbarIconClose);
    }

    @Override // com.apptentive.android.sdk.module.survey.OnSurveyQuestionAnsweredListener
    public void onAnswered(SurveyQuestionView surveyQuestionView) {
        String questionId = surveyQuestionView.getQuestionId();
        if (!surveyQuestionView.didSendMetric()) {
            surveyQuestionView.setSentMetric(true);
            sendMetricForQuestion(getActivity(), questionId);
        }
        if (surveyQuestionView.isValid()) {
            surveyQuestionView.updateValidationState(true);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(final LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.interaction == 0) {
            getActivity().finish();
        }
        List<Question> questions = ((SurveyInteraction) this.interaction).getQuestions();
        this.answers = new LinkedHashMap(questions.size());
        View inflate = layoutInflater.inflate(C0724R.C0728layout.apptentive_survey, viewGroup, false);
        try {
            ((TextView) inflate.findViewById(C0724R.C0727id.description)).setText(((SurveyInteraction) this.interaction).getDescription());
            Button button = (Button) inflate.findViewById(C0724R.C0727id.send);
            String submitText = ((SurveyInteraction) this.interaction).getSubmitText();
            if (!TextUtils.isEmpty(submitText)) {
                button.setText(submitText);
            }
            button.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.SurveyFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Util.hideSoftKeyboard(SurveyFragment.this.getActivity(), view);
                    if (SurveyFragment.this.validateAndUpdateState()) {
                        if (((SurveyInteraction) SurveyFragment.this.interaction).isShowSuccessMessage() && !TextUtils.isEmpty(((SurveyInteraction) SurveyFragment.this.interaction).getSuccessMessage())) {
                            Toast toast = new Toast(SurveyFragment.this.getContext());
                            toast.setGravity(119, 0, 0);
                            toast.setDuration(0);
                            View inflate2 = layoutInflater.inflate(C0724R.C0728layout.apptentive_survey_sent_toast, (LinearLayout) SurveyFragment.this.getView().findViewById(C0724R.C0727id.survey_sent_toast_root));
                            toast.setView(inflate2);
                            TextView textView = (TextView) inflate2.findViewById(C0724R.C0727id.survey_sent_action_text);
                            textView.setText(((SurveyInteraction) SurveyFragment.this.interaction).getSuccessMessage());
                            int themeColor = Util.getThemeColor(SurveyFragment.this.getContext(), C0724R.C0725attr.apptentiveSurveySentToastActionColor);
                            if (themeColor != 0) {
                                textView.setTextColor(themeColor);
                                ((ImageView) inflate2.findViewById(C0724R.C0727id.survey_sent_action_icon)).setColorFilter(themeColor);
                            }
                            toast.show();
                        }
                        SurveyFragment.this.getActivity().finish();
                        SurveyFragment.this.engageInternal(SurveyFragment.EVENT_SUBMIT);
                        SurveyFragment.this.getConversation().addPayload(new SurveyResponsePayload((SurveyInteraction) SurveyFragment.this.interaction, SurveyFragment.this.answers));
                        ApptentiveLog.m405i("Survey Submitted.", new Object[0]);
                        SurveyFragment.this.callListener(true);
                        return;
                    }
                    Toast toast2 = new Toast(SurveyFragment.this.getContext());
                    toast2.setGravity(87, 0, 0);
                    toast2.setDuration(0);
                    View inflate3 = layoutInflater.inflate(C0724R.C0728layout.apptentive_survey_invalid_toast, (LinearLayout) SurveyFragment.this.getView().findViewById(C0724R.C0727id.survey_invalid_toast_root));
                    toast2.setView(inflate3);
                    String validationError = ((SurveyInteraction) SurveyFragment.this.interaction).getValidationError();
                    if (!TextUtils.isEmpty(validationError)) {
                        ((TextView) inflate3.findViewById(C0724R.C0727id.survey_invalid_toast_text)).setText(validationError);
                    }
                    toast2.show();
                    final Fragment firstRequiredQuestionPos = SurveyFragment.this.getFirstRequiredQuestionPos();
                    Assert.assertNotNull(firstRequiredQuestionPos, "Expected to have a scroll pos");
                    if (firstRequiredQuestionPos != null) {
                        SurveyFragment.this.scrollView.scrollToChild(firstRequiredQuestionPos.getView());
                        if (firstRequiredQuestionPos instanceof SurveyQuestionView) {
                            firstRequiredQuestionPos.getView().requestFocus();
                            final String errorMessage = ((SurveyQuestionView) firstRequiredQuestionPos).getErrorMessage();
                            if (!StringUtils.isNullOrEmpty(errorMessage)) {
                                DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.SurveyFragment.1.1
                                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                                    protected void execute() {
                                        View view2;
                                        if (Build.VERSION.SDK_INT >= 16 && (view2 = firstRequiredQuestionPos.getView()) != null) {
                                            view2.announceForAccessibility(errorMessage);
                                        }
                                    }
                                }, 1500L);
                            }
                        }
                    }
                }
            }));
            this.questionsContainer = (LinearLayout) inflate.findViewById(C0724R.C0727id.questions);
            if (bundle == null) {
                this.questionsContainer.removeAllViews();
                for (int i = 0; i < questions.size(); i++) {
                    Question question = questions.get(i);
                    BaseSurveyQuestionView newInstance = question.getType() == 1 ? TextSurveyQuestionView.newInstance((SinglelineQuestion) question) : question.getType() == 2 ? MultichoiceSurveyQuestionView.newInstance((MultichoiceQuestion) question) : question.getType() == 3 ? MultiselectSurveyQuestionView.newInstance((MultiselectQuestion) question) : question.getType() == 4 ? RangeSurveyQuestionView.newInstance((RangeQuestion) question) : null;
                    if (newInstance != null) {
                        newInstance.setOnSurveyQuestionAnsweredListener(this);
                        getRetainedChildFragmentManager().beginTransaction().add(C0724R.C0727id.questions, newInstance, Integer.toString(i)).commit();
                    }
                }
            } else {
                Iterator<Fragment> it = getRetainedChildFragmentManager().getFragments().iterator();
                while (it.hasNext()) {
                    ((BaseSurveyQuestionView) it.next()).setOnSurveyQuestionAnsweredListener(this);
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", SurveyFragment.class.getSimpleName());
        }
        return inflate;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        if (apptentiveViewExitType.equals(ApptentiveViewExitType.BACK_BUTTON)) {
            engageInternal("cancel");
            return false;
        } else if (apptentiveViewExitType.equals(ApptentiveViewExitType.NOTIFICATION)) {
            engageInternal("cancel", exitTypeToDataJson(apptentiveViewExitType));
            return false;
        } else {
            engageInternal("close", exitTypeToDataJson(apptentiveViewExitType));
            return false;
        }
    }

    @Override // com.apptentive.android.sdk.view.ApptentiveNestedScrollView.OnScrollChangeListener
    public void onScrollChange(ApptentiveNestedScrollView apptentiveNestedScrollView, int i, int i2, int i3, int i4) {
        showToolbarElevation(apptentiveNestedScrollView.getTop() != i2);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, android.support.p001v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        try {
            ((ImageButton) view.findViewById(C0724R.C0727id.info)).setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.SurveyFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(final View view2) {
                    view2.setClickable(false);
                    SurveyFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.SurveyFragment.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            new Handler().postDelayed(new Runnable() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.SurveyFragment.2.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    view2.setClickable(true);
                                }
                            }, 100L);
                        }
                    });
                    ApptentiveInternal.getInstance().showAboutInternal(SurveyFragment.this.getActivity(), false);
                }
            }));
            this.scrollView = (ApptentiveNestedScrollView) view.findViewById(C0724R.C0727id.survey_scrollview);
            this.scrollView.setOnScrollChangeListener(this);
            this.scrollView.setDescendantFocusability(131072);
            this.scrollView.setFocusable(true);
            this.scrollView.setFocusableInTouchMode(true);
            this.scrollView.setOnTouchListener(new View.OnTouchListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.SurveyFragment.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    view2.requestFocusFromTouch();
                    Util.hideSoftKeyboard(SurveyFragment.this.getContext(), view2);
                    return false;
                }
            });
            getActivity().getWindow().setSoftInputMode(16);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onViewCreated()", SurveyFragment.class.getSimpleName());
        }
    }

    void sendMetricForQuestion(Activity activity, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", str);
        } catch (JSONException e) {
        }
        engageInternal(EVENT_QUESTION_RESPONSE, jSONObject.toString());
    }

    public boolean validateAndUpdateState() {
        Iterator<Fragment> it = getRetainedChildFragmentManager().getFragments().iterator();
        boolean z = true;
        while (it.hasNext()) {
            SurveyQuestionView surveyQuestionView = (SurveyQuestionView) it.next();
            this.answers.put(surveyQuestionView.getQuestionId(), surveyQuestionView.getAnswer());
            boolean isValid = surveyQuestionView.isValid();
            surveyQuestionView.updateValidationState(isValid);
            if (!isValid) {
                z = false;
            }
        }
        return z;
    }
}
