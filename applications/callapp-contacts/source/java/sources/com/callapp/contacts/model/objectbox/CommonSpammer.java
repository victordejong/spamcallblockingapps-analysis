package com.callapp.contacts.model.objectbox;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammer.class */
public class CommonSpammer {
    private String commonSpammerName;
    private String commonSpammerPhone;
    private int commonSpammerScore;

    /* renamed from: id */
    protected Long f26767id;

    public CommonSpammer() {
    }

    public CommonSpammer(Long l, String str, String str2, int i) {
        this.f26767id = l;
        this.commonSpammerName = str;
        this.commonSpammerPhone = str2;
        this.commonSpammerScore = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CommonSpammer commonSpammer = (CommonSpammer) obj;
        if (this.commonSpammerScore != commonSpammer.commonSpammerScore || !Objects.equals(this.f26767id, commonSpammer.f26767id) || !Objects.equals(this.commonSpammerName, commonSpammer.commonSpammerName)) {
            return false;
        }
        return Objects.equals(this.commonSpammerPhone, commonSpammer.commonSpammerPhone);
    }

    public String getCommonSpammerName() {
        return this.commonSpammerName;
    }

    public String getCommonSpammerPhone() {
        return this.commonSpammerPhone;
    }

    public int getCommonSpammerScore() {
        return this.commonSpammerScore;
    }

    public Long getId() {
        return this.f26767id;
    }

    public int hashCode() {
        Long l = this.f26767id;
        int i = 0;
        int hashCode = l != null ? l.hashCode() : 0;
        String str = this.commonSpammerName;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.commonSpammerPhone;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + this.commonSpammerScore;
    }

    public void setCommonSpammerName(String str) {
        this.commonSpammerName = str;
    }

    public void setCommonSpammerPhone(String str) {
        this.commonSpammerPhone = str;
    }

    public void setCommonSpammerScore(int i) {
        this.commonSpammerScore = i;
    }

    public void setId(Long l) {
        this.f26767id = l;
    }

    public String toString() {
        return "CommonSpammer{id=" + this.f26767id + ", commonSpammerName='" + this.commonSpammerName + "', commonSpammerPhone='" + this.commonSpammerPhone + "', commonSpammerScore=" + this.commonSpammerScore + '}';
    }
}
