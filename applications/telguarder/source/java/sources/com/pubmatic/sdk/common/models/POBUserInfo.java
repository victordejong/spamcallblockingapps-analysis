package com.pubmatic.sdk.common.models;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBUserInfo.class */
public class POBUserInfo {

    /* renamed from: a */
    private int f491a;

    /* renamed from: b */
    private Gender f492b;

    /* renamed from: c */
    private String f493c;

    /* renamed from: d */
    private String f494d;

    /* renamed from: e */
    private String f495e;

    /* renamed from: f */
    private String f496f;

    /* renamed from: g */
    private String f497g;

    /* renamed from: h */
    private String f498h;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBUserInfo$Gender.class */
    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        OTHER("O");
        

        /* renamed from: a */
        private final String f500a;

        Gender(String str) {
            this.f500a = str;
        }

        public String getValue() {
            return this.f500a;
        }
    }

    public int getBirthYear() {
        return this.f491a;
    }

    public String getCity() {
        return this.f494d;
    }

    public String getCountry() {
        return this.f493c;
    }

    public Gender getGender() {
        return this.f492b;
    }

    public String getKeywords() {
        return this.f498h;
    }

    public String getMetro() {
        return this.f495e;
    }

    public String getRegion() {
        return this.f497g;
    }

    public String getZip() {
        return this.f496f;
    }

    public void setBirthYear(int i) {
        if (i > 0) {
            this.f491a = i;
        }
    }

    public void setCity(String str) {
        this.f494d = str;
    }

    public void setCountry(String str) {
        this.f493c = str;
    }

    public void setGender(Gender gender) {
        this.f492b = gender;
    }

    public void setKeywords(String str) {
        this.f498h = str;
    }

    public void setMetro(String str) {
        this.f495e = str;
    }

    public void setRegion(String str) {
        this.f497g = str;
    }

    public void setZip(String str) {
        this.f496f = str;
    }
}
