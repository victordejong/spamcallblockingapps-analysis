package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONExternalSourceContact.class */
public class JSONExternalSourceContact extends JSONContact {
    private static final long serialVersionUID = -6039295183436533090L;
    private int externalSourceId;
    private String identifier;
    private String key;

    @Override // com.callapp.common.model.json.JSONContact
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        JSONExternalSourceContact jSONExternalSourceContact = (JSONExternalSourceContact) obj;
        if (this.externalSourceId != jSONExternalSourceContact.externalSourceId) {
            return false;
        }
        String str = this.key;
        if (str != null) {
            if (!str.equals(jSONExternalSourceContact.key)) {
                return false;
            }
        } else if (jSONExternalSourceContact.key != null) {
            return false;
        }
        String str2 = this.identifier;
        String str3 = jSONExternalSourceContact.identifier;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public int getExternalSourceId() {
        return this.externalSourceId;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getKey() {
        return this.key;
    }

    @Override // com.callapp.common.model.json.JSONContact
    public int hashCode() {
        int hashCode = super.hashCode();
        int i = this.externalSourceId;
        String str = this.key;
        int i2 = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.identifier;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((((hashCode * 31) + i) * 31) + hashCode2) * 31) + i2;
    }

    public void setExternalSourceId(int i) {
        this.externalSourceId = i;
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    @Override // com.callapp.common.model.json.JSONContact
    public String toString() {
        return "JSONExternalSourceContact{externalSourceId=" + this.externalSourceId + ", key='" + this.key + "', identifier='" + this.identifier + "'}";
    }
}
