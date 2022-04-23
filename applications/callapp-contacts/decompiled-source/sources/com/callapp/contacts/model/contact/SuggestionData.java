package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONSocialNetworkID;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/SuggestionData.class */
public class SuggestionData {
    private JSONSocialNetworkID facebookId;
    private JSONSocialNetworkID foursquareId;
    private JSONSocialNetworkID instagramId;
    private JSONSocialNetworkID pinterestId;
    private JSONSocialNetworkID twitterScreenName;
    private JSONSocialNetworkID vkId;

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public JSONSocialNetworkID getFoursquareId() {
        return this.foursquareId;
    }

    public JSONSocialNetworkID getInstagramId() {
        return this.instagramId;
    }

    public JSONSocialNetworkID getPinterestId() {
        return this.pinterestId;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    public JSONSocialNetworkID getVkId() {
        return this.vkId;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setFoursquareId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.foursquareId = jSONSocialNetworkID;
    }

    public void setInstagramId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.instagramId = jSONSocialNetworkID;
    }

    public void setPinterestId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.pinterestId = jSONSocialNetworkID;
    }

    public void setSocialIdByNetId(JSONSocialNetworkID jSONSocialNetworkID, int i) {
        if (i == 1) {
            setFacebookId(jSONSocialNetworkID);
        } else if (i == 4) {
            setTwitterScreenName(jSONSocialNetworkID);
        } else if (i == 6) {
            setFoursquareId(jSONSocialNetworkID);
        } else if (i == 7) {
            setInstagramId(jSONSocialNetworkID);
        } else if (i == 9) {
            setPinterestId(jSONSocialNetworkID);
        } else if (i == 10) {
            setVkId(jSONSocialNetworkID);
        }
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
    }

    public void setVkId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.vkId = jSONSocialNetworkID;
    }
}
