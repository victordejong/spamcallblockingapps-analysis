package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstagramUser.class */
public class JSONInstagramUser implements Serializable {
    private static final long serialVersionUID = 1325433845172319871L;
    private String bio;
    private JSONInstagramCounts counts;
    private String full_name;

    /* renamed from: id */
    private String f19131id;
    private String profile_picture;
    private String username;
    private String website;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONInstagramUser)) {
            return false;
        }
        JSONInstagramUser jSONInstagramUser = (JSONInstagramUser) obj;
        String str = this.f19131id;
        if (str == null) {
            if (jSONInstagramUser.f19131id != null) {
                return false;
            }
        } else if (!str.equals(jSONInstagramUser.f19131id)) {
            return false;
        }
        String str2 = this.username;
        return str2 == null ? jSONInstagramUser.username == null : str2.equals(jSONInstagramUser.username);
    }

    public String getBio() {
        return this.bio;
    }

    public JSONInstagramCounts getCounts() {
        return this.counts;
    }

    public String getFull_name() {
        return this.full_name;
    }

    public String getId() {
        return this.f19131id;
    }

    public String getProfile_picture() {
        return this.profile_picture;
    }

    public String getUsername() {
        return this.username;
    }

    public String getWebsite() {
        return this.website;
    }

    public int hashCode() {
        String str = this.f19131id;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.username;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setBio(String str) {
        this.bio = str;
    }

    public void setCounts(JSONInstagramCounts jSONInstagramCounts) {
        this.counts = jSONInstagramCounts;
    }

    public void setFull_name(String str) {
        this.full_name = str;
    }

    public void setId(String str) {
        this.f19131id = str;
    }

    public void setProfile_picture(String str) {
        this.profile_picture = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public void setWebsite(String str) {
        this.website = str;
    }
}
