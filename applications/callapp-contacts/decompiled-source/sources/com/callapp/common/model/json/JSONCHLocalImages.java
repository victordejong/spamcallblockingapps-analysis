package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalImages.class */
public class JSONCHLocalImages implements Serializable {
    private static final long serialVersionUID = 6962901143309235012L;
    private String type;
    private String url;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalImages jSONCHLocalImages = (JSONCHLocalImages) obj;
        String str = this.url;
        if (str != null) {
            if (!str.equals(jSONCHLocalImages.url)) {
                return false;
            }
        } else if (jSONCHLocalImages.url != null) {
            return false;
        }
        String str2 = this.type;
        String str3 = jSONCHLocalImages.type;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.type;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
