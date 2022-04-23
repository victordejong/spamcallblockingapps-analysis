package com.callapp.contacts.api.helper.instagram.fulljsondata;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/fulljsondata/User.class */
public class User implements Serializable {
    private static final long serialVersionUID = 8674281834293973553L;
    @JsonProperty("full_name")
    private String fullName;

    public String getFullName() {
        return this.fullName;
    }
}
