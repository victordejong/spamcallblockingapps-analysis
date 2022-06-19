package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ExtendedPlaceData;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/VenueFoursquareData.class */
public class VenueFoursquareData extends ExtendedPlaceData {
    private static final long serialVersionUID = -6293392816530732213L;
    private JSONEmail email;
    private JSONSocialNetworkID facebookId;
    private JSONWebsite foursquareUrl;
    private List<PersonData> mutualFriends;
    private JSONSocialNetworkID twitterScreenName;

    @Override // com.callapp.contacts.model.contact.ExtendedPlaceData, com.callapp.contacts.model.contact.PlaceData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        VenueFoursquareData venueFoursquareData = (VenueFoursquareData) obj;
        JSONEmail jSONEmail = this.email;
        if (jSONEmail == null) {
            if (venueFoursquareData.email != null) {
                return false;
            }
        } else if (!jSONEmail.equals(venueFoursquareData.email)) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookId;
        if (jSONSocialNetworkID == null) {
            if (venueFoursquareData.facebookId != null) {
                return false;
            }
        } else if (!jSONSocialNetworkID.equals(venueFoursquareData.facebookId)) {
            return false;
        }
        JSONWebsite jSONWebsite = this.foursquareUrl;
        if (jSONWebsite == null) {
            if (venueFoursquareData.foursquareUrl != null) {
                return false;
            }
        } else if (!jSONWebsite.equals(venueFoursquareData.foursquareUrl)) {
            return false;
        }
        List<PersonData> list = this.mutualFriends;
        if (list == null) {
            if (venueFoursquareData.mutualFriends != null) {
                return false;
            }
        } else if (!list.equals(venueFoursquareData.mutualFriends)) {
            return false;
        }
        JSONSocialNetworkID jSONSocialNetworkID2 = this.twitterScreenName;
        return jSONSocialNetworkID2 == null ? venueFoursquareData.twitterScreenName == null : jSONSocialNetworkID2.equals(venueFoursquareData.twitterScreenName);
    }

    public JSONEmail getEmail() {
        return this.email;
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public JSONWebsite getFoursquareUrl() {
        return this.foursquareUrl;
    }

    public List<PersonData> getMutualFriends() {
        return this.mutualFriends;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    @Override // com.callapp.contacts.model.contact.ExtendedPlaceData, com.callapp.contacts.model.contact.PlaceData
    public int hashCode() {
        int hashCode = super.hashCode();
        JSONEmail jSONEmail = this.email;
        int i = 0;
        int hashCode2 = jSONEmail == null ? 0 : jSONEmail.hashCode();
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookId;
        int hashCode3 = jSONSocialNetworkID == null ? 0 : jSONSocialNetworkID.hashCode();
        JSONWebsite jSONWebsite = this.foursquareUrl;
        int hashCode4 = jSONWebsite == null ? 0 : jSONWebsite.hashCode();
        List<PersonData> list = this.mutualFriends;
        int hashCode5 = list == null ? 0 : list.hashCode();
        JSONSocialNetworkID jSONSocialNetworkID2 = this.twitterScreenName;
        if (jSONSocialNetworkID2 != null) {
            i = jSONSocialNetworkID2.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setEmail(JSONEmail jSONEmail) {
        this.email = jSONEmail;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setFoursquareUrl(JSONWebsite jSONWebsite) {
        this.foursquareUrl = jSONWebsite;
    }

    public void setMutualFriends(List<PersonData> list) {
        this.mutualFriends = list;
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
    }
}
