package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalFoursquare.class */
public class JSONCHLocalFoursquare implements Serializable {
    private static final long serialVersionUID = 4461704393094841820L;
    private String id;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = this.id;
        String str2 = ((JSONCHLocalFoursquare) obj).id;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String getId() {
        return this.id;
    }

    public int hashCode() {
        String str = this.id;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setId(String str) {
        this.id = str;
    }
}
