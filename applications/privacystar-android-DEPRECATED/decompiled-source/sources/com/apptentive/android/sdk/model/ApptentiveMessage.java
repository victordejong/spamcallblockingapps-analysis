package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ApptentiveMessage.class */
public abstract class ApptentiveMessage extends ConversationItem implements MessageCenterListItem {
    public static final String KEY_AUTOMATED = "automated";
    public static final String KEY_CREATED_AT = "created_at";
    @SensitiveDataKey
    public static final String KEY_CUSTOM_DATA = "custom_data";
    public static final String KEY_HIDDEN = "hidden";
    public static final String KEY_ID = "id";
    public static final String KEY_INBOUND = "inbound";
    public static final String KEY_SENDER = "sender";
    public static final String KEY_SENDER_ID = "id";
    @SensitiveDataKey
    private static final String KEY_SENDER_NAME = "name";
    @SensitiveDataKey
    private static final String KEY_SENDER_PROFILE_PHOTO = "profile_photo";
    public static final String KEY_TYPE = "type";
    private String datestamp;
    private boolean read;
    private State state;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ApptentiveMessage$State.class */
    public enum State {
        sending,
        sent,
        saved,
        unknown;

        public static State parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.MESSAGES;
                ApptentiveLog.m403v(apptentiveLogTag, "Error parsing unknown ApptentiveMessage.State: " + str, new Object[0]);
                return unknown;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ApptentiveMessage$Type.class */
    public enum Type {
        TextMessage,
        FileMessage,
        AutomatedMessage,
        CompoundMessage,
        unknown;

        public static Type parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.MESSAGES;
                ApptentiveLog.m403v(apptentiveLogTag, "Error parsing unknown ApptentiveMessage.Type: " + str, new Object[0]);
                return unknown;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ApptentiveMessage() {
        super(PayloadType.message);
        this.state = State.unknown;
        this.read = false;
        this.state = State.sending;
        this.read = true;
        initType();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ApptentiveMessage(String str) throws JSONException {
        super(PayloadType.message, str);
        this.state = State.unknown;
        this.read = false;
        this.state = State.unknown;
        initType();
    }

    public boolean clearDatestamp() {
        if (this.datestamp == null) {
            return false;
        }
        this.datestamp = null;
        return true;
    }

    public boolean getAutomated() {
        return getBoolean(KEY_AUTOMATED);
    }

    public Double getCreatedAt() {
        return getDouble("created_at");
    }

    public String getDatestamp() {
        return this.datestamp;
    }

    public String getId() {
        return optString("id", null);
    }

    public Type getMessageType() {
        if (isNull("type")) {
            return Type.CompoundMessage;
        }
        String optString = optString("type", null);
        return optString == null ? Type.unknown : Type.parse(optString);
    }

    public String getSenderProfilePhoto() {
        try {
            if (isNull(KEY_SENDER)) {
                return null;
            }
            JSONObject jSONObject = getJSONObject(KEY_SENDER);
            if (!jSONObject.isNull(KEY_SENDER_PROFILE_PHOTO)) {
                return jSONObject.getString(KEY_SENDER_PROFILE_PHOTO);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getSenderUsername() {
        try {
            if (isNull(KEY_SENDER)) {
                return null;
            }
            JSONObject jSONObject = getJSONObject(KEY_SENDER);
            if (!jSONObject.isNull("name")) {
                return jSONObject.getString("name");
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public State getState() {
        return this.state == null ? State.unknown : this.state;
    }

    protected abstract void initType();

    public boolean isAutomatedMessage() {
        return getAutomated();
    }

    public boolean isHidden() {
        return getBoolean(KEY_HIDDEN);
    }

    public boolean isOutgoingMessage() {
        return getBoolean(KEY_INBOUND, true);
    }

    public boolean isRead() {
        return this.read;
    }

    public void setAutomated(boolean z) {
        put(KEY_AUTOMATED, z);
    }

    public void setCreatedAt(Double d) {
        put("created_at", d.doubleValue());
    }

    public void setCustomData(Map<String, Object> map) {
        if (map != null && map.size() != 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
                put(KEY_CUSTOM_DATA, jSONObject);
            } catch (JSONException e) {
                ApptentiveLog.m408e(e, "Exception setting ApptentiveMessage's %s field.", KEY_CUSTOM_DATA);
            }
        } else if (!isNull(KEY_CUSTOM_DATA)) {
            remove(KEY_CUSTOM_DATA);
        }
    }

    public boolean setDatestamp(String str) {
        if (this.datestamp != null && this.datestamp.equals(str)) {
            return false;
        }
        this.datestamp = str;
        return true;
    }

    public void setHidden(boolean z) {
        put(KEY_HIDDEN, z);
    }

    public void setId(String str) {
        put("id", str);
    }

    public void setRead(boolean z) {
        this.read = z;
    }

    public void setSenderId(String str) {
        JSONObject jSONObject;
        try {
            if (!isNull(KEY_SENDER)) {
                jSONObject = getJSONObject(KEY_SENDER);
            } else {
                jSONObject = new JSONObject();
                put(KEY_SENDER, jSONObject);
            }
            jSONObject.put("id", str);
        } catch (JSONException e) {
            ApptentiveLog.m408e(e, "Exception setting ApptentiveMessage's %s field.", "id");
        }
    }

    public void setState(State state) {
        this.state = state;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setType(Type type) {
        put("type", type.name());
    }
}
