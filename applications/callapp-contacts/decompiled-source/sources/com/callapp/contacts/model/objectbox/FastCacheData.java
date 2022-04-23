package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.PhotoUrls;
import com.callapp.contacts.util.date.DateUtils;
import java.util.Date;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/FastCacheData.class */
public class FastCacheData implements MonitoredDeviceID {
    private Date expirationDate;
    private String fullName;
    protected Long id;
    private boolean isSpam;
    private DataSource nameDataSource;
    private String phoneOrIdKey;
    private Integer photoBackGroundColor;
    private DataSource photoDataSource;
    private String photoUrl;
    private PhotoUrls photoUrls;
    private int spamScore = 0;

    public FastCacheData() {
    }

    public FastCacheData(Long l, String str, Date date, String str2, PhotoUrls photoUrls, boolean z, DataSource dataSource, DataSource dataSource2, Integer num) {
        this.id = l;
        this.phoneOrIdKey = str;
        this.expirationDate = date;
        this.fullName = str2;
        this.photoUrls = photoUrls;
        this.isSpam = z;
        this.photoDataSource = dataSource;
        this.nameDataSource = dataSource2;
        this.photoBackGroundColor = num;
        populateSpamScore();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FastCacheData fastCacheData = (FastCacheData) obj;
        return this.isSpam == fastCacheData.isSpam && Objects.equals(this.id, fastCacheData.id) && Objects.equals(this.phoneOrIdKey, fastCacheData.phoneOrIdKey) && Objects.equals(this.expirationDate, fastCacheData.expirationDate) && Objects.equals(this.fullName, fastCacheData.fullName) && Objects.equals(this.photoUrls, fastCacheData.photoUrls) && Objects.equals(this.photoBackGroundColor, fastCacheData.photoBackGroundColor) && Objects.equals(this.photoUrl, fastCacheData.photoUrl) && this.photoDataSource == fastCacheData.photoDataSource && this.nameDataSource == fastCacheData.nameDataSource;
    }

    public Date getExpirationDate() {
        return this.expirationDate;
    }

    public String getFullName() {
        return this.fullName;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.id;
    }

    public DataSource getNameDataSource() {
        return this.nameDataSource;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public Integer getPhotoBackGroundColor() {
        return this.photoBackGroundColor;
    }

    public DataSource getPhotoDataSource() {
        return this.photoDataSource;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public PhotoUrls getPhotoUrls() {
        return this.photoUrls;
    }

    public int hashCode() {
        Long l = this.id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.phoneOrIdKey;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Date date = this.expirationDate;
        int hashCode3 = date != null ? date.hashCode() : 0;
        String str2 = this.fullName;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        PhotoUrls photoUrls = this.photoUrls;
        int hashCode5 = photoUrls != null ? photoUrls.hashCode() : 0;
        Integer num = this.photoBackGroundColor;
        int hashCode6 = num != null ? num.hashCode() : 0;
        String str3 = this.photoUrl;
        int hashCode7 = str3 != null ? str3.hashCode() : 0;
        boolean z = this.isSpam;
        DataSource dataSource = this.photoDataSource;
        int hashCode8 = dataSource != null ? dataSource.hashCode() : 0;
        DataSource dataSource2 = this.nameDataSource;
        if (dataSource2 != null) {
            i = dataSource2.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + (z ? 1 : 0)) * 31) + hashCode8) * 31) + i;
    }

    public boolean isExpired(int i) {
        Date date = this.expirationDate;
        return date == null || DateUtils.b(date, i);
    }

    public boolean isSpam() {
        return this.isSpam;
    }

    public boolean isValid() {
        return !isExpired(2131427414);
    }

    public void populateSpamScore() {
        this.spamScore = this.isSpam ? Integer.MAX_VALUE : 0;
    }

    public void setExpirationDate(Date date) {
        this.expirationDate = date;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.id = l;
    }

    public void setNameDataSource(DataSource dataSource) {
        this.nameDataSource = dataSource;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setPhotoBackGroundColor(Integer num) {
        this.photoBackGroundColor = num;
    }

    public void setPhotoDataSource(DataSource dataSource) {
        this.photoDataSource = dataSource;
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public void setPhotoUrls(PhotoUrls photoUrls) {
        this.photoUrls = photoUrls;
    }

    public void setSpam(boolean z) {
        this.isSpam = z;
        populateSpamScore();
    }

    public String toString() {
        return "FastCacheData{id=" + this.id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', expirationDate=" + this.expirationDate + ", fullName='" + this.fullName + "', photoUrls=" + this.photoUrls + ", photoBGColor=" + this.photoBackGroundColor + ", photoUrl='" + this.photoUrl + "', isSpam=" + this.isSpam + ", photoDataSource=" + this.photoDataSource + ", nameDataSource=" + this.nameDataSource + ", spamScore=" + this.spamScore + '}';
    }
}
