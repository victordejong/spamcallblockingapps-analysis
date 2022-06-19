package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalLogo.class */
public class JSONCHLocalLogo implements Serializable {
    private static final long serialVersionUID = 1129133410699885540L;
    private String image;
    private String url;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalLogo jSONCHLocalLogo = (JSONCHLocalLogo) obj;
        String str = this.url;
        if (str != null) {
            if (!str.equals(jSONCHLocalLogo.url)) {
                return false;
            }
        } else if (jSONCHLocalLogo.url != null) {
            return false;
        }
        String str2 = this.image;
        String str3 = jSONCHLocalLogo.image;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getImage() {
        return this.image;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.image;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
