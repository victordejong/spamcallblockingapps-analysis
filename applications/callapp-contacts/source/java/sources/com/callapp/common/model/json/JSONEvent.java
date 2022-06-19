package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONEvent.class */
public class JSONEvent extends CallAppJSONObject {
    public static final transient int EVENT_ANNIVERSARY_TYPE_ID = 1;
    public static final transient int EVENT_BIRTHDAY_TYPE_ID = 3;
    public static final transient int EVENT_CUSTOM_TYPE_ID = 0;
    public static final transient int EVENT_OTHER_TYPE_ID = 2;
    private static final long serialVersionUID = 5166254820784498862L;
    private JSONDate formattedDate;
    private String label;
    private int type;

    public JSONEvent() {
        this.type = -1;
    }

    public JSONEvent(JSONEvent jSONEvent) {
        this(jSONEvent.label, jSONEvent.type, jSONEvent.formattedDate);
    }

    public JSONEvent(String str, int i, JSONDate jSONDate) {
        this.type = -1;
        this.label = str;
        this.type = i;
        this.formattedDate = jSONDate;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONEvent jSONEvent = (JSONEvent) obj;
        if (this.type != jSONEvent.type) {
            return false;
        }
        String str = this.label;
        if (str != null) {
            if (!str.equals(jSONEvent.label)) {
                return false;
            }
        } else if (jSONEvent.label != null) {
            return false;
        }
        JSONDate jSONDate = this.formattedDate;
        JSONDate jSONDate2 = jSONEvent.formattedDate;
        return jSONDate != null ? jSONDate.equals(jSONDate2) : jSONDate2 == null;
    }

    public JSONDate getFormattedDate() {
        return this.formattedDate;
    }

    public String getLabel() {
        return this.label;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        int i = this.type;
        String str = this.label;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        JSONDate jSONDate = this.formattedDate;
        if (jSONDate != null) {
            i2 = jSONDate.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public void setFormattedDate(JSONDate jSONDate) {
        this.formattedDate = jSONDate;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "JSONEvent{type=" + this.type + ", label='" + this.label + "', date=" + this.formattedDate + '}';
    }
}
