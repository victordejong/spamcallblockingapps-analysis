package com.callapp.contacts.api.helper.instagram.minimaljsondata;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/minimaljsondata/User.class */
public class User implements Serializable {
    private static final long serialVersionUID = -2714211806211186047L;
    @JsonProperty
    private String id;
    @JsonProperty("profile_pic_url")
    private String profilePicUrl;
    @JsonProperty
    private Reel reel;
    @JsonProperty
    private String username;

    public String getId() {
        return this.id;
    }

    public String getProfilePicUrl() {
        return this.profilePicUrl;
    }

    public Reel getReel() {
        return this.reel;
    }

    public String getUsername() {
        return this.username;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setProfilePicUrl(String str) {
        this.profilePicUrl = str;
    }

    public void setReel(Reel reel) {
        this.reel = reel;
    }

    public void setUsername(String str) {
        this.username = str;
    }
}
