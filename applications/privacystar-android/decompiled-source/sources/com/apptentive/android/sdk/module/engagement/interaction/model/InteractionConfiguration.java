package com.apptentive.android.sdk.module.engagement.interaction.model;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/InteractionConfiguration.class */
public class InteractionConfiguration extends JSONObject {
    private static final String KEY_SHOW_POWERED_BY = "show_powered_by";

    public InteractionConfiguration() {
    }

    public InteractionConfiguration(String str) throws JSONException {
        super(str);
    }

    public boolean isShowPoweredBy() {
        try {
            if (!isNull(KEY_SHOW_POWERED_BY)) {
                return getBoolean(KEY_SHOW_POWERED_BY);
            }
            return false;
        } catch (JSONException e) {
            return false;
        }
    }
}
