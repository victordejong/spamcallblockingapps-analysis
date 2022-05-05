package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.module.engagement.logic.FieldManager;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Invocation.class */
public class Invocation extends JSONObject {
    private static final String KEY_CRITERIA = "criteria";
    private static final String KEY_INTERACTION_ID = "interaction_id";

    public Invocation(String str) throws JSONException {
        super(str);
    }

    public String getInteractionId() {
        try {
            if (!isNull(KEY_INTERACTION_ID)) {
                return getString(KEY_INTERACTION_ID);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public boolean isCriteriaMet(FieldManager fieldManager, boolean z) {
        try {
            if (!isNull(KEY_CRITERIA)) {
                return new InteractionCriteria(getJSONObject(KEY_CRITERIA).toString()).isMet(fieldManager, z);
            }
            return false;
        } catch (JSONException e) {
            return false;
        }
    }
}
