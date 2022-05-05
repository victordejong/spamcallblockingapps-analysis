package com.apptentive.android.sdk.module.engagement.interaction.model;

import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.apptentive.android.sdk.ApptentiveViewActivity;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.messagecenter.model.Composer;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterGreeting;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterStatus;
import com.apptentive.android.sdk.module.messagecenter.model.WhoCard;
import com.apptentive.android.sdk.util.Constants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/MessageCenterInteraction.class */
public class MessageCenterInteraction extends Interaction {
    public static final String DEFAULT_INTERNAL_EVENT_NAME = "show_message_center";
    public static final String EVENT_NAME_ATTACH = "attach";
    public static final String EVENT_NAME_ATTACHMENT_CANCEL = "attachment_cancel";
    public static final String EVENT_NAME_ATTACHMENT_DELETE = "attachment_delete";
    public static final String EVENT_NAME_CANCEL = "cancel";
    public static final String EVENT_NAME_CLOSE = "close";
    public static final String EVENT_NAME_COMPOSE_CLOSE = "compose_close";
    public static final String EVENT_NAME_COMPOSE_OPEN = "compose_open";
    public static final String EVENT_NAME_MESSAGE_HTTP_ERROR = "message_http_error";
    public static final String EVENT_NAME_MESSAGE_NETWORK_ERROR = "message_network_error";
    public static final String EVENT_NAME_PROFILE_CLOSE = "profile_close";
    public static final String EVENT_NAME_PROFILE_OPEN = "profile_open";
    public static final String EVENT_NAME_PROFILE_SUBMIT = "profile_submit";
    public static final String EVENT_NAME_READ = "read";
    public static final String EVENT_NAME_STATUS = "status";
    public static final String KEY_AUTOMATED_MESSAGE = "automated_message";
    public static final String KEY_AUTOMATED_MESSAGE_BODY = "body";
    public static final String KEY_BRANDING = "branding";
    public static final String KEY_COMPOSER = "composer";
    public static final String KEY_COMPOSER_CLOSE_BODY = "close_confirm_body";
    public static final String KEY_COMPOSER_CLOSE_CANCEL = "close_cancel_button";
    public static final String KEY_COMPOSER_CLOSE_DISCARD = "close_discard_button";
    public static final String KEY_COMPOSER_HINT_TEXT = "hint_text";
    public static final String KEY_COMPOSER_SEND_BUTTON = "send_button";
    public static final String KEY_COMPOSER_TITLE = "title";
    public static final String KEY_ERROR = "error_messages";
    public static final String KEY_ERROR_HTTP_BODY = "http_error_body";
    public static final String KEY_ERROR_NETWORK_BODY = "network_error_body";
    public static final String KEY_GREETING = "greeting";
    public static final String KEY_GREETING_BODY = "body";
    public static final String KEY_GREETING_IMAGE = "image_url";
    public static final String KEY_GREETING_TITLE = "title";
    public static final String KEY_PROFILE = "profile";
    public static final String KEY_PROFILE_EDIT = "edit";
    public static final String KEY_PROFILE_EDIT_EMAIL_EXPLANATION = "email_explanation";
    public static final String KEY_PROFILE_EDIT_EMAIL_HINT = "email_hint";
    public static final String KEY_PROFILE_EDIT_NAME_HINT = "name_hint";
    public static final String KEY_PROFILE_EDIT_SAVE_BUTTON = "save_button";
    public static final String KEY_PROFILE_EDIT_SKIP_BUTTON = "skip_button";
    public static final String KEY_PROFILE_EDIT_TITLE = "title";
    public static final String KEY_PROFILE_INIT = "initial";
    public static final String KEY_PROFILE_INIT_EMAIL_EXPLANATION = "email_explanation";
    public static final String KEY_PROFILE_INIT_EMAIL_HINT = "email_hint";
    public static final String KEY_PROFILE_INIT_NAME_HINT = "name_hint";
    public static final String KEY_PROFILE_INIT_SAVE_BUTTON = "save_button";
    public static final String KEY_PROFILE_INIT_SKIP_BUTTON = "skip_button";
    public static final String KEY_PROFILE_INIT_TITLE = "title";
    public static final String KEY_PROFILE_REQUEST = "request";
    public static final String KEY_PROFILE_REQUIRE = "require";
    public static final String KEY_STATUS = "status";
    public static final String KEY_STATUS_BODY = "body";
    public static final String KEY_TITLE = "title";

