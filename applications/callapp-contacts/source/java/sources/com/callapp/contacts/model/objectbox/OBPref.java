package com.callapp.contacts.model.objectbox;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/OBPref.class */
public class OBPref {

    /* renamed from: id */
    protected Long f26783id;
    private String key;
    private String value;

    public OBPref() {
    }

    public OBPref(String str, String str2) {
        this.key = str;
        this.value = str2;
    }

    public Long getId() {
        return this.f26783id;
    }

    public String getKey() {
        return this.key;
    }

    public String getValue() {
        return this.value;
    }

    public void setId(Long l) {
        this.f26783id = l;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String toString() {
        return "OBPref{id=" + this.f26783id + ", key='" + this.key + "', value='" + this.value + "'}";
    }
}
