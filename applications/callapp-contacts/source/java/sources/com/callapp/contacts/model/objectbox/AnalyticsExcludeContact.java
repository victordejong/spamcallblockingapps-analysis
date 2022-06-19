package com.callapp.contacts.model.objectbox;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContact.class */
public class AnalyticsExcludeContact {

    /* renamed from: id */
    protected Long f26749id;
    private String phoneAsGlobal;

    public AnalyticsExcludeContact(Long l, String str) {
        this.f26749id = l;
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
        return "AnalyticsExcludeContact{id=" + this.f26749id + ", phoneAsGlobal='" + this.phoneAsGlobal + "'}";
    }
}
