package com.callapp.contacts.model.objectbox;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IncognitoData.class */
public class IncognitoData implements MonitoredDeviceID {
    protected long id;
    private String phoneOrIdKey;

    public IncognitoData() {
    }

    public IncognitoData(long j, String str) {
        this.id = j;
        this.phoneOrIdKey = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return Long.valueOf(this.id);
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public void setId(long j) {
        this.id = j;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.id = l.longValue();
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }
}
