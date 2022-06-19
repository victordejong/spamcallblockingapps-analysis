package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONXingAddress.class */
public class JSONXingAddress implements Serializable {
    private static final long serialVersionUID = 1141487530408532354L;
    private String city;
    private String country;
    private String email;
    private String fax;
    private String mobile_phone;
    private String phone;
    private String province;
    private String street;
    private String zip_code;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONXingAddress)) {
            return false;
        }
        JSONXingAddress jSONXingAddress = (JSONXingAddress) obj;
        String str = this.city;
        if (str == null) {
            if (jSONXingAddress.city != null) {
                return false;
            }
        } else if (!str.equals(jSONXingAddress.city)) {
            return false;
        }
        String str2 = this.country;
        if (str2 == null) {
            if (jSONXingAddress.country != null) {
                return false;
            }
        } else if (!str2.equals(jSONXingAddress.country)) {
            return false;
        }
        String str3 = this.email;
        if (str3 == null) {
            if (jSONXingAddress.email != null) {
                return false;
            }
        } else if (!str3.equals(jSONXingAddress.email)) {
            return false;
        }
        String str4 = this.fax;
        if (str4 == null) {
            if (jSONXingAddress.fax != null) {
                return false;
            }
        } else if (!str4.equals(jSONXingAddress.fax)) {
            return false;
        }
        String str5 = this.mobile_phone;
        if (str5 == null) {
            if (jSONXingAddress.mobile_phone != null) {
                return false;
            }
        } else if (!str5.equals(jSONXingAddress.mobile_phone)) {
            return false;
        }
        String str6 = this.phone;
        if (str6 == null) {
            if (jSONXingAddress.phone != null) {
                return false;
            }
        } else if (!str6.equals(jSONXingAddress.phone)) {
            return false;
        }
        String str7 = this.province;
        if (str7 == null) {
            if (jSONXingAddress.province != null) {
                return false;
            }
        } else if (!str7.equals(jSONXingAddress.province)) {
            return false;
        }
        String str8 = this.street;
        if (str8 == null) {
            if (jSONXingAddress.street != null) {
                return false;
            }
        } else if (!str8.equals(jSONXingAddress.street)) {
            return false;
        }
        String str9 = this.zip_code;
        return str9 == null ? jSONXingAddress.zip_code == null : str9.equals(jSONXingAddress.zip_code);
    }

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    public String getEmail() {
        return this.email;
    }

    public String getFax() {
        return this.fax;
    }

    public String getMobile_phone() {
        return this.mobile_phone;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getProvince() {
        return this.province;
    }

    public String getStreet() {
        return this.street;
    }

    public String getZip_code() {
        return this.zip_code;
    }

    public int hashCode() {
        String str = this.city;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.country;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.email;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.fax;
        int hashCode4 = str4 == null ? 0 : str4.hashCode();
        String str5 = this.mobile_phone;
        int hashCode5 = str5 == null ? 0 : str5.hashCode();
        String str6 = this.phone;
        int hashCode6 = str6 == null ? 0 : str6.hashCode();
        String str7 = this.province;
        int hashCode7 = str7 == null ? 0 : str7.hashCode();
        String str8 = this.street;
        int hashCode8 = str8 == null ? 0 : str8.hashCode();
        String str9 = this.zip_code;
        if (str9 != null) {
            i = str9.hashCode();
        }
        return ((((((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setFax(String str) {
        this.fax = str;
    }

    public void setMobile_phone(String str) {
        this.mobile_phone = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public void setStreet(String str) {
        this.street = str;
    }

    public void setZip_code(String str) {
        this.zip_code = str;
    }
}
