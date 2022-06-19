package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONTrueContactLookupResponse.class */
public class JSONTrueContactLookupResponse implements Serializable {
    private static final long serialVersionUID = 4180960188548169150L;
    private Contact contact;
    private String urlFrom;
    private String urlTo;

    /* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONTrueContactLookupResponse$Contact.class */
    public static class Contact implements Serializable {
        private static final long serialVersionUID = 6925561910042814354L;
        private String address;
        private String email;
        private String isQualified;
        private String name;
        private String phone;
        private String picUrl;
        private String title;

        public String getAddress() {
            return this.address;
        }

        public String getEmail() {
            return this.email;
        }

        public String getIsQualified() {
            return this.isQualified;
        }

        public String getName() {
            return this.name;
        }

        public String getPhone() {
            return this.phone;
        }

        public String getPicUrl() {
            return this.picUrl;
        }

        public String getTitle() {
            return this.title;
        }

        public void setAddress(String str) {
            this.address = str;
        }

        public void setEmail(String str) {
            this.email = str;
        }

        public void setIsQualified(String str) {
            this.isQualified = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPhone(String str) {
            this.phone = str;
        }

        public void setPicUrl(String str) {
            this.picUrl = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public Contact getContact() {
        return this.contact;
    }

    public String getUrlFrom() {
        return this.urlFrom;
    }

    public String getUrlTo() {
        return this.urlTo;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public void setUrlFrom(String str) {
        this.urlFrom = str;
    }

    public void setUrlTo(String str) {
        this.urlTo = str;
    }
}
