package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoData.class */
public class IMExtractedPhotoData implements MonitoredDeviceID {
    private DataSource dataSource;
    private long date;
    protected Long id;
    private String phoneOrIdKey;
    private String url;

    public IMExtractedPhotoData() {
    }

    public IMExtractedPhotoData(DataSource dataSource, String str) {
        this.dataSource = dataSource;
        this.url = str;
    }

    public IMExtractedPhotoData(Long l, String str, DataSource dataSource, String str2) {
        this.id = l;
        this.phoneOrIdKey = str;
        this.dataSource = dataSource;
        this.url = str2;
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    public long getDate() {
        return this.date;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.id;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public String getUrl() {
        return this.url;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void setDate(long j) {
        this.date = j;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.id = l;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "IMExtractedPhotoData{id=" + this.id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', dataSource=" + this.dataSource + ", url='" + this.url + "'}";
    }
}
