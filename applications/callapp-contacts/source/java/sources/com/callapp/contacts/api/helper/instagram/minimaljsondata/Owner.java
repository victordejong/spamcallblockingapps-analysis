package com.callapp.contacts.api.helper.instagram.minimaljsondata;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/minimaljsondata/Owner.class */
public class Owner implements Serializable {
    private static final long serialVersionUID = 3983750511943856237L;
    @JsonProperty

    /* renamed from: id */
    private String f24862id;
    @JsonProperty("profile_pic_url")
    private String profilePicUrl;
    @JsonProperty
    private String username;

    public String getId() {
        return this.f24862id;
    }

    public String getProfilePicUrl() {
        return this.profilePicUrl;
    }

    public String getUsername() {
        return this.username;
    }

    public void setId(String str) {
        this.f24862id = str;
    }

    public void setProfilePicUrl(String str) {
        this.profilePicUrl = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }
}
