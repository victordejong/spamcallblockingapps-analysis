package com.callapp.contacts.model.objectbox;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity.class */
public class JSONExternalSourceContactOBEntity {
    private int externalSourceId;

    /* renamed from: id */
    private long f26779id;
    private String jsonDoc;
    private String key;

    public JSONExternalSourceContactOBEntity() {
    }

    public JSONExternalSourceContactOBEntity(long j, int i, String str, String str2) {
        this.f26779id = j;
        this.externalSourceId = i;
        this.key = str;
        this.jsonDoc = str2;
    }

    public int getExternalSourceId() {
        return this.externalSourceId;
    }

    public long getId() {
        return this.f26779id;
    }

    public String getJsonDoc() {
        return this.jsonDoc;
    }

    public String getKey() {
        return this.key;
    }

    public void setExternalSourceId(int i) {
        this.externalSourceId = i;
    }

    public void setId(long j) {
        this.f26779id = j;
    }

    public void setJsonDoc(String str) {
        this.jsonDoc = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public String toString() {
        return "JSONExternalSourceContactOBEntity{id=" + this.f26779id + ", externalSourceId=" + this.externalSourceId + ", key='" + this.key + "', jsonDoc='" + this.jsonDoc + "'}";
    }
}
