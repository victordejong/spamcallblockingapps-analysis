package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.framework.phone.Phone;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/GravatarData.class */
public class GravatarData extends ExternalSourceData {
    private static final long serialVersionUID = 1451121636942836867L;
    private JSONAddress address;
    private String description;
    private Collection<JSONEmail> emails;
    private JSONSocialNetworkID facebookId;
    private JSONSocialNetworkID foursquareId;
    private Collection<JSONIMaddress> imAddresses;
    private JSONSocialNetworkID instagramId;
    private Collection<Phone> phones;
    private boolean photoSure;
    private String photoUrl;
    private JSONSocialNetworkID pinterestId;
    private String thumbnailUrl;
    private JSONSocialNetworkID twitterScreenName;
    private JSONSocialNetworkID vkId;
    private Collection<JSONWebsite> websites;

    public JSONAddress getAddress() {
        return this.address;
    }

    public String getDescription() {
        return this.description;
    }

    public Collection<JSONEmail> getEmails() {
        return this.emails;
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public JSONSocialNetworkID getFoursquareId() {
        return this.foursquareId;
    }

    public Collection<JSONIMaddress> getImAddresses() {
        return this.imAddresses;
    }

    public JSONSocialNetworkID getInstagramId() {
        return this.instagramId;
    }

    public Collection<Phone> getPhones() {
        return this.phones;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public JSONSocialNetworkID getPinterestId() {
        return this.pinterestId;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    public JSONSocialNetworkID getVkId() {
        return this.vkId;
    }

    public Collection<JSONWebsite> getWebsites() {
        return this.websites;
    }

    public boolean isPhotoSure() {
        return this.photoSure;
    }

    public void setAddress(JSONAddress jSONAddress) {
        this.address = jSONAddress;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEmails(Collection<JSONEmail> collection) {
        this.emails = collection;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setFoursquareId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.foursquareId = jSONSocialNetworkID;
    }

    public void setImAddresses(Collection<JSONIMaddress> collection) {
        this.imAddresses = collection;
    }

    public void setInstagramId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.instagramId = jSONSocialNetworkID;
    }

    public void setPhones(Collection<Phone> collection) {
        this.phones = collection;
    }

    public void setPhotoSure(boolean z) {
        this.photoSure = z;
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public void setPinterestId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.pinterestId = jSONSocialNetworkID;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
    }

    public void setVkId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.vkId = jSONSocialNetworkID;
    }

    public void setWebsites(Collection<JSONWebsite> collection) {
        this.websites = collection;
    }
}
