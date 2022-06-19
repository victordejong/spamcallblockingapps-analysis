package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONSocialNetworkID;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/IntentData.class */
public class IntentData implements Serializable {
    private static final long serialVersionUID = 7926641512254708685L;
    private JSONSocialNetworkID facebookId;
    private String fullName;

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public String getFullName() {
        return this.fullName;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }
}
