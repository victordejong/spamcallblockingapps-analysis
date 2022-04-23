package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.SinglelineQuestion;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/TextSurveyQuestionView.class */
public class TextSurveyQuestionView extends BaseSurveyQuestionView<SinglelineQuestion> implements TextWatcher {
    EditText answer;
    TextInputLayout answerTextInputLayout;
    private boolean isFocused;

    public static TextSurveyQuestionView newInstance(SinglelineQuestion singlelineQuestion) {
        TextSurveyQuestionView textSurveyQuestionView = new TextSurveyQuestionView();
        Bundle bundle = new Bundle();
        bundle.putString("question", singlelineQuestion.toString());
        textSurveyQuestionView.setArguments(bundle);
        return textSurveyQuestionView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        fireListener();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public Object getAnswer() {
        String trim = this.answer.getText().toString().trim();
        try {
            if (TextUtils.isEmpty(trim)) {
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONArray.put(jSONObject);
            jSONObject.put(FirebaseAnalytics.Param.VALUE, trim);
            return jSONArray;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public boolean isValid() {
        boolean z = !((SinglelineQuestion) this.question).isRequired() || !TextUtils.isEmpty(this.answer.getText().toString());
        if (!z) {
            this.answerTextInputLayout.setError(" ");
        } else {
            this.answerTextInputLayout.setError(null);
        }
        return z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            try {
                this.question = new SinglelineQuestion(arguments.getString("question"));
            } catch (JSONException e) {
                ErrorMetrics.logException(e);
            }
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        try {
            layoutInflater.inflate(C0726R.layout.apptentive_survey_question_singleline, getAnswerContainer(onCreateView));
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onCreateView", TextSurveyQuestionView.class.getSimpleName());
            ErrorMetrics.logException(e);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.answer.addTextChangedListener(this);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("answerFocus", this.isFocused);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        boolean z = false;
        if (bundle != null) {
            z = bundle.getBoolean("answerFocus", false);
        }
        this.isFocused = z;
        this.answerTextInputLayout = (TextInputLayout) view.findViewById(C0726R.C0729id.answer_text_input_layout);
        EditText editText = (EditText) view.findViewById(C0726R.C0729id.answer_text);
        this.answer = editText;
        editText.removeTextChangedListener(this);
        String freeformHint = ((SinglelineQuestion) this.question).getFreeformHint();
        if (!TextUtils.isEmpty(freeformHint)) {
            this.answerTextInputLayout.setHint(freeformHint);
            this.answerTextInputLayout.setContentDescription(freeformHint);
            this.answer.setContentDescription(freeformHint);
        }
        this.answer.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.view.survey.TextSurveyQuestionView.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view2, boolean z2) {
                TextSurveyQuestionView.this.isFocused = z2;
            }
        });
        if (((SinglelineQuestion) this.question).isMultiLine()) {
            this.answerTextInputLayout.setGravity(8388659);
            this.answer.setGravity(8388659);
            this.answer.setInputType(147457);
            this.answer.setMinLines(5);
            this.answer.setMaxLines(12);
            this.answer.setImeOptions(1073741824);
        } else {
            this.answerTextInputLayout.setGravity(8388627);
            this.answer.setGravity(8388627);
            this.answer.setInputType(16385);
            this.answer.setMinLines(1);
            this.answer.setMaxLines(5);
        }
        if (this.isFocused) {
            this.answer.post(new Runnable() { // from class: com.apptentive.android.sdk.module.engagement.interaction.view.survey.TextSurveyQuestionView.2
                @Override // java.lang.Runnable
                public void run() {
                    TextSurveyQuestionView.this.answer.requestFocus();
                }
            });
        }
        if (Build.VERSION.SDK_INT > 17) {
            this.answerTextInputLayout.setLabelFor(C0726R.C0729id.answer_text);
        }
    }
}
