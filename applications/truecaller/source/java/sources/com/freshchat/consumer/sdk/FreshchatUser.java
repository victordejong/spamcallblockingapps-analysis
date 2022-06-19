package com.freshchat.consumer.sdk;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FreshchatUser.class */
public class FreshchatUser {
    private String email;
    private String externalId;
    private String firstName;
    private String lastName;
    private String phone;
    private String phoneCountryCode;
    private String restoreId;

    public FreshchatUser() {
    }

    public FreshchatUser(String str, String str2) {
        this.externalId = str;
        this.restoreId = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FreshchatUser freshchatUser = (FreshchatUser) obj;
        String str = this.email;
        if (str != null) {
            if (!str.equals(freshchatUser.email)) {
                return false;
            }
        } else if (freshchatUser.email != null) {
            return false;
        }
        String str2 = this.firstName;
        if (str2 != null) {
            if (!str2.equals(freshchatUser.firstName)) {
                return false;
            }
        } else if (freshchatUser.firstName != null) {
            return false;
        }
        String str3 = this.lastName;
        if (str3 != null) {
            if (!str3.equals(freshchatUser.lastName)) {
                return false;
            }
        } else if (freshchatUser.lastName != null) {
            return false;
        }
        String str4 = this.phone;
        if (str4 != null) {
            if (!str4.equals(freshchatUser.phone)) {
                return false;
            }
        } else if (freshchatUser.phone != null) {
            return false;
        }
        String str5 = this.phoneCountryCode;
        if (str5 != null) {
            if (!str5.equals(freshchatUser.phoneCountryCode)) {
                return false;
            }
        } else if (freshchatUser.phoneCountryCode != null) {
            return false;
        }
        String str6 = this.restoreId;
        if (str6 != null) {
            if (!str6.equals(freshchatUser.restoreId)) {
                return false;
            }
        } else if (freshchatUser.restoreId != null) {
            return false;
        }
        String str7 = this.externalId;
        String str8 = freshchatUser.externalId;
        if (str7 == null ? str8 != null : !str7.equals(str8)) {
            z = false;
        }
        return z;
    }

    public String getEmail() {
        return this.email;
    }

    public String getExternalId() {
        return this.externalId;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getPhoneCountryCode() {
        return this.phoneCountryCode;
    }

    public String getRestoreId() {
        return this.restoreId;
    }

    public int hashCode() {
        String str = this.email;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.firstName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.lastName;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.externalId;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public FreshchatUser setEmail(String str) {
        this.email = str;
        return this;
    }

    public FreshchatUser setFirstName(String str) {
        this.firstName = str;
        return this;
    }

    public FreshchatUser setLastName(String str) {
        this.lastName = str;
        return this;
    }

    public FreshchatUser setPhone(String str, String str2) {
        this.phoneCountryCode = str;
        this.phone = str2;
        return this;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("FreshchatUser{ ", "email=");
        m8704I.append(this.email);
        m8704I.append(", firstName=");
        m8704I.append(this.firstName);
        m8704I.append(", lastName=");
        m8704I.append(this.lastName);
        m8704I.append(", externalId=");
        m8704I.append(this.externalId);
        m8704I.append(", restoreId=");
        m8704I.append(this.restoreId);
        m8704I.append(", phoneNumber=");
        m8704I.append(this.phoneCountryCode);
        return C22128a.m8630e(m8704I, this.phone, '}');
    }
}
