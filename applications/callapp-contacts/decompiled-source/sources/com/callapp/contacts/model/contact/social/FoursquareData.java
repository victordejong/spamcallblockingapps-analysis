package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.framework.phone.Phone;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/FoursquareData.class */
public class FoursquareData extends SocialData {
    private static final long serialVersionUID = 8558427524188589960L;
    private JSONEmail email;
    private JSONSocialNetworkID facebookId;
    private String mayorships;
    private Phone phone;
    private JSONSocialNetworkID twitterScreenName;

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        FoursquareData foursquareData = (FoursquareData) obj;
        return Objects.equals(this.email, foursquareData.email) && Objects.equals(this.facebookId, foursquareData.facebookId) && Objects.equals(this.mayorships, foursquareData.mayorships) && Objects.equals(this.phone, foursquareData.phone) && Objects.equals(this.twitterScreenName, foursquareData.twitterScreenName);
    }

    public JSONEmail getEmail() {
        return this.email;
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public String getMayorships() {
        return this.mayorships;
    }

    public Phone getPhone() {
        return this.phone;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.mayorships;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        JSONEmail jSONEmail = this.email;
        int hashCode3 = jSONEmail != null ? jSONEmail.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookId;
        int hashCode4 = jSONSocialNetworkID != null ? jSONSocialNetworkID.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID2 = this.twitterScreenName;
        int hashCode5 = jSONSocialNetworkID2 != null ? jSONSocialNetworkID2.hashCode() : 0;
        Phone phone = this.phone;
        if (phone != null) {
            i = phone.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setEmail(JSONEmail jSONEmail) {
        this.email = jSONEmail;
        setDirty(true);
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
        setDirty(true);
    }

    public void setMayorships(String str) {
        this.mayorships = str;
        setDirty(true);
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
        setDirty(true);
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
        setDirty(true);
    }
}
