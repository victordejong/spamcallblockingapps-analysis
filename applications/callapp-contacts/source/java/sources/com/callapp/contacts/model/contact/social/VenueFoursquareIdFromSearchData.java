package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONSocialNetworkID;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/VenueFoursquareIdFromSearchData.class */
public class VenueFoursquareIdFromSearchData implements Serializable {
    private static final long serialVersionUID = 8037690550897706083L;
    private JSONSocialNetworkID venueFoursquareId;

    public VenueFoursquareIdFromSearchData(JSONSocialNetworkID jSONSocialNetworkID) {
        this.venueFoursquareId = jSONSocialNetworkID;
    }

    public JSONSocialNetworkID getVenueFoursquareId() {
        return this.venueFoursquareId;
    }

    public void setVenueFoursquareId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.venueFoursquareId = jSONSocialNetworkID;
    }
}
