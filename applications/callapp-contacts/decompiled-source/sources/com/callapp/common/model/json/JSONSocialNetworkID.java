package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONSocialNetworkID.class */
public class JSONSocialNetworkID extends CallAppJSONObject {
    private static final long serialVersionUID = -2979342219114830598L;
    private String id;
    private boolean sure;
    private int version = 1;

    public JSONSocialNetworkID() {
    }

    public JSONSocialNetworkID(String str, boolean z) {
        this.id = str;
        this.sure = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONSocialNetworkID)) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID = (JSONSocialNetworkID) obj;
        String str = this.id;
        return str == null ? jSONSocialNetworkID.id == null : str.equals(jSONSocialNetworkID.id);
    }

    public String getId() {
        return this.id;
    }

    public int getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.id;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public boolean isSure() {
        return this.sure;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setSure(boolean z) {
        this.sure = z;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public String toString() {
        return "JSONSocialNetworkID [id=" + this.id + ", sure=" + this.sure + ", version=" + this.version + "]";
    }
}
