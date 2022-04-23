package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalResultsAddress.class */
public class JSONCHLocalResultsAddress implements Serializable {
    private static final long serialVersionUID = -4998382185218912722L;
    private String city;
    private String full;
    private String house_number;
    private String state;
    private String street;
    private String zipcode;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalResultsAddress jSONCHLocalResultsAddress = (JSONCHLocalResultsAddress) obj;
        String str = this.state;
        if (str != null) {
            if (!str.equals(jSONCHLocalResultsAddress.state)) {
                return false;
            }
        } else if (jSONCHLocalResultsAddress.state != null) {
            return false;
        }
        String str2 = this.city;
        if (str2 != null) {
            if (!str2.equals(jSONCHLocalResultsAddress.city)) {
                return false;
            }
        } else if (jSONCHLocalResultsAddress.city != null) {
            return false;
        }
        String str3 = this.zipcode;
        if (str3 != null) {
            if (!str3.equals(jSONCHLocalResultsAddress.zipcode)) {
                return false;
            }
        } else if (jSONCHLocalResultsAddress.zipcode != null) {
            return false;
        }
        String str4 = this.street;
        if (str4 != null) {
            if (!str4.equals(jSONCHLocalResultsAddress.street)) {
                return false;
            }
        } else if (jSONCHLocalResultsAddress.street != null) {
            return false;
        }
        String str5 = this.house_number;
        if (str5 != null) {
            if (!str5.equals(jSONCHLocalResultsAddress.house_number)) {
                return false;
            }
        } else if (jSONCHLocalResultsAddress.house_number != null) {
            return false;
        }
        String str6 = this.full;
        String str7 = jSONCHLocalResultsAddress.full;
        return str6 != null ? str6.equals(str7) : str7 == null;
    }

    public String getCity() {
        return this.city;
    }

    public String getFull() {
        return this.full;
    }

    public String getHouse_number() {
        return this.house_number;
    }

    public String getState() {
        return this.state;
    }

    public String getStreet() {
        return this.street;
    }

    public String getZipcode() {
        return this.zipcode;
    }

    public int hashCode() {
        String str = this.state;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.city;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.zipcode;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.street;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.house_number;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.full;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setFull(String str) {
        this.full = str;
    }

    public void setHouse_number(String str) {
        this.house_number = str;
    }

    public void setState(String str) {
        this.state = str;
    }

    public void setStreet(String str) {
        this.street = str;
    }

    public void setZipcode(String str) {
        this.zipcode = str;
    }
}
