package com.apptentive.android.sdk.module.engagement.interaction.model;

import android.content.Context;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.model.Configuration;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction.class */
public class RatingDialogInteraction extends Interaction {
    public RatingDialogInteraction(String str) throws JSONException {
        super(str);
    }

    public String getBody(Context context) {
        InteractionConfiguration configuration = getConfiguration();
        return (configuration == null || configuration.isNull("body")) ? String.format(context.getResources().getString(C0726R.string.apptentive_rating_message_fs), Configuration.load().getAppDisplayName()) : configuration.optString("body", null);
    }

    public String getDeclineText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("decline_text")) {
            return null;
        }
        return configuration.optString("decline_text", null);
    }

    public String getRateText(Context context) {
        InteractionConfiguration configuration = getConfiguration();
        return (configuration == null || configuration.isNull("rate_text")) ? String.format(context.getResources().getString(C0726R.string.apptentive_rate_this_app), Configuration.load().getAppDisplayName()) : configuration.optString("rate_text", null);
    }

    public String getRemindText() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("remind_text")) {
            return null;
        }
        return configuration.optString("remind_text", null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("title")) {
            return null;
        }
        return configuration.optString("title", null);
    }
}
