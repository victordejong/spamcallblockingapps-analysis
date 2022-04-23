package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONCategory;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONOpeningHours;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.SerializablePair;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ChatData;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/FacebookData.class */
public class FacebookData extends SocialData {
    private static final long serialVersionUID = 2611966187554749645L;
    private String about;
    private String activities;
    private JSONAddress address;
    private String bio;
    private JSONDate birthday;
    private Set<JSONCategory> categories;
    private JSONEmail email;
    private String fqlType;
    private String groups;
    private String homeTown;
    private SerializablePair<Date, String> latestMessage;
    private String latestPost;
    private String likes;
    private JSONOpeningHours openingHours;
    private Collection<JSONOrgData> organizations;
    private List<UploadedPhoto> uploadedPhotosUrl;
    private Collection<JSONWebsite> websites;
    private String worksAtText;
    private double lat = 0.0d;
    private double lng = 0.0d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/FacebookData$FacebookChatData.class */
    public static class FacebookChatData extends ChatData {
        private static final long serialVersionUID = -6240191255537436792L;
        private int presence;

        public FacebookChatData() {
            this(null);
        }

        public FacebookChatData(JSONIMaddress jSONIMaddress) {
            super(jSONIMaddress);
            this.presence = -1;
        }

        @Override // com.callapp.contacts.model.contact.ChatData
        public int fetchPresence() {
            return this.presence;
        }

        @Override // com.callapp.contacts.model.contact.ChatData
        public int getPresence() {
            return this.presence;
        }

