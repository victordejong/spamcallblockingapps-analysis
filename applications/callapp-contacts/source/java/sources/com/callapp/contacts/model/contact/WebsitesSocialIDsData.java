package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONSocialNetworkID;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/WebsitesSocialIDsData.class */
public class WebsitesSocialIDsData extends CacheableData {
    private static final long serialVersionUID = -8338635191176119285L;
    private JSONSocialNetworkID facebookId;
    private JSONSocialNetworkID twitterScreenName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WebsitesSocialIDsData websitesSocialIDsData = (WebsitesSocialIDsData) obj;
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookId;
        if (jSONSocialNetworkID == null) {
            if (websitesSocialIDsData.facebookId != null) {
                return false;
            }
        } else if (!jSONSocialNetworkID.equals(websitesSocialIDsData.facebookId)) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID2 = this.twitterScreenName;
        return jSONSocialNetworkID2 == null ? websitesSocialIDsData.twitterScreenName == null : jSONSocialNetworkID2.equals(websitesSocialIDsData.twitterScreenName);
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    public int hashCode() {
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookId;
        int i = 0;
        int hashCode = jSONSocialNetworkID == null ? 0 : jSONSocialNetworkID.hashCode();
        JSONSocialNetworkID jSONSocialNetworkID2 = this.twitterScreenName;
        if (jSONSocialNetworkID2 != null) {
            i = jSONSocialNetworkID2.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
    }
}
