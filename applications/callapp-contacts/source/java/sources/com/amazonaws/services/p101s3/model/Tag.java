package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.Tag */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/Tag.class */
public class Tag implements Serializable {
    private String key;
    private String value;

    public Tag(String str, String str2) {
        this.key = str;
        this.value = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Tag tag = (Tag) obj;
        String str = this.key;
        if (str != null) {
            if (!str.equals(tag.key)) {
                return false;
            }
        } else if (tag.key != null) {
            return false;
        }
        String str2 = this.value;
        String str3 = tag.value;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getKey() {
        return this.key;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public Tag withKey(String str) {
        setKey(str);
        return this;
    }

    public Tag withValue(String str) {
        setValue(str);
        return this;
    }
}
