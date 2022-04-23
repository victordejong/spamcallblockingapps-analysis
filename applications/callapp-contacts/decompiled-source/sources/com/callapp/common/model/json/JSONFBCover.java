package com.callapp.common.model.json;

import com.appsflyer.internal.referrer.Payload;
import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBCover.class */
public class JSONFBCover extends CallAppJSONObject {
    private static final long serialVersionUID = 393973584210793307L;
    @JsonProperty(Payload.SOURCE)
    private String source;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = this.source;
        String str2 = ((JSONFBCover) obj).source;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String getSource() {
        return this.source;
    }

    public int hashCode() {
        String str = this.source;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public String toString() {
        return "JSONFBCover{source='" + this.source + "'}";
    }
}
