package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import android.content.Context;
import android.support.design.widget.TextInputLayout;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.AnswerDefinition;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice.class */
public class SurveyQuestionChoice extends FrameLayout implements CompoundButton.OnCheckedChangeListener, TextWatcher {
    private final String answerId;
    private final CheckBox checkBox;
    private final int index;
    private final boolean isOtherType;
    private OnCheckedChangeListener onCheckChangedListener;
    private OnOtherTextChangedListener onOtherTextChangedListener;
    private final EditText otherTextInput;
    private final TextInputLayout otherTextInputLayout;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnCheckedChangeListener.class */
    public interface OnCheckedChangeListener {
        void onCheckChanged(SurveyQuestionChoice surveyQuestionChoice, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/SurveyQuestionChoice$OnOtherTextChangedListener.class */
    public interface OnOtherTextChangedListener {
        void onOtherTextChanged(SurveyQuestionChoice surveyQuestionChoice, String str);
    }

    public SurveyQuestionChoice(Context context, LayoutInflater layoutInflater, AnswerDefinition answerDefinition, int i, int i2) {
        super(context);
        this.index = i2;
        this.answerId = answerDefinition.getId();
        this.isOtherType = answerDefinition.getType().equals(AnswerDefinition.TYPE_OTHER);
        if (i != 2) {
            layoutInflater.inflate(C0724R.C0728layout.apptentive_survey_question_multiselect_choice, this);
        } else {
            layoutInflater.inflate(C0724R.C0728layout.apptentive_survey_question_multichoice_choice, this);
        }
        this.checkBox = (CheckBox) findViewById(C0724R.C0727id.checkbox);
        this.otherTextInputLayout = (TextInputLayout) findViewById(C0724R.C0727id.other_text_input_layout);
        this.otherTextInput = (EditText) findViewById(C0724R.C0727id.other_edit_text);
        this.checkBox.setText(answerDefinition.getValue());
        if (this.isOtherType) {
            this.otherTextInputLayout.setHint(answerDefinition.getHint());
        }
        this.checkBox.setOnCheckedChangeListener(this);
        if (this.isOtherType) {
            this.otherTextInput.addTextChangedListener(this);
        }
    }

    private void updateOtherState(boolean z) {
        if (z) {
            this.otherTextInputLayout.setVisibility(0);
            this.otherTextInput.post(new Runnable() { // from class: com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionChoice.1
                @Override // java.lang.Runnable
                public void run() {
                    SurveyQuestionChoice.this.otherTextInput.requestFocus();
                    ((InputMethodManager) SurveyQuestionChoice.this.getContext().getSystemService("input_method")).showSoftInput(SurveyQuestionChoice.this.otherTextInput, 0);
                }
            });
            return;
        }
        this.otherTextInputLayout.setVisibility(8);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String trim = editable.toString().trim();
        if (this.onOtherTextChangedListener != null) {
            this.onOtherTextChangedListener.onOtherTextChanged(this, trim);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public Object getAnswer() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.answerId);
            if (isOtherType()) {
                jSONObject.put(FirebaseAnalytics.Param.VALUE, getOtherText());
            }
            return jSONObject;
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Error producing survey answer.", new Object[0]);
            return null;
        }
    }

    public String getAnswerId() {
        return this.answerId;
    }

    public int getIndex() {
        return this.index;
    }

    public String getOtherText() {
        return this.otherTextInput.getText().toString().trim();
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    public boolean isOtherType() {
        return this.isOtherType;
    }

    public boolean isValid(boolean z) {
        if (!z || !isChecked() || !this.isOtherType || getOtherText().length() >= 1) {
            this.otherTextInputLayout.setError(null);
            return true;
        }
        this.otherTextInputLayout.setError(" ");
        return false;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.isOtherType) {
            updateOtherState(z);
        }
        if (this.onCheckChangedListener != null) {
            this.onCheckChangedListener.onCheckChanged(this, z);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z);
        if (this.isOtherType) {
            updateOtherState(z);
        }
    }

    public void setOnCheckChangedListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckChangedListener = onCheckedChangeListener;
    }

    public void setOnOtherTextChangedListener(OnOtherTextChangedListener onOtherTextChangedListener) {
        this.onOtherTextChangedListener = onOtherTextChangedListener;
    }

    public void setOtherText(String str) {
        this.otherTextInput.setText(str);
    }
}