    public MessageCenterInteraction(String str) throws JSONException {
        super(str);
    }

    public static Intent generateMessageCenterErrorIntent(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, ApptentiveViewActivity.class);
        intent.putExtra(Constants.FragmentConfigKeys.TYPE, 2);
        return intent;
    }

    public void clearContextualMessage() {
        JSONObject contextualMessage = getContextualMessage();
        if (contextualMessage != null) {
            try {
                contextualMessage.put("body", (Object) null);
                InteractionConfiguration configuration = getConfiguration();
                configuration.put(KEY_AUTOMATED_MESSAGE, contextualMessage);
                put(ApptentiveNotifications.NOTIFICATION_KEY_CONFIGURATION, configuration);
            } catch (JSONException e) {
            }
        }
    }

    public String getBranding() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull(KEY_BRANDING)) {
            return null;
        }
        return configuration.optString(KEY_BRANDING, null);
    }

    public Composer getComposer() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        JSONObject optJSONObject = configuration.optJSONObject(KEY_COMPOSER);
        return new Composer(optJSONObject.optString("title", null), optJSONObject.optString(KEY_COMPOSER_CLOSE_BODY, null), optJSONObject.optString(KEY_COMPOSER_CLOSE_DISCARD, null), optJSONObject.optString(KEY_COMPOSER_CLOSE_CANCEL, null), optJSONObject.optString(KEY_COMPOSER_SEND_BUTTON, null), optJSONObject.optString(KEY_COMPOSER_HINT_TEXT, null));
    }

    public JSONObject getContextualMessage() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        return configuration.optJSONObject(KEY_AUTOMATED_MESSAGE);
    }

    public String getContextualMessageBody() {
        JSONObject contextualMessage = getContextualMessage();
        if (contextualMessage == null) {
            return null;
        }
        return contextualMessage.optString("body", null);
    }

    public MessageCenterStatus getErrorStatusNetwork() {
        JSONObject optJSONObject;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject(KEY_ERROR)) == null) {
            return null;
        }
        return new MessageCenterStatus(optJSONObject.optString(KEY_ERROR_NETWORK_BODY), Integer.valueOf(C0724R.C0726drawable.apptentive_ic_no_connection));
    }

    public MessageCenterStatus getErrorStatusServer() {
        JSONObject optJSONObject;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject(KEY_ERROR)) == null) {
            return null;
        }
        return new MessageCenterStatus(optJSONObject.optString(KEY_ERROR_HTTP_BODY), Integer.valueOf(C0724R.C0726drawable.apptentive_ic_error));
    }

    public MessageCenterGreeting getGreeting() {
        JSONObject optJSONObject;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject(KEY_GREETING)) == null) {
            return null;
        }
        return new MessageCenterGreeting(optJSONObject.optString("title", null), optJSONObject.optString("body", null), optJSONObject.optString(KEY_GREETING_IMAGE, null));
    }

    public JSONObject getProfile() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return null;
        }
        return configuration.optJSONObject("profile");
    }

    public MessageCenterStatus getRegularStatus() {
        JSONObject optJSONObject;
        String optString;
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || (optJSONObject = configuration.optJSONObject("status")) == null || (optString = optJSONObject.optString("body")) == null || optString.isEmpty()) {
            return null;
        }
        return new MessageCenterStatus(optString, null);
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.model.Interaction
    public String getTitle() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("title")) {
            return null;
        }
        return configuration.optString("title", null);
    }

    public WhoCard getWhoCard() {
        try {
            return new WhoCard(getProfile().toString());
        } catch (JSONException e) {
            return null;
        }
    }

    public boolean getWhoCardRequestEnabled() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return false;
        }
        return configuration.optJSONObject("profile").optBoolean(KEY_PROFILE_REQUEST, true);
    }

    public boolean getWhoCardRequired() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null) {
            return false;
        }
        return configuration.optJSONObject("profile").optBoolean(KEY_PROFILE_REQUIRE, false);
    }
}
