package com.callapp.contacts.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UploadedPhoto.class */
public class UploadedPhoto implements Serializable {
    private static final long serialVersionUID = 493904313938205081L;
    private Date createdTime;
    private String url;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UploadedPhoto uploadedPhoto = (UploadedPhoto) obj;
        if (Objects.equals(this.url, uploadedPhoto.url)) {
            return Objects.equals(this.createdTime, uploadedPhoto.createdTime);
        }
        return false;
    }

    public Date getCreatedTime() {
        return this.createdTime;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Date date = this.createdTime;
        if (date != null) {
            i = date.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setCreatedTime(Date date) {
        this.createdTime = date;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
