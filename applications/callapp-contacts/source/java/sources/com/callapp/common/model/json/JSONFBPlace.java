package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBPlace.class */
public class JSONFBPlace implements Serializable {
    private String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = this.name;
        String str2 = ((JSONFBPlace) obj).name;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    public void setName(String str) {
        this.name = str;
    }
}
