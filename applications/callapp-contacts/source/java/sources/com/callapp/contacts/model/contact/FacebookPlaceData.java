package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONSocialNetworkID;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/FacebookPlaceData.class */
public class FacebookPlaceData extends ExtendedPlaceData {
    private static final long serialVersionUID = -5632327766359025774L;
    private JSONSocialNetworkID facebookId;
    private String link;

    @Override // com.callapp.contacts.model.contact.ExtendedPlaceData, com.callapp.contacts.model.contact.PlaceData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        FacebookPlaceData facebookPlaceData = (FacebookPlaceData) obj;
        if (Objects.equals(this.facebookId, facebookPlaceData.facebookId)) {
            return Objects.equals(this.link, facebookPlaceData.link);
        }
        return false;
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public String getLink() {
        return this.link;
    }

    @Override // com.callapp.contacts.model.contact.ExtendedPlaceData, com.callapp.contacts.model.contact.PlaceData
    public int hashCode() {
        int hashCode = super.hashCode();
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookId;
        int i = 0;
        int hashCode2 = jSONSocialNetworkID != null ? jSONSocialNetworkID.hashCode() : 0;
        String str = this.link;
        if (str != null) {
            i = str.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setLink(String str) {
        this.link = str;
    }
}
