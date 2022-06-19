package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONXingCompactUser.class */
public class JSONXingCompactUser implements Serializable {
    private static final long serialVersionUID = 9116602492900904033L;
    private String active_email;
    private JSONXingAddress business_address;
    private String display_name;

    /* renamed from: id */
    private String f19133id;
    private String permalink;
    private Map<String, String> photo_urls;
    private JSONXingAddress private_address;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONXingCompactUser jSONXingCompactUser = (JSONXingCompactUser) obj;
        String str = this.active_email;
        if (str == null) {
            if (jSONXingCompactUser.active_email != null) {
                return false;
            }
        } else if (!str.equals(jSONXingCompactUser.active_email)) {
            return false;
        }
        JSONXingAddress jSONXingAddress = this.business_address;
        if (jSONXingAddress == null) {
            if (jSONXingCompactUser.business_address != null) {
                return false;
            }
        } else if (!jSONXingAddress.equals(jSONXingCompactUser.business_address)) {
            return false;
        }
        String str2 = this.display_name;
        if (str2 == null) {
            if (jSONXingCompactUser.display_name != null) {
                return false;
            }
        } else if (!str2.equals(jSONXingCompactUser.display_name)) {
            return false;
        }
        String str3 = this.f19133id;
        if (str3 == null) {
            if (jSONXingCompactUser.f19133id != null) {
                return false;
            }
        } else if (!str3.equals(jSONXingCompactUser.f19133id)) {
            return false;
        }
        String str4 = this.permalink;
        if (str4 == null) {
            if (jSONXingCompactUser.permalink != null) {
                return false;
            }
        } else if (!str4.equals(jSONXingCompactUser.permalink)) {
            return false;
        }
        Map<String, String> map = this.photo_urls;
        if (map == null) {
            if (jSONXingCompactUser.photo_urls != null) {
                return false;
            }
        } else if (!map.equals(jSONXingCompactUser.photo_urls)) {
            return false;
        }
        JSONXingAddress jSONXingAddress2 = this.private_address;
        return jSONXingAddress2 == null ? jSONXingCompactUser.private_address == null : jSONXingAddress2.equals(jSONXingCompactUser.private_address);
    }

    public String getActive_email() {
        return this.active_email;
    }

    public JSONXingAddress getBusiness_address() {
        return this.business_address;
    }

    public String getDisplay_name() {
        return this.display_name;
    }

    public String getId() {
        return this.f19133id;
    }

    public String getPermalink() {
        return this.permalink;
    }

    @JsonIgnore
    public String getPhotoUrl() {
        Map<String, String> map = this.photo_urls;
        if (map != null) {
            return map.get("size_1024x1024");
        }
        return null;
    }

    public Map<String, String> getPhoto_urls() {
        return this.photo_urls;
    }

    public JSONXingAddress getPrivate_address() {
        return this.private_address;
    }

    @JsonIgnore
    public String getThumbnailUrl() {
        Map<String, String> map = this.photo_urls;
        if (map != null) {
            return map.get("size_128x128");
        }
        return null;
    }

    public int hashCode() {
        String str = this.active_email;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        JSONXingAddress jSONXingAddress = this.business_address;
        int hashCode2 = jSONXingAddress == null ? 0 : jSONXingAddress.hashCode();
        String str2 = this.display_name;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f19133id;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.permalink;
        int hashCode5 = str4 == null ? 0 : str4.hashCode();
        Map<String, String> map = this.photo_urls;
        int hashCode6 = map == null ? 0 : map.hashCode();
        JSONXingAddress jSONXingAddress2 = this.private_address;
        if (jSONXingAddress2 != null) {
            i = jSONXingAddress2.hashCode();
        }
        return ((((((((((((hashCode + 31) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public void setActive_email(String str) {
        this.active_email = str;
    }

    public void setBusiness_address(JSONXingAddress jSONXingAddress) {
        this.business_address = jSONXingAddress;
    }

    public void setDisplay_name(String str) {
        this.display_name = str;
    }

    public void setId(String str) {
        this.f19133id = str;
    }

    public void setPermalink(String str) {
        this.permalink = str;
    }

    public void setPhoto_urls(Map<String, String> map) {
        this.photo_urls = map;
    }

    public void setPrivate_address(JSONXingAddress jSONXingAddress) {
        this.private_address = jSONXingAddress;
    }
}
