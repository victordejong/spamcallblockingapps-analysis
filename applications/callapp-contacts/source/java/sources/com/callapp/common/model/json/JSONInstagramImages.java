package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstagramImages.class */
public class JSONInstagramImages implements Serializable {
    private static final long serialVersionUID = 8821838846238686200L;
    private JSONInstagramImage standard_resolution;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONInstagramImage jSONInstagramImage = this.standard_resolution;
        JSONInstagramImage jSONInstagramImage2 = ((JSONInstagramImages) obj).standard_resolution;
        return jSONInstagramImage != null ? jSONInstagramImage.equals(jSONInstagramImage2) : jSONInstagramImage2 == null;
    }

    public JSONInstagramImage getStandard_resolution() {
        return this.standard_resolution;
    }

    public int hashCode() {
        JSONInstagramImage jSONInstagramImage = this.standard_resolution;
        if (jSONInstagramImage != null) {
            return jSONInstagramImage.hashCode();
        }
        return 0;
    }

    public void setStandard_resolution(JSONInstagramImage jSONInstagramImage) {
        this.standard_resolution = jSONInstagramImage;
    }
}
