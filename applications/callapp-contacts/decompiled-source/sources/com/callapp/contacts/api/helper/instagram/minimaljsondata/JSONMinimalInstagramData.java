package com.callapp.contacts.api.helper.instagram.minimaljsondata;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData.class */
public class JSONMinimalInstagramData implements Serializable {
    private static final long serialVersionUID = 3917271546597354303L;
    @JsonProperty
    private Data data;

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }
}
