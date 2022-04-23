package com.apptentive.android.sdk.module.engagement.interaction.view.survey;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.RangeQuestion;
import com.apptentive.android.sdk.util.StringUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.NumberFormat;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/view/survey/RangeSurveyQuestionView.class */
public class RangeSurveyQuestionView extends BaseSurveyQuestionView<RangeQuestion> implements CompoundButton.OnCheckedChangeListener {
    private static final NumberFormat defaultNumberFormat = NumberFormat.getInstance();
    private int max;
    private String maxLabel;
    private int min;
    private String minLabel;
    private RadioGroup radioGroup;
    private int selectedValue;
    private boolean valueWasSelected;

    public static RangeSurveyQuestionView newInstance(RangeQuestion rangeQuestion) {
        RangeSurveyQuestionView rangeSurveyQuestionView = new RangeSurveyQuestionView();
        Bundle bundle = new Bundle();
        bundle.putString("question", rangeQuestion.toString());
        rangeSurveyQuestionView.setArguments(bundle);
        return rangeSurveyQuestionView;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public Object getAnswer() {
        if (!this.valueWasSelected) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONArray.put(jSONObject);
            jSONObject.put(FirebaseAnalytics.Param.VALUE, this.selectedValue);
            return jSONArray;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.SurveyQuestionView
    public boolean isValid() {
        return !((RangeQuestion) this.question).isRequired() || this.valueWasSelected;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.selectedValue = ((Integer) compoundButton.getTag()).intValue();
            this.valueWasSelected = true;
            fireListener();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            try {
                this.question = new RangeQuestion(arguments.getString("question"));
            } catch (JSONException e) {
                ErrorMetrics.logException(e);
            }
        }
        this.min = ((RangeQuestion) this.question).getMin();
        this.max = ((RangeQuestion) this.question).getMax();
        this.minLabel = ((RangeQuestion) this.question).getMinLabel();
        this.maxLabel = ((RangeQuestion) this.question).getMaxLabel();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        try {
            ViewGroup answerContainer = getAnswerContainer(onCreateView);
            ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(C0726R.layout.apptentive_survey_question_range_answer, answerContainer, false);
            answerContainer.addView(viewGroup2);
            TextView textView = (TextView) viewGroup2.findViewById(C0726R.C0729id.min_label);
            if (!TextUtils.isEmpty(this.minLabel)) {
                textView.setText(this.minLabel);
            } else {
                textView.setVisibility(8);
            }
            TextView textView2 = (TextView) viewGroup2.findViewById(C0726R.C0729id.max_label);
            if (!TextUtils.isEmpty(this.maxLabel)) {
                textView2.setText(this.maxLabel);
            } else {
                textView2.setVisibility(8);
            }
            this.radioGroup = (RadioGroup) viewGroup2.findViewById(C0726R.C0729id.range_container);
            for (int i = this.min; i <= this.max; i++) {
                RadioButton radioButton = (RadioButton) layoutInflater.inflate(C0726R.layout.apptentive_survey_question_range_choice, (ViewGroup) this.radioGroup, false);
                long j = i;
                radioButton.setText(defaultNumberFormat.format(j));
                radioButton.setTag(Integer.valueOf(i));
                radioButton.setOnCheckedChangeListener(this);
                radioButton.setContentDescription(StringUtils.format("%s where %s is %s and %s is %s", defaultNumberFormat.format(j), Integer.valueOf(this.min), this.minLabel, Integer.valueOf(this.max), this.maxLabel));
                this.radioGroup.addView(radioButton);
            }
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception in %s.onCreateView()", RangeSurveyQuestionView.class.getSimpleName());
            ErrorMetrics.logException(e);
        }
        return onCreateView;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.view.survey.BaseSurveyQuestionView, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("value_was_selected", this.valueWasSelected);
        bundle.putInt("selected_value", this.selectedValue);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(@Nullable Bundle bundle) {
        super.onViewStateRestored(bundle);
        int i = 0;
        if (bundle != null) {
            this.valueWasSelected = bundle.getBoolean("value_was_selected", false);
            this.selectedValue = bundle.getInt("selected_value", 0);
            i = 0;
        }
        while (i < this.radioGroup.getChildCount()) {
            RadioButton radioButton = (RadioButton) this.radioGroup.getChildAt(i);
            if (!this.valueWasSelected || ((Integer) radioButton.getTag()).intValue() != this.selectedValue) {
                i++;
            } else {
                radioButton.setChecked(true);
                return;
            }
        }
    }
}
