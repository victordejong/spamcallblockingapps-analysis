package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONAddress.class */
public class JSONAddress extends CallAppJSONObject {
    public static final transient int ADDR_CUSTOM_TYPE_ID = 0;
    public static final transient int ADDR_HOME_TYPE_ID = 1;
    public static final transient int ADDR_OTHER_TYPE_ID = 3;
    public static final transient int ADDR_WORK_TYPE_ID = 2;
    private static final long serialVersionUID = 8217873207783158933L;
    private String city;
    private String country;
    private String poBox;
    private String postalCode;
    private String state;
    private String street;
    private int type;

    public JSONAddress() {
    }

    public JSONAddress(String str) {
        this(str, false);
    }

    public JSONAddress(String str, boolean z) {
        super(z);
        this.street = str;
    }

    private void addPart(StringBuilder sb, String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            addSeparator(sb);
            sb.append(str);
        }
    }

    private void addSeparator(StringBuilder sb) {
        if (sb.length() != 0) {
            sb.append(", ");
        }
    }

    public static JSONAddress compareAddresses(JSONAddress jSONAddress, JSONAddress jSONAddress2) {
        if (jSONAddress == null) {
            return jSONAddress2;
        }
        if (jSONAddress2 == null) {
            return jSONAddress;
        }
        String fullAddress = jSONAddress.getFullAddress();
        String fullAddress2 = jSONAddress2.getFullAddress();
        if (StringUtils.m26059a((CharSequence) fullAddress)) {
            return jSONAddress2;
        }
        if (StringUtils.m26059a((CharSequence) fullAddress2)) {
            return jSONAddress;
        }
        boolean isFromDevice = jSONAddress.isFromDevice();
        if (isFromDevice != jSONAddress2.isFromDevice()) {
            return isFromDevice ? jSONAddress : jSONAddress2;
        }
        String replace = fullAddress.replace(",", org.apache.commons.lang3.StringUtils.SPACE);
        String replace2 = fullAddress2.replace(",", org.apache.commons.lang3.StringUtils.SPACE);
        int m26015m = StringUtils.m26015m(replace);
        int m26015m2 = StringUtils.m26015m(replace2);
        boolean m26022i = StringUtils.m26022i(replace);
        boolean m26022i2 = StringUtils.m26022i(replace2);
        if (m26022i != m26022i2) {
            if (m26022i && m26015m >= 2) {
                return jSONAddress;
            }
            if (m26022i2 && m26015m2 >= 2) {
                return jSONAddress2;
            }
        }
        return m26015m >= m26015m2 ? jSONAddress : jSONAddress2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONAddress)) {
            return false;
        }
        JSONAddress jSONAddress = (JSONAddress) obj;
        String str = this.city;
        if (str == null) {
            if (jSONAddress.city != null) {
                return false;
            }
        } else if (!str.equals(jSONAddress.city)) {
            return false;
        }
        String str2 = this.country;
        if (str2 == null) {
            if (jSONAddress.country != null) {
                return false;
            }
        } else if (!str2.equals(jSONAddress.country)) {
            return false;
        }
        String str3 = this.poBox;
        if (str3 == null) {
            if (jSONAddress.poBox != null) {
                return false;
            }
        } else if (!str3.equals(jSONAddress.poBox)) {
            return false;
        }
        String str4 = this.postalCode;
        if (str4 == null) {
            if (jSONAddress.postalCode != null) {
                return false;
            }
        } else if (!str4.equals(jSONAddress.postalCode)) {
            return false;
        }
        String str5 = this.state;
        if (str5 == null) {
            if (jSONAddress.state != null) {
                return false;
            }
        } else if (!str5.equals(jSONAddress.state)) {
            return false;
        }
        String str6 = this.street;
        return str6 == null ? jSONAddress.street == null : str6.equals(jSONAddress.street);
    }

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    @JsonIgnore
    public String getFullAddress() {
        StringBuilder sb = new StringBuilder();
        addPart(sb, getStreet());
        addPart(sb, getCity());
        addPart(sb, getState());
        addPart(sb, getCountry());
        addPart(sb, getPostalCode());
        if (StringUtils.m26045b((CharSequence) getPoBox())) {
            addSeparator(sb);
            sb.append("P.O ");
            sb.append(getPoBox());
        }
        if (sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    public String getPoBox() {
        return this.poBox;
    }

    public String getPostalCode() {
        return this.postalCode;
    }

    public String getState() {
        return this.state;
    }

    public String getStreet() {
        return this.street;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.city;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.country;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.poBox;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.postalCode;
        int hashCode4 = str4 == null ? 0 : str4.hashCode();
        String str5 = this.state;
        int hashCode5 = str5 == null ? 0 : str5.hashCode();
        String str6 = this.street;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return ((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setPoBox(String str) {
        this.poBox = str;
    }

    public void setPostalCode(String str) {
        this.postalCode = str;
    }

    public void setState(String str) {
        this.state = str;
    }

    public void setStreet(String str) {
        this.street = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "JSONAddress{type=" + this.type + ", state='" + this.state + "', postalCode='" + this.postalCode + "', poBox='" + this.poBox + "', country='" + this.country + "', city='" + this.city + "', street='" + this.street + "'}";
    }
}
