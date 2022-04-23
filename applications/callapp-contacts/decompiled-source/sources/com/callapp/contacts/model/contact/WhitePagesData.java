package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONAddress;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/WhitePagesData.class */
public class WhitePagesData extends ExternalSourceData {
    private static final long serialVersionUID = -8494609152223914105L;
    private JSONAddress address;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WhitePagesData)) {
            return false;
        }
        WhitePagesData whitePagesData = (WhitePagesData) obj;
        JSONAddress jSONAddress = this.address;
        if (jSONAddress == null) {
            if (whitePagesData.address != null) {
                return false;
            }
        } else if (!jSONAddress.equals(whitePagesData.address)) {
            return false;
        }
        return getFullName() == null ? whitePagesData.getFullName() == null : getFullName().equals(whitePagesData.getFullName());
    }

    public JSONAddress getAddress() {
        return this.address;
    }

    public int hashCode() {
        JSONAddress jSONAddress = this.address;
        int i = 0;
        int hashCode = jSONAddress == null ? 0 : jSONAddress.hashCode();
        if (getFullName() != null) {
            i = getFullName().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setAddress(JSONAddress jSONAddress) {
        this.address = jSONAddress;
    }
}