        public void setPresence(int i) {
            this.presence = i;
        }
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof FacebookData)) {
            return false;
        }
        FacebookData facebookData = (FacebookData) obj;
        String str = this.about;
        if (str == null) {
            if (facebookData.about != null) {
                return false;
            }
        } else if (!str.equals(facebookData.about)) {
            return false;
        }
        String str2 = this.activities;
        if (str2 == null) {
            if (facebookData.activities != null) {
                return false;
            }
        } else if (!str2.equals(facebookData.activities)) {
            return false;
        }
        String str3 = this.bio;
        if (str3 == null) {
            if (facebookData.bio != null) {
                return false;
            }
        } else if (!str3.equals(facebookData.bio)) {
            return false;
        }
        JSONDate jSONDate = this.birthday;
        if (jSONDate == null) {
            if (facebookData.birthday != null) {
                return false;
            }
        } else if (!jSONDate.equals(facebookData.birthday)) {
            return false;
        }
        JSONEmail jSONEmail = this.email;
        if (jSONEmail == null) {
            if (facebookData.email != null) {
                return false;
            }
        } else if (!jSONEmail.equals(facebookData.email)) {
            return false;
        }
        String str4 = this.groups;
        if (str4 == null) {
            if (facebookData.groups != null) {
                return false;
            }
        } else if (!str4.equals(facebookData.groups)) {
            return false;
        }
        String str5 = this.homeTown;
        if (str5 == null) {
            if (facebookData.homeTown != null) {
                return false;
            }
        } else if (!str5.equals(facebookData.homeTown)) {
            return false;
        }
        String str6 = this.latestPost;
        if (str6 == null) {
            if (facebookData.latestPost != null) {
                return false;
            }
        } else if (!str6.equals(facebookData.latestPost)) {
            return false;
        }
        SerializablePair<Date, String> serializablePair = this.latestMessage;
        if (serializablePair == null) {
            if (facebookData.latestMessage != null) {
                return false;
            }
        } else if (!serializablePair.equals(facebookData.latestMessage)) {
            return false;
        }
        String str7 = this.likes;
        if (str7 == null) {
            if (facebookData.likes != null) {
                return false;
            }
        } else if (!str7.equals(facebookData.likes)) {
            return false;
        }
        Collection<JSONOrgData> collection = this.organizations;
        if (collection == null) {
            if (facebookData.organizations != null) {
                return false;
            }
        } else if (!collection.equals(facebookData.organizations)) {
            return false;
        }
        Collection<JSONWebsite> collection2 = this.websites;
        if (collection2 == null) {
            if (facebookData.websites != null) {
                return false;
            }
        } else if (!collection2.equals(facebookData.websites)) {
            return false;
        }
        String str8 = this.worksAtText;
        if (str8 == null) {
            if (facebookData.worksAtText != null) {
                return false;
            }
        } else if (!str8.equals(facebookData.worksAtText)) {
            return false;
        }
        List<UploadedPhoto> list = this.uploadedPhotosUrl;
        return list == null ? facebookData.uploadedPhotosUrl == null : list.equals(facebookData.uploadedPhotosUrl);
    }

    public String getAbout() {
        return this.about;
    }

    public String getActivities() {
        return this.activities;
    }

    public JSONAddress getAddress() {
        return this.address;
    }

    public String getBio() {
        return this.bio;
    }

    public JSONDate getBirthday() {
        return this.birthday;
    }

    public Set<JSONCategory> getCategories() {
        return this.categories;
    }

    public JSONEmail getEmail() {
        return this.email;
    }

    public String getFqlType() {
        return this.fqlType;
    }

    public String getGroups() {
        return this.groups;
    }

    public String getHomeTown() {
        return this.homeTown;
    }

    public double getLat() {
        return this.lat;
    }

    public SerializablePair<Date, String> getLatestMessage() {
        return this.latestMessage;
    }

    public String getLatestPost() {
        return this.latestPost;
    }

    public String getLikes() {
        return this.likes;
    }

    public double getLng() {
        return this.lng;
    }

    public JSONOpeningHours getOpeningHours() {
        return this.openingHours;
    }

    public Collection<JSONOrgData> getOrganizations() {
        return this.organizations;
    }

    public List<UploadedPhoto> getUploadedPhotosUrl() {
        return this.uploadedPhotosUrl;
    }

    public Collection<JSONWebsite> getWebsites() {
        return this.websites;
    }

    public String getWorksAtText() {
        return this.worksAtText;
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.about;
        int i = 0;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.activities;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.bio;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        JSONDate jSONDate = this.birthday;
        int hashCode5 = jSONDate == null ? 0 : jSONDate.hashCode();
        JSONEmail jSONEmail = this.email;
        int hashCode6 = jSONEmail == null ? 0 : jSONEmail.hashCode();
        String str4 = this.groups;
        int hashCode7 = str4 == null ? 0 : str4.hashCode();
        String str5 = this.homeTown;
        int hashCode8 = str5 == null ? 0 : str5.hashCode();
        String str6 = this.latestPost;
        int hashCode9 = str6 == null ? 0 : str6.hashCode();
        String str7 = this.likes;
        int hashCode10 = str7 == null ? 0 : str7.hashCode();
        Collection<JSONOrgData> collection = this.organizations;
        int hashCode11 = collection == null ? 0 : collection.hashCode();
        Collection<JSONWebsite> collection2 = this.websites;
        int hashCode12 = collection2 == null ? 0 : collection2.hashCode();
        String str8 = this.worksAtText;
        int hashCode13 = str8 == null ? 0 : str8.hashCode();
        List<UploadedPhoto> list = this.uploadedPhotosUrl;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i;
    }

    public void setAbout(String str) {
        this.about = str;
        setDirty(true);
    }

    public void setActivities(String str) {
        this.activities = str;
        setDirty(true);
    }

    public void setAddress(JSONAddress jSONAddress) {
        this.address = jSONAddress;
        setDirty(true);
    }

    public void setBio(String str) {
        this.bio = str;
        setDirty(true);
    }

    public void setBirthday(JSONDate jSONDate) {
        this.birthday = jSONDate;
        setDirty(true);
    }

    public void setCategories(Set<JSONCategory> set) {
        this.categories = set;
        setDirty(true);
    }

    public void setEmail(JSONEmail jSONEmail) {
        this.email = jSONEmail;
        setDirty(true);
    }

    public void setFqlType(String str) {
        this.fqlType = str;
        setDirty(true);
    }

    public void setGroups(String str) {
        this.groups = str;
        setDirty(true);
    }

    public void setHomeTown(String str) {
        this.homeTown = str;
        setDirty(true);
    }

    public void setLat(double d2) {
        this.lat = d2;
        setDirty(true);
    }

    public void setLatestMessage(SerializablePair<Date, String> serializablePair) {
        this.latestMessage = serializablePair;
        setDirty(true);
    }

    public void setLatestPost(String str) {
        this.latestPost = str;
        setDirty(true);
    }

    public void setLikes(String str) {
        this.likes = str;
        setDirty(true);
    }

    public void setLng(double d2) {
        this.lng = d2;
        setDirty(true);
    }

    public void setOpeningHours(JSONOpeningHours jSONOpeningHours) {
        this.openingHours = jSONOpeningHours;
        setDirty(true);
    }

    public void setOrganizations(Collection<JSONOrgData> collection) {
        this.organizations = collection;
        setDirty(true);
    }

    public void setUploadedPhotosUrl(List<UploadedPhoto> list) {
        this.uploadedPhotosUrl = list;
        setDirty(true);
    }

    public void setWebsites(Collection<JSONWebsite> collection) {
        this.websites = collection;
        setDirty(true);
    }

    public void setWorksAtText(String str) {
        this.worksAtText = str;
        setDirty(true);
    }
}
