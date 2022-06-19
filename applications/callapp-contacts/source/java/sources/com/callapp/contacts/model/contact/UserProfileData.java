package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/UserProfileData.class */
public class UserProfileData implements Serializable {
    private static final long serialVersionUID = 9217828522922653427L;
    private JSONAddress address;
    private JSONDate birthday;
    private Set<JSONEmail> emails;
    private JSONSocialNetworkID facebookId;
    private JSONSocialNetworkID foursquareId;
    private String fullName;
    private JSONSocialNetworkID googlePlusId;
    private JSONSocialNetworkID instagramId;
    private Phone phone;
    private JSONSocialNetworkID pinterestId;
    private JSONSocialNetworkID twitterScreenName;
    private String userDefinition;
    private JSONSocialNetworkID vkId;
    private Set<JSONWebsite> websites;

    public boolean addEmail(JSONEmail jSONEmail) {
        if (this.emails == null) {
            this.emails = new HashSet();
        }
        return this.emails.add(jSONEmail);
    }

    public boolean addWebsite(JSONWebsite jSONWebsite) {
        if (this.websites == null) {
            this.websites = new HashSet();
        }
        return this.websites.add(jSONWebsite);
    }

    public JSONAddress getAddress() {
        return this.address;
    }

    public JSONDate getBirthday() {
        return this.birthday;
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public JSONSocialNetworkID getFoursquareId() {
        return this.foursquareId;
    }

    public String getFullName() {
        return this.fullName;
    }

    public JSONSocialNetworkID getGooglePlusId() {
        return this.googlePlusId;
    }

    public JSONSocialNetworkID getInstagramId() {
        return this.instagramId;
    }

    public Phone getPhone() {
        return this.phone;
    }

    public JSONSocialNetworkID getPinterestId() {
        return this.pinterestId;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    public String getUserDefinition() {
        return this.userDefinition;
    }

    public JSONSocialNetworkID getVkId() {
        return this.vkId;
    }

    public boolean removeEmail(JSONEmail jSONEmail) {
        if (CollectionUtils.m26068b(this.emails)) {
            return this.emails.remove(jSONEmail);
        }
        return false;
    }

    public boolean removeWebsite(JSONWebsite jSONWebsite) {
        if (CollectionUtils.m26068b(this.websites)) {
            return this.websites.remove(jSONWebsite);
        }
        return false;
    }

    public void setAddress(JSONAddress jSONAddress) {
        this.address = jSONAddress;
    }

    public void setBirthday(JSONDate jSONDate) {
        this.birthday = jSONDate;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setFoursquareId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.foursquareId = jSONSocialNetworkID;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public void setGooglePlusId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.googlePlusId = jSONSocialNetworkID;
    }

    public void setInstagramId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.instagramId = jSONSocialNetworkID;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public void setPinterestId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.pinterestId = jSONSocialNetworkID;
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
    }

    public void setUserDefinition(String str) {
        this.userDefinition = str;
    }

    public void setVkId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.vkId = jSONSocialNetworkID;
    }
}
