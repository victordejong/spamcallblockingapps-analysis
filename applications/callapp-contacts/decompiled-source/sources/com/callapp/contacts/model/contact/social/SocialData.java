package com.callapp.contacts.model.contact.social;

import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.CacheableData;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/SocialData.class */
public class SocialData extends CacheableData implements Serializable {
    private static final long serialVersionUID = 7075593034093112564L;
    protected String fullName;
    protected List<PersonData> mutualFriends;
    protected String photoUrl;
    protected String thumbnailUrl;
    protected Boolean isFriend = null;
    protected transient boolean dirty = false;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SocialData)) {
            return false;
        }
        SocialData socialData = (SocialData) obj;
        String str = this.fullName;
        if (str == null) {
            if (socialData.fullName != null) {
                return false;
            }
        } else if (!str.equals(socialData.fullName)) {
            return false;
        }
        List<PersonData> list = this.mutualFriends;
        if (list == null) {
            if (socialData.mutualFriends != null) {
                return false;
            }
        } else if (!list.equals(socialData.mutualFriends)) {
            return false;
        }
        String str2 = this.photoUrl;
        return str2 == null ? socialData.photoUrl == null : str2.equals(socialData.photoUrl);
    }

    public String getFullName() {
        return this.fullName;
    }

    public List<PersonData> getMutualFriends() {
        return this.mutualFriends;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public int hashCode() {
        String str = this.fullName;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        List<PersonData> list = this.mutualFriends;
        int hashCode2 = list == null ? 0 : list.hashCode();
        String str2 = this.photoUrl;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public Boolean isFriend() {
        return this.isFriend;
    }

    public void setDirty(boolean z) {
        this.dirty = z;
    }

    public void setFullName(String str) {
        this.fullName = str;
        setDirty(true);
    }

    public void setIsFriend(Boolean bool) {
        this.isFriend = bool;
        setDirty(true);
    }

    public void setMutualFriends(List<PersonData> list) {
        this.mutualFriends = list;
        setDirty(true);
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
        setDirty(true);
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
        setDirty(true);
    }
}
