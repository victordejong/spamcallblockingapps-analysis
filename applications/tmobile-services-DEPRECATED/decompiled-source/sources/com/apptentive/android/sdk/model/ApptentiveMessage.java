package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ApptentiveMessage.class */
public abstract class ApptentiveMessage extends ConversationItem implements MessageCenterListItem {
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
                ApptentiveLog.m15638v(apptentiveLogTag, "Error parsing unknown ApptentiveMessage.State: " + str, new Object[0]);
                ErrorMetrics.logException(e);
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
                ApptentiveLog.m15638v(apptentiveLogTag, "Error parsing unknown ApptentiveMessage.Type: " + str, new Object[0]);
                ErrorMetrics.logException(e);
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
        State state = State.unknown;
        this.state = state;
        this.read = false;
        this.state = state;
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
        return getBoolean("automated");
    }

    public Double getCreatedAt() {
        return getDouble("created_at");
    }

    public String getDatestamp() {
        return this.datestamp;
    }

    public String getId() {
        return optString(Name.MARK, null);
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
            if (isNull("sender")) {
                return null;
            }
            JSONObject jSONObject = getJSONObject("sender");
            if (!jSONObject.isNull("profile_photo")) {
                return jSONObject.getString("profile_photo");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getSenderUsername() {
        try {
            if (isNull("sender")) {
                return null;
            }
            JSONObject jSONObject = getJSONObject("sender");
            if (!jSONObject.isNull("name")) {
                return jSONObject.getString("name");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public State getState() {
        State state = this.state;
        State state2 = state;
        if (state == null) {
            state2 = State.unknown;
        }
        return state2;
    }

    protected abstract void initType();

    public boolean isAutomatedMessage() {
        return getAutomated();
    }

    public boolean isHidden() {
        return getBoolean("hidden");
    }

    public boolean isOutgoingMessage() {
        return getBoolean("inbound", true);
    }

    public boolean isRead() {
        return this.read;
    }

    public void setAutomated(boolean z) {
        put("automated", z);
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
                put("custom_data", jSONObject);
            } catch (JSONException e) {
                ApptentiveLog.m15641e(e, "Exception setting ApptentiveMessage's %s field.", "custom_data");
                ErrorMetrics.logException(e);
            }
        } else if (!isNull("custom_data")) {
            remove("custom_data");
        }
    }

    public boolean setDatestamp(String str) {
        String str2 = this.datestamp;
        if (str2 != null && str2.equals(str)) {
            return false;
        }
        this.datestamp = str;
        return true;
    }

    public void setHidden(boolean z) {
        put("hidden", z);
    }

    public void setId(String str) {
        put(Name.MARK, str);
    }

    public void setRead(boolean z) {
        this.read = z;
    }

    public void setSenderId(String str) {
        JSONObject jSONObject;
        try {
            if (!isNull("sender")) {
                jSONObject = getJSONObject("sender");
            } else {
                jSONObject = new JSONObject();
                put("sender", jSONObject);
            }
            jSONObject.put(Name.MARK, str);
        } catch (JSONException e) {
            ApptentiveLog.m15641e(e, "Exception setting ApptentiveMessage's %s field.", Name.MARK);
            ErrorMetrics.logException(e);
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
