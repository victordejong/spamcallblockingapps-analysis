package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.SurveyInteraction;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/SurveyResponsePayload.class */
public class SurveyResponsePayload extends ConversationItem {
    public SurveyResponsePayload(SurveyInteraction surveyInteraction, Map<String, Object> map) {
        super(PayloadType.survey);
        try {
            put(Name.MARK, surveyInteraction.getId());
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                jSONObject.put(str, map.get(str));
            }
            put("answers", jSONObject);
        } catch (JSONException e) {
            ApptentiveLog.m15641e(e, "Unable to construct survey payload.", new Object[0]);
            ErrorMetrics.logException(e);
        }
    }

    public SurveyResponsePayload(String str) throws JSONException {
        super(PayloadType.survey, str);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/surveys/%s/responses", str, getId());
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        return HttpRequestMethod.POST;
    }

    public String getId() {
        return optString(Name.MARK, null);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "response";
    }
}
