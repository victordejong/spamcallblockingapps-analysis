package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.model.Configuration;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction.class */
public class EnjoymentDialogInteraction extends Interaction {
    private static final String KEY_DISMISS_TEXT = "dismiss_text";
    private static final String KEY_NO_TEXT = "no_text";
    private static final String KEY_SHOW_DISMISS_BUTTON = "show_dismiss_button";
    private static final String KEY_TITLE = "title";
    private static final String KEY_YES_TEXT = "yes_text";

    public EnjoymentDialogInteraction(String str) throws JSONException {
        super(str);
    }

    public String getDismissText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        return configuration.optString(KEY_DISMISS_TEXT, null);
    }

    public String getNoText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull(KEY_NO_TEXT)) {
            return null;
        }
        return configuration.optString(KEY_NO_TEXT, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        InteractionConfiguration configuration = getConfiguration();
        return (configuration == null || configuration.isNull("title")) ? ApptentiveInternal.getInstance().getApplicationContext().getResources().getString(C0724R.string.apptentive_do_you_love_this_app, Configuration.load().getAppDisplayName()) : configuration.optString("title", null);
    }

    public String getYesText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull(KEY_YES_TEXT)) {
            return null;
        }
        return configuration.optString(KEY_YES_TEXT, null);
    }

    public boolean showDismissButton() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return false;
        }
        return configuration.optBoolean(KEY_SHOW_DISMISS_BUTTON, false);
    }
}
