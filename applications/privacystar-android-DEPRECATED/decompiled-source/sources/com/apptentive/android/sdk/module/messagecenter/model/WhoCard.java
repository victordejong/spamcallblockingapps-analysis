package com.apptentive.android.sdk.module.messagecenter.model;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/WhoCard.class */
public class WhoCard extends JSONObject implements MessageCenterListItem {
    private static final String KEY_EDIT = "edit";
    private static final String KEY_EMAIL_EXPLANATION = "email_explanation";
    private static final String KEY_EMAIL_HINT = "email_hint";
    private static final String KEY_INITIAL = "initial";
    private static final String KEY_NAME_HINT = "name_hint";
    private static final String KEY_REQUEST = "request";
    private static final String KEY_REQUIRE = "require";
    private static final String KEY_SAVE_BUTTON = "save_button";
    private static final String KEY_SKIP_BUTTON = "skip_button";
    private static final String KEY_TITLE = "title";
    private boolean initial;

    public WhoCard(String str) throws JSONException {
        super(str);
    }

    private JSONObject getApplicableConfig() {
        return isInitial() ? getInitial() : getEdit();
    }

    private JSONObject getEdit() {
        return optJSONObject("edit");
    }

    private JSONObject getInitial() {
        return optJSONObject("initial");
    }

    public String getEmailExplanation() {
        return getApplicableConfig().optString("email_explanation", null);
    }

    public String getEmailHint() {
        return (!isRequire() || isInitial()) ? getApplicableConfig().optString("email_hint", null) : getInitial().optString("email_hint", null);
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem
    public int getListItemType() {
        return 8;
    }

    public String getNameHint() {
        if (!isRequire() || !isInitial()) {
            return getApplicableConfig().optString("name_hint", null);
        }
        return null;
    }

    public String getSaveButton() {
        return getApplicableConfig().optString("save_button", null);
    }

    public String getSkipButton() {
        if (!isRequire() || !isInitial()) {
            return getApplicableConfig().optString("skip_button", null);
        }
        return null;
    }

    public String getTitle() {
        return getApplicableConfig().optString("title", null);
    }

    public boolean isInitial() {
        return this.initial;
    }

    public boolean isRequest() {
        return optBoolean("request", false);
    }

    public boolean isRequire() {
        return optBoolean("require", false);
    }

    public void setInitial(boolean z) {
        this.initial = z;
    }
}
