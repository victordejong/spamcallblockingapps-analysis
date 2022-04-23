package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/UpgradeMessageInteraction.class */
public class UpgradeMessageInteraction extends Interaction {
    public UpgradeMessageInteraction(String str) throws JSONException {
        super(str);
    }

    public String getBody() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("body")) {
                return null;
            }
            return configuration.getString("body");
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public boolean isShowPoweredBy() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("show_powered_by")) {
                return false;
            }
            return configuration.getBoolean("show_powered_by");
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return false;
        }
    }
}
