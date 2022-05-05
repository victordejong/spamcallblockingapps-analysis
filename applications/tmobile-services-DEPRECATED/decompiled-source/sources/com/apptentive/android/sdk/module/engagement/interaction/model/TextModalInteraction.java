package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Actions;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction.class */
public class TextModalInteraction extends Interaction {
    public TextModalInteraction(String str) throws JSONException {
        super(str);
    }

    public Actions getActions() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("actions")) {
                return null;
            }
            return new Actions(configuration.getString("actions"));
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
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

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        try {
            InteractionConfiguration configuration = getConfiguration();
            if (configuration == null || !configuration.has("title")) {
                return null;
            }
            return configuration.getString("title");
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
