package com.callapp.contacts.api.helper.instagram.fulljsondata;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData.class */
public class JSONFullInstagramData implements Serializable {
    private static final long serialVersionUID = -5235575554400657723L;
    @JsonProperty("graphql")
    private Graphql graphql;

    public Graphql getGraphql() {
        return this.graphql;
    }

    public void setGraphql(Graphql graphql) {
        this.graphql = graphql;
    }
}
