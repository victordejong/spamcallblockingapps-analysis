package com.callapp.contacts.model.objectbox;

import java.util.Arrays;
import java.util.Date;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CacheData.class */
public class CacheData {
    private Boolean booleanVal;
    private byte[] bytesVal;
    private Date expires;
    private String file;

    /* renamed from: id */
    private long f26757id;
    private Integer integerVal;
    private Long longVal;
    private String stringVal;
    private String valueType;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CacheData cacheData = (CacheData) obj;
        if (this.f26757id != cacheData.f26757id || !Objects.equals(this.file, cacheData.file) || !Objects.equals(this.expires, cacheData.expires) || !Objects.equals(this.valueType, cacheData.valueType) || !Objects.equals(this.stringVal, cacheData.stringVal) || !Objects.equals(this.longVal, cacheData.longVal) || !Objects.equals(this.booleanVal, cacheData.booleanVal) || !Objects.equals(this.integerVal, cacheData.integerVal)) {
            return false;
        }
        return Arrays.equals(this.bytesVal, cacheData.bytesVal);
    }

    public Boolean getBooleanVal() {
        return this.booleanVal;
    }

    public byte[] getBytesVal() {
        return this.bytesVal;
    }

    public Date getExpires() {
        return this.expires;
    }

    public String getFile() {
        return this.file;
    }

    public long getId() {
        return this.f26757id;
    }

    public Integer getIntegerVal() {
        return this.integerVal;
    }

    public Long getLongVal() {
        return this.longVal;
    }

    public String getStringVal() {
        return this.stringVal;
    }

    public String getValueType() {
        return this.valueType;
    }

    public int hashCode() {
        long j = this.f26757id;
        int i = (int) (j ^ (j >>> 32));
        String str = this.file;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Date date = this.expires;
        int hashCode2 = date != null ? date.hashCode() : 0;
        String str2 = this.valueType;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.stringVal;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        Long l = this.longVal;
        int hashCode5 = l != null ? l.hashCode() : 0;
        Boolean bool = this.booleanVal;
        int hashCode6 = bool != null ? bool.hashCode() : 0;
        Integer num = this.integerVal;
        if (num != null) {
            i2 = num.hashCode();
        }
        return (((((((((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2) * 31) + Arrays.hashCode(this.bytesVal);
    }

    public void setBooleanVal(Boolean bool) {
        this.booleanVal = bool;
    }

    public void setBytesVal(byte[] bArr) {
        this.bytesVal = bArr;
    }

    public void setExpires(Date date) {
        this.expires = date;
    }

    public void setFile(String str) {
        this.file = str;
    }

    public void setId(long j) {
        this.f26757id = j;
    }

    public void setIntegerVal(Integer num) {
        this.integerVal = num;
    }

    public void setLongVal(Long l) {
        this.longVal = l;
    }

    public void setStringVal(String str) {
        this.stringVal = str;
    }

    public void setValueType(String str) {
        this.valueType = str;
    }

    public String toString() {
        return "CacheData{id=" + this.f26757id + ", file='" + this.file + "', expires=" + this.expires + ", valueType='" + this.valueType + "', stringVal='" + this.stringVal + "', longVal=" + this.longVal + ", booleanVal=" + this.booleanVal + ", integerVal=" + this.integerVal + ", bytesVal=" + Arrays.toString(this.bytesVal) + '}';
    }
}
