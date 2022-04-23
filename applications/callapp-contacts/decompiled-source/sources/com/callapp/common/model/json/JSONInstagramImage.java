package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstagramImage.class */
public class JSONInstagramImage implements Serializable {
    private static final long serialVersionUID = -3370058358369040095L;
    private String url;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = this.url;
        String str2 = ((JSONInstagramImage) obj).url;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
