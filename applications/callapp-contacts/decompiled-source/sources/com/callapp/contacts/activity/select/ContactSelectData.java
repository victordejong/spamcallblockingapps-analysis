package com.callapp.contacts.activity.select;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/ContactSelectData.class */
public class ContactSelectData implements Comparable<ContactSelectData> {
    private String contactId;
    private String displayName;
    private String userId;

    public ContactSelectData(String str, String str2, String str3) {
        this.userId = str;
        this.contactId = str2;
        this.displayName = str3;
    }

    public int compareTo(ContactSelectData contactSelectData) {
        return this.displayName.compareTo(contactSelectData.getDisplayName());
    }

    public String getContactId() {
        return this.contactId;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setContactId(String str) {
        this.contactId = str;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
