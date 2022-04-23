package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstagramRelationshipData.class */
public class JSONInstagramRelationshipData implements Serializable {
    private static final long serialVersionUID = -1854317499646472272L;
    private String incoming_status;
    private String outgoing_status;
    private boolean target_user_is_private = false;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONInstagramRelationshipData)) {
            return false;
        }
        JSONInstagramRelationshipData jSONInstagramRelationshipData = (JSONInstagramRelationshipData) obj;
        String str = this.incoming_status;
        if (str == null) {
            if (jSONInstagramRelationshipData.incoming_status != null) {
                return false;
            }
        } else if (!str.equals(jSONInstagramRelationshipData.incoming_status)) {
            return false;
        }
        String str2 = this.outgoing_status;
        if (str2 == null) {
            if (jSONInstagramRelationshipData.outgoing_status != null) {
                return false;
            }
        } else if (!str2.equals(jSONInstagramRelationshipData.outgoing_status)) {
            return false;
        }
        return this.target_user_is_private == jSONInstagramRelationshipData.target_user_is_private;
    }

    public String getIncoming_status() {
        return this.incoming_status;
    }

    public String getOutgoing_status() {
        return this.outgoing_status;
    }

    public int hashCode() {
        String str = this.incoming_status;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.outgoing_status;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 31) * 31) + i) * 31) + (this.target_user_is_private ? 1231 : 1237);
    }

    public boolean isTarget_user_is_private() {
        return this.target_user_is_private;
    }

    public void setIncoming_status(String str) {
        this.incoming_status = str;
    }

    public void setOutgoing_status(String str) {
        this.outgoing_status = str;
    }

    public void setTarget_user_is_private(boolean z) {
        this.target_user_is_private = z;
    }
}
