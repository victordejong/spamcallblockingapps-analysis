package com.callapp.contacts.model.contact.social;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/PinterestData.class */
public class PinterestData extends SocialData {
    private static final long serialVersionUID = -5741337575998164079L;
    public String bio;
    private String pubProfileUrl;

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        PinterestData pinterestData = (PinterestData) obj;
        return Objects.equals(this.pubProfileUrl, pinterestData.pubProfileUrl) && Objects.equals(this.bio, pinterestData.bio);
    }

    public String getBio() {
        return this.bio;
    }

    public String getPubProfileUrl() {
        return this.pubProfileUrl;
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.pubProfileUrl;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.bio;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public void setBio(String str) {
        this.bio = str;
        setDirty(true);
    }

    public void setPubProfileUrl(String str) {
        this.pubProfileUrl = str;
        setDirty(true);
    }
}
