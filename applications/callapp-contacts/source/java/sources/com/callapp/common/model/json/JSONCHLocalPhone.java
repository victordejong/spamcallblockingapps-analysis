package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalPhone.class */
public class JSONCHLocalPhone implements PhoneFieldType, Serializable {
    private static final String TYPE_EMAIL = "email";
    private static final String TYPE_FAX = "fax";
    private static final String TYPE_MOBILE = "mobile";
    private static final String TYPE_PHONE = "phone";
    private static final String TYPE_WEBSITE = "website";
    private static final long serialVersionUID = -2587661923794631554L;
    private String contact_value;
    private String display;
    private String element_name;
    private String label;
    private String refuse_advertising;
    private String type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalPhone jSONCHLocalPhone = (JSONCHLocalPhone) obj;
        String str = this.contact_value;
        if (str != null) {
            if (!str.equals(jSONCHLocalPhone.contact_value)) {
                return false;
            }
        } else if (jSONCHLocalPhone.contact_value != null) {
            return false;
        }
        String str2 = this.refuse_advertising;
        if (str2 != null) {
            if (!str2.equals(jSONCHLocalPhone.refuse_advertising)) {
                return false;
            }
        } else if (jSONCHLocalPhone.refuse_advertising != null) {
            return false;
        }
        String str3 = this.label;
        if (str3 != null) {
            if (!str3.equals(jSONCHLocalPhone.label)) {
                return false;
            }
        } else if (jSONCHLocalPhone.label != null) {
            return false;
        }
        String str4 = this.type;
        if (str4 != null) {
            if (!str4.equals(jSONCHLocalPhone.type)) {
                return false;
            }
        } else if (jSONCHLocalPhone.type != null) {
            return false;
        }
        String str5 = this.display;
        if (str5 != null) {
            if (!str5.equals(jSONCHLocalPhone.display)) {
                return false;
            }
        } else if (jSONCHLocalPhone.display != null) {
            return false;
        }
        String str6 = this.element_name;
        String str7 = jSONCHLocalPhone.element_name;
        return str6 != null ? str6.equals(str7) : str7 == null;
    }

    public String getContact_value() {
        return this.contact_value;
    }

    public String getDisplay() {
        return this.display;
    }

    public String getElement_name() {
        return this.element_name;
    }

    public String getLabel() {
        return this.label;
    }

    public String getRefuse_advertising() {
        return this.refuse_advertising;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.contact_value;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.refuse_advertising;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.label;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.type;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.display;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.element_name;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public boolean isEmailType() {
        return StringUtils.m26042b(TYPE_EMAIL, this.type);
    }

    @Override // com.callapp.common.model.json.PhoneFieldType
    public boolean isFaxType() {
        return StringUtils.m26042b(TYPE_FAX, this.type);
    }

    @Override // com.callapp.common.model.json.PhoneFieldType
    public boolean isMobileType() {
        return StringUtils.m26042b(TYPE_MOBILE, this.type);
    }

    @Override // com.callapp.common.model.json.PhoneFieldType
    public boolean isPhoneType() {
        return StringUtils.m26042b("phone", this.type);
    }

    public boolean isWebsiteType() {
        return StringUtils.m26042b(TYPE_WEBSITE, this.type);
    }

    public void setContact_value(String str) {
        this.contact_value = str;
    }

    public void setDisplay(String str) {
        this.display = str;
    }

    public void setElement_name(String str) {
        this.element_name = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setRefuse_advertising(String str) {
        this.refuse_advertising = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
