package com.callapp.contacts.model.objectbox;

import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/UserMediaData.class */
public class UserMediaData implements MonitoredDeviceID, Serializable {
    private static final long serialVersionUID = 7966191529610975919L;

    /* renamed from: id */
    protected Long f26807id;
    private String phoneOrIdKey;
    private String photoUrl;

    public UserMediaData() {
    }

    public UserMediaData(Long l, String str, String str2) {
        this.f26807id = l;
        this.phoneOrIdKey = str;
        this.photoUrl = str2;
    }

    public UserMediaData(String str) {
        this.photoUrl = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Objects.equals(this.photoUrl, ((UserMediaData) obj).photoUrl);
        }
        return false;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.f26807id;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public int hashCode() {
        String str = this.photoUrl;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.f26807id = l;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public String toString() {
        return "UserMediaData{id=" + this.f26807id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', photoUrl='" + this.photoUrl + "'}";
    }
}
