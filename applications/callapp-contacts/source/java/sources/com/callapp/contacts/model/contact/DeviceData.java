package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONEvent;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.SerializablePair;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/DeviceData.class */
public class DeviceData implements Serializable {
    private static final long serialVersionUID = 8616685954592734251L;
    private JSONDate birthday;
    private long deviceId;
    private JSONSocialNetworkID facebookId;
    private JSONSocialNetworkID foursquareId;
    private String fullName;
    private JSONSocialNetworkID instagramId;
    private SerializablePair<Date, SerializablePair<String, String>> lastSms;
    private String photoUrl;
    private JSONSocialNetworkID pinterestId;
    private String thumbnailUrl;
    private JSONSocialNetworkID twitterScreenName;
    private JSONSocialNetworkID vkId;
    private String[] note = null;
    private Collection<Phone> phones = Collections.emptyList();
    private Collection<JSONAddress> addresses = Collections.emptyList();
    private Collection<JSONEmail> emails = Collections.emptyList();
    private Collection<JSONEvent> events = Collections.emptyList();
    private Collection<JSONIMaddress> imAddresses = Collections.emptyList();
    private Collection<JSONIMaddress> imContacts = Collections.emptyList();
    private Collection<JSONOrgData> organizations = Collections.emptyList();
    private Collection<JSONWebsite> websites = Collections.emptyList();
    private Collection<String> names = Collections.emptyList();
    private Boolean isFavorite = null;
    private long googleHangoutDataId = 0;

    public Collection<JSONAddress> getAddresses() {
        return this.addresses;
    }

    public JSONDate getBirthday() {
        return this.birthday;
    }

    public long getDeviceId() {
        return this.deviceId;
    }

    public Collection<JSONEmail> getEmails() {
        return this.emails;
    }

    public Collection<JSONEvent> getEvents() {
        return this.events;
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

    public long getGoogleHangoutDataId() {
        return this.googleHangoutDataId;
    }

    public Collection<JSONIMaddress> getImAddresses() {
        return this.imAddresses;
    }

    public Collection<JSONIMaddress> getImContacts() {
        return this.imContacts;
    }

    public JSONSocialNetworkID getInstagramId() {
        return this.instagramId;
    }

    public SerializablePair<Date, SerializablePair<String, String>> getLastSms() {
        return this.lastSms;
    }

    public Collection<String> getNames() {
        return this.names;
    }

    public DeviceData getNewDeviceDataForNonContact() {
        DeviceData deviceData = new DeviceData();
        deviceData.setFacebookId(this.facebookId);
        deviceData.setTwitterScreenName(this.twitterScreenName);
        deviceData.setFoursquareId(this.foursquareId);
        deviceData.setInstagramId(this.instagramId);
        deviceData.setPinterestId(this.pinterestId);
        deviceData.setLastSms(this.lastSms);
        deviceData.setEmails(this.emails);
        deviceData.setVKId(this.vkId);
        return deviceData;
    }

    public String[] getNote() {
        return this.note;
    }

    public Collection<JSONOrgData> getOrganizations() {
        return this.organizations;
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

    public JSONSocialNetworkID getVKId() {
        return this.vkId;
    }

    public Collection<JSONWebsite> getWebsites() {
        return this.websites;
    }

    public boolean hasAnyPhotoUri() {
        return StringUtils.m26047a(this.thumbnailUrl, this.photoUrl);
    }

    public Boolean isFavorite() {
        return this.isFavorite;
    }

    public void setAddresses(Collection<JSONAddress> collection) {
        this.addresses = collection;
    }

    public void setBirthday(JSONDate jSONDate) {
        this.birthday = jSONDate;
    }

    public void setDeviceId(long j) {
        this.deviceId = j;
    }

    public void setEmails(Collection<JSONEmail> collection) {
        this.emails = collection;
    }

    public void setEvents(Collection<JSONEvent> collection) {
        this.events = collection;
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
    }

    public void setFavorite(Boolean bool) {
        this.isFavorite = bool;
    }

    public void setFoursquareId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.foursquareId = jSONSocialNetworkID;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public void setGoogleHangoutDataId(long j) {
        this.googleHangoutDataId = j;
    }

    public void setImAddresses(Collection<JSONIMaddress> collection) {
        this.imAddresses = collection;
    }

    public void setImContacts(Collection<JSONIMaddress> collection) {
        this.imContacts = collection;
    }

    public void setInstagramId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.instagramId = jSONSocialNetworkID;
    }

    public void setLastSms(SerializablePair<Date, SerializablePair<String, String>> serializablePair) {
        this.lastSms = serializablePair;
    }

    public void setNames(Collection<String> collection) {
        this.names = collection;
    }

    public void setNote(String[] strArr) {
        this.note = strArr;
    }

    public void setOrganizations(Collection<JSONOrgData> collection) {
        this.organizations = collection;
    }

    public void setPhones(Collection<Phone> collection) {
        this.phones = collection;
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

    public void setVKId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.vkId = jSONSocialNetworkID;
    }

    public void setWebsites(Collection<JSONWebsite> collection) {
        this.websites = collection;
    }
}
