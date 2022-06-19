package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ChosenContactPhoto.class */
public class ChosenContactPhoto implements MonitoredDeviceID {
    private DataSource dataSource;

    /* renamed from: id */
    protected Long f26765id;
    private String phoneOrIdKey;
    private String url;

    public ChosenContactPhoto() {
    }

    public ChosenContactPhoto(DataSource dataSource, String str) {
        this.dataSource = dataSource;
        this.url = str;
    }

    public ChosenContactPhoto(Long l, String str, DataSource dataSource, String str2) {
        this.f26765id = l;
        this.phoneOrIdKey = str;
        this.dataSource = dataSource;
        this.url = str2;
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.f26765id;
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

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.f26765id = l;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "ChosenContactPhoto{id=" + this.f26765id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', dataSource=" + this.dataSource + ", url='" + this.url + "'}";
    }
}
