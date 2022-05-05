package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultichoiceQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.MultiselectQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.Question;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.RangeQuestion;
import com.apptentive.android.sdk.module.engagement.interaction.model.survey.SinglelineQuestion;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction.class */
public class SurveyInteraction extends Interaction {
    private static final String KEY_DESCRIPTION = "description";
    private static final String KEY_NAME = "name";
    private static final String KEY_QUESTIONS = "questions";
    private static final String KEY_REQUIRED = "required";
    private static final String KEY_REQUIRED_TEXT = "required_text";
    private static final String KEY_SHOW_SUCCESS_MESSAGE = "show_success_message";
    private static final String KEY_SUBMIT_TEXT = "submit_text";
    private static final String KEY_SUCCESS_MESSAGE = "success_message";
    private static final String KEY_VALIDATION_ERROR = "validation_error";

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.model.SurveyInteraction$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction$1.class */
    static /* synthetic */ class C08121 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$survey$Question$Type */
        static final /* synthetic */ int[] f71x46729ec8 = new int[Question.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f71x46729ec8[Question.Type.singleline.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f71x46729ec8[Question.Type.multichoice.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f71x46729ec8[Question.Type.multiselect.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f71x46729ec8[Question.Type.range.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f71x46729ec8[Question.Type.unknown.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public SurveyInteraction(String str) throws JSONException {
        super(str);
    }

    public String getDescription() {
        return getConfiguration().optString("description", null);
    }

    public String getName() {
        return getConfiguration().optString("name", null);
    }

    public List<Question> getQuestions() {
        Question question;
        String requiredText = getRequiredText();
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has(KEY_QUESTIONS)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = configuration.getJSONArray(KEY_QUESTIONS);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                switch (C08121.f71x46729ec8[Question.Type.parse(jSONObject.getString("type")).ordinal()]) {
                    case 1:
                        question = new SinglelineQuestion(jSONObject.toString());
                        break;
                    case 2:
                        question = new MultichoiceQuestion(jSONObject.toString());
                        break;
                    case 3:
                        question = new MultiselectQuestion(jSONObject.toString());
                        break;
                    case 4:
                        question = new RangeQuestion(jSONObject.toString());
                        break;
                    default:
                        question = null;
                        break;
                }
                if (question != null) {
                    question.setRequiredText(requiredText);
                    arrayList.add(question);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getRequiredText() {
        return getConfiguration().optString(KEY_REQUIRED_TEXT, null);
    }

    public String getSubmitText() {
        return getConfiguration().optString(KEY_SUBMIT_TEXT, null);
    }

    public String getSuccessMessage() {
        return getConfiguration().optString(KEY_SUCCESS_MESSAGE, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        return getName();
    }

    public String getValidationError() {
        return getConfiguration().optString(KEY_VALIDATION_ERROR, null);
    }

    public boolean isRequired() {
        return getConfiguration().optBoolean(KEY_REQUIRED);
    }

    public boolean isShowSuccessMessage() {
        return getConfiguration().optBoolean(KEY_SHOW_SUCCESS_MESSAGE);
    }
}
