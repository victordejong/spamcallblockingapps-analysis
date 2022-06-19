package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalResultsLocation.class */
public class JSONCHLocalResultsLocation implements Serializable {
    private static final long serialVersionUID = -9136801822910010203L;
    private String latitude;
    private String longitude;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalResultsLocation jSONCHLocalResultsLocation = (JSONCHLocalResultsLocation) obj;
        String str = this.longitude;
        if (str != null) {
            if (!str.equals(jSONCHLocalResultsLocation.longitude)) {
                return false;
            }
        } else if (jSONCHLocalResultsLocation.longitude != null) {
            return false;
        }
        String str2 = this.latitude;
        String str3 = jSONCHLocalResultsLocation.latitude;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public int hashCode() {
        String str = this.longitude;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.latitude;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
