package com.callapp.contacts.api.helper.instagram.fulljsondata;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/fulljsondata/Graphql.class */
public class Graphql implements Serializable {
    private static final long serialVersionUID = 4531557181511883510L;
    @JsonProperty("user")
    private User user;

    public User getUser() {
        return this.user;
    }
}
