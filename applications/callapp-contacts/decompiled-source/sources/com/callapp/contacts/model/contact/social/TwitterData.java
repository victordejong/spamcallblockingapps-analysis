package com.callapp.contacts.model.contact.social;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/TwitterData.class */
public class TwitterData extends SocialData {
    private static final long serialVersionUID = -3310216485333728352L;
    private String description;
    private String lastTweet;

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        TwitterData twitterData = (TwitterData) obj;
        return Objects.equals(this.description, twitterData.description) && Objects.equals(this.lastTweet, twitterData.lastTweet);
    }

    public String getDescription() {
        return this.description;
    }

    public String getLastTweet() {
        return this.lastTweet;
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.lastTweet;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public void setDescription(String str) {
        this.description = str;
        setDirty(true);
    }

    public void setLastTweet(String str) {
        this.lastTweet = str;
        setDirty(true);
    }
}
