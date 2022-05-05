package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.debug.ErrorMetrics;
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

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.model.SurveyInteraction$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/SurveyInteraction$1.class */
    static /* synthetic */ class C08151 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$survey$Question$Type */
        static final /* synthetic */ int[] f6455x46729ec8;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Question.Type.values().length];
            f6455x46729ec8 = iArr;
            try {
                iArr[Question.Type.singleline.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6455x46729ec8[Question.Type.multichoice.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6455x46729ec8[Question.Type.multiselect.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6455x46729ec8[Question.Type.range.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6455x46729ec8[Question.Type.unknown.ordinal()] = 5;
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
        String requiredText = getRequiredText();
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("questions")) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = configuration.getJSONArray("questions");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                int i2 = C08151.f6455x46729ec8[Question.Type.parse(jSONObject.getString("type")).ordinal()];
                Question rangeQuestion = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? null : new RangeQuestion(jSONObject.toString()) : new MultiselectQuestion(jSONObject.toString()) : new MultichoiceQuestion(jSONObject.toString()) : new SinglelineQuestion(jSONObject.toString());
                if (rangeQuestion != null) {
                    rangeQuestion.setRequiredText(requiredText);
                    arrayList.add(rangeQuestion);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getRequiredText() {
        return getConfiguration().optString("required_text", null);
    }

    public String getSubmitText() {
        return getConfiguration().optString("submit_text", null);
    }

    public String getSuccessMessage() {
        return getConfiguration().optString("success_message", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        return getName();
    }

    public String getValidationError() {
        return getConfiguration().optString("validation_error", null);
    }

    public boolean isShowSuccessMessage() {
        return getConfiguration().optBoolean("show_success_message");
    }
}
