package com.callapp.contacts.util;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/JSONGroupType.class */
public class JSONGroupType {
    @JsonProperty("group")
    private int group;
    @JsonProperty("type")
    private int type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONGroupType jSONGroupType = (JSONGroupType) obj;
        return this.group == jSONGroupType.group && this.type == jSONGroupType.type;
    }

    public int getGroup() {
        return this.group;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.group * 31) + this.type;
    }

    public String toString() {
        return "JSONGroupType{group=" + this.group + ", type=" + this.type + '}';
    }
}
