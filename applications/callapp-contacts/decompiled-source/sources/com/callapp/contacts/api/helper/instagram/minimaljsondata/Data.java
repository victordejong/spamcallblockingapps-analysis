package com.callapp.contacts.api.helper.instagram.minimaljsondata;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/minimaljsondata/Data.class */
public class Data implements Serializable {
    private static final long serialVersionUID = -576844562657024529L;
    @JsonProperty
    private User user;

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
