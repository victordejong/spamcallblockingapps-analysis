package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.logic.FieldManager;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Invocation.class */
public class Invocation extends JSONObject {
    public Invocation(String str) throws JSONException {
        super(str);
    }

    public String getInteractionId() {
        try {
            if (!isNull("interaction_id")) {
                return getString("interaction_id");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public boolean isCriteriaMet(FieldManager fieldManager, boolean z) {
        try {
            if (!isNull("criteria")) {
                return new InteractionCriteria(getJSONObject("criteria").toString()).isMet(fieldManager, z);
            }
            return false;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return false;
        }
    }
}
