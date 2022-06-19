package com.allinone.callerid.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/model/EZCountryCode.class */
public class EZCountryCode implements Serializable {
    public String country_code;
    public String country_name;
    public String iso_code;

    public String getCountry_code() {
        return this.country_code;
    }

    public String getCountry_name() {
        return this.country_name;
    }

    public String getIso_code() {
        return this.iso_code;
    }

    public void setCountry_code(String str) {
        this.country_code = str;
    }

    public void setCountry_name(String str) {
        this.country_name = str;
    }

    public void setIso_code(String str) {
        this.iso_code = str;
    }

    public String toString() {
        return "EZCountryCode{country_name='" + this.country_name + "', country_code='" + this.country_code + "', iso_code='" + this.iso_code + "'}";
    }
}
