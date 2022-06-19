package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBEntity.class */
public class JSONFBEntity implements Serializable {
    private static final long serialVersionUID = 1147549357007801927L;
    private JSONDate formattedBirthday;
    private String gender;

    /* renamed from: id */
    private String f19124id;
    private String link;
    private String name;
    private String phone;
    private String profileImageUrl;

    public JSONFBEntity() {
    }

    public JSONFBEntity(String str, String str2, JSONDate jSONDate, String str3, String str4) {
        this.f19124id = str;
        this.name = str2;
        this.formattedBirthday = jSONDate;
        this.link = str3;
        this.profileImageUrl = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONFBEntity)) {
            return false;
        }
        JSONFBEntity jSONFBEntity = (JSONFBEntity) obj;
        String str = this.f19124id;
        return str == null ? jSONFBEntity.f19124id == null : str.equals(jSONFBEntity.f19124id);
    }

    public JSONDate getFormattedBirthday() {
        return this.formattedBirthday;
    }

    public String getId() {
        return this.f19124id;
    }

    public String getLink() {
        return this.link;
    }

    public String getName() {
        return this.name;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getProfileImageUrl() {
        return this.profileImageUrl;
    }

    public String getUid() {
        return this.f19124id;
    }

    public int hashCode() {
        String str = this.f19124id;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public void setFormattedBirthday(JSONDate jSONDate) {
        this.formattedBirthday = jSONDate;
    }

    public void setId(String str) {
        this.f19124id = str;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setProfileImageUrl(String str) {
        this.profileImageUrl = str;
    }

    public void setUid(String str) {
        this.f19124id = str;
    }
}
