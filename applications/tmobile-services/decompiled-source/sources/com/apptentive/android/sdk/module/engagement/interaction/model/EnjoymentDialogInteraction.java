package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.model.Configuration;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction.class */
public class EnjoymentDialogInteraction extends Interaction {
    public EnjoymentDialogInteraction(String str) throws JSONException {
        super(str);
    }

    public String getDismissText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        return configuration.optString("dismiss_text", null);
    }

    public String getNoText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("no_text")) {
            return null;
        }
        return configuration.optString("no_text", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        InteractionConfiguration configuration = getConfiguration();
        return (configuration == null || configuration.isNull("title")) ? ApptentiveInternal.getInstance().getApplicationContext().getResources().getString(C0726R.string.apptentive_do_you_love_this_app, Configuration.load().getAppDisplayName()) : configuration.optString("title", null);
    }

    public String getYesText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("yes_text")) {
            return null;
        }
        return configuration.optString("yes_text", null);
    }

    public boolean showDismissButton() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return false;
        }
        return configuration.optBoolean("show_dismiss_button", false);
    }
}
