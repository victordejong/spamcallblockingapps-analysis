package com.callapp.contacts.model.contact;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/ExternalSourceData.class */
public abstract class ExternalSourceData extends CacheableData {
    private static final long serialVersionUID = 463743416188511386L;
    private String fullName;
    private String key;

    public String getFullName() {
        return this.fullName;
    }

    public String getKey() {
        return this.key;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public void setKey(String str) {
        this.key = str;
    }
}
