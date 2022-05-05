package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Interactions.class */
public class Interactions extends JSONObject {
    public Interactions() throws JSONException {
    }

    public Interactions(String str) throws JSONException {
        super(str);
    }

    public Interaction getInteraction(String str) {
        try {
            if (!isNull(str)) {
                return Interaction.Factory.parseInteraction(getJSONObject(str).toString());
            }
            return null;
        } catch (JSONException e) {
            ApptentiveLog.m15634w(ApptentiveLogTag.INTERACTIONS, e, "Exception parsing interactions array.", new Object[0]);
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
