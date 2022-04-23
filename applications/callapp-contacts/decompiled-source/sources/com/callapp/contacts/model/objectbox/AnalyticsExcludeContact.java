package com.callapp.contacts.model.objectbox;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContact.class */
public class AnalyticsExcludeContact {
    protected Long id;
    private String phoneAsGlobal;

    public AnalyticsExcludeContact(Long l, String str) {
        this.id = l;
        this.phoneAsGlobal = str;
    }

    public AnalyticsExcludeContact(String str) {
        this.phoneAsGlobal = str;
    }

    public String getPhoneAsGlobal() {
        return this.phoneAsGlobal;
    }

    public void setPhoneAsGlobal(String str) {
        this.phoneAsGlobal = str;
    }

    public String toString() {
        return "AnalyticsExcludeContact{id=" + this.id + ", phoneAsGlobal='" + this.phoneAsGlobal + "'}";
    }
}
