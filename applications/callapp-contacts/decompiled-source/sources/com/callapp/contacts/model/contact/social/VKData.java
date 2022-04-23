package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.VideoData;
import com.callapp.framework.phone.Phone;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/VKData.class */
public class VKData extends SocialData {
    private static final long serialVersionUID = -8070820503362607025L;
    private String about;
    private JSONAddress address;
    private Date birthDate;
    private JSONDate birthday;
    private JSONSocialNetworkID facebookId;
    private Collection<JSONIMaddress> imAddresses = Collections.emptyList();
    private String latestPost;
    private List<Phone> phones;
    private String pubProfileUrl;
    private JSONSocialNetworkID twitterScreenName;
    private List<UploadedPhoto> uploadedPhotosUrl;
    private List<VideoData> videos;
    private Collection<JSONWebsite> websites;

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        VKData vKData = (VKData) obj;
        if (!Objects.equals(this.pubProfileUrl, vKData.pubProfileUrl) || !Objects.equals(this.birthDate, vKData.birthDate) || !Objects.equals(this.phones, vKData.phones) || !Objects.equals(this.about, vKData.about) || !Objects.equals(this.websites, vKData.websites)) {
            return false;
        }
        JSONDate jSONDate = this.birthday;
        if (jSONDate == null) {
            if (vKData.birthday != null) {
                return false;
            }
        } else if (!jSONDate.equals(vKData.birthday)) {
            return false;
        }
        return Objects.equals(this.facebookId, vKData.facebookId) && Objects.equals(this.twitterScreenName, vKData.twitterScreenName) && Objects.equals(this.imAddresses, vKData.imAddresses) && Objects.equals(this.uploadedPhotosUrl, vKData.uploadedPhotosUrl) && Objects.equals(this.latestPost, vKData.latestPost) && Objects.equals(this.videos, vKData.videos) && Objects.equals(this.address, vKData.address);
    }

    public String getAbout() {
        return this.about;
    }

    public JSONAddress getAddress() {
        return this.address;
    }

    public Date getBirthDate() {
        return this.birthDate;
    }

    public JSONDate getBirthday() {
        return this.birthday;
    }

    public JSONSocialNetworkID getFacebookId() {
        return this.facebookId;
    }

    public Collection<JSONIMaddress> getImAddresses() {
        return this.imAddresses;
    }

    public String getLatestPost() {
        return this.latestPost;
    }

    public List<Phone> getPhones() {
        return this.phones;
    }

    public String getPubProfileUrl() {
        return this.pubProfileUrl;
    }

    public JSONSocialNetworkID getTwitterScreenName() {
        return this.twitterScreenName;
    }

    public List<UploadedPhoto> getUploadedPhotosUrl() {
        return this.uploadedPhotosUrl;
    }

    public List<VideoData> getVideos() {
        return this.videos;
    }

    public Collection<JSONWebsite> getWebsites() {
        return this.websites;
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.pubProfileUrl;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Date date = this.birthDate;
        int hashCode3 = date != null ? date.hashCode() : 0;
        List<Phone> list = this.phones;
        int hashCode4 = list != null ? list.hashCode() : 0;
        String str2 = this.about;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        Collection<JSONWebsite> collection = this.websites;
        int hashCode6 = collection != null ? collection.hashCode() : 0;
        JSONDate jSONDate = this.birthday;
        int hashCode7 = jSONDate == null ? 0 : jSONDate.hashCode();
        JSONSocialNetworkID jSONSocialNetworkID = this.facebookId;
        int hashCode8 = jSONSocialNetworkID != null ? jSONSocialNetworkID.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID2 = this.twitterScreenName;
        int hashCode9 = jSONSocialNetworkID2 != null ? jSONSocialNetworkID2.hashCode() : 0;
        Collection<JSONIMaddress> collection2 = this.imAddresses;
        int hashCode10 = collection2 != null ? collection2.hashCode() : 0;
        List<UploadedPhoto> list2 = this.uploadedPhotosUrl;
        int hashCode11 = list2 != null ? list2.hashCode() : 0;
        String str3 = this.latestPost;
        int hashCode12 = str3 != null ? str3.hashCode() : 0;
        List<VideoData> list3 = this.videos;
        int hashCode13 = list3 != null ? list3.hashCode() : 0;
        JSONAddress jSONAddress = this.address;
        if (jSONAddress != null) {
            i = jSONAddress.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i;
    }

    public void setAbout(String str) {
        this.about = str;
        setDirty(true);
    }

    public void setAddress(JSONAddress jSONAddress) {
        this.address = jSONAddress;
        setDirty(true);
    }

    public void setBirthDate(Date date) {
        this.birthDate = date;
        setDirty(true);
    }

    public void setBirthday(JSONDate jSONDate) {
        this.birthday = jSONDate;
        setDirty(true);
    }

    public void setFacebookId(JSONSocialNetworkID jSONSocialNetworkID) {
        this.facebookId = jSONSocialNetworkID;
        setDirty(true);
    }

    public void setImAddresses(Collection<JSONIMaddress> collection) {
        this.imAddresses = collection;
        setDirty(true);
    }

    public void setLatestPost(String str) {
        this.latestPost = str;
        setDirty(true);
    }

    public void setPhones(List<Phone> list) {
        this.phones = list;
        setDirty(true);
    }

    public void setPubProfileUrl(String str) {
        this.pubProfileUrl = str;
        setDirty(true);
    }

    public void setTwitterScreenName(JSONSocialNetworkID jSONSocialNetworkID) {
        this.twitterScreenName = jSONSocialNetworkID;
        setDirty(true);
    }

    public void setUploadedPhotosUrl(List<UploadedPhoto> list) {
        this.uploadedPhotosUrl = list;
        setDirty(true);
    }

    public void setVideos(List<VideoData> list) {
        this.videos = list;
        setDirty(true);
    }

    public void setWebsites(Collection<JSONWebsite> collection) {
        this.websites = collection;
        setDirty(true);
    }
}
