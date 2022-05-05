package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.logic.FieldManager;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Targets.class */
public class Targets extends JSONObject {
    public Targets(String str) throws JSONException {
        super(str);
    }

    public String getApplicableInteraction(String str, boolean z) {
        JSONArray optJSONArray = optJSONArray(str);
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    try {
                        Invocation invocation = new Invocation(optJSONObject.toString());
                        Conversation conversation = ApptentiveInternal.getInstance().getConversation();
                        if (invocation.isCriteriaMet(new FieldManager(ApptentiveInternal.getInstance().getApplicationContext(), conversation.getVersionHistory(), conversation.getEventData(), conversation.getPerson(), conversation.getDevice(), conversation.getAppRelease()), z)) {
                            return invocation.getInteractionId();
                        }
                        continue;
                    } catch (JSONException e) {
                        ErrorMetrics.logException(e);
                    }
                }
            }
        }
        ApptentiveLog.m15638v(ApptentiveLogTag.INTERACTIONS, "No runnable Interactions for EventLabel: %s", str);
        return null;
    }
}
